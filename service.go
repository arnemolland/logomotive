package logomotive

import (
	context "context"
	"fmt"
	"io"
	"log"

	logomotive "github.com/arnemolland/logomotive/pkg/api/v1"
	"github.com/golang/protobuf/ptypes/empty"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// NewLogomotive returns a new instance of Logomotive
func NewLogomotive(db *mongo.Database) *Logomotive {
	return &Logomotive{
		db: db,
	}
}

// Logomotive is a smiple struct containing a MongDB database reference
type Logomotive struct {
	db *mongo.Database
}

// getLabel extracts the label (collection name) from a LogEntry
func getLabel(entry *logomotive.LogEntry) string {
	label := entry.Label
	if label == "" {
		label = "default"
	}
	return label
}

// Push inserts a log entry to a MongoDB collection
func (l *Logomotive) Push(ctx context.Context, entry *logomotive.LogEntry) (*logomotive.LogEntry, error) {

	collection := l.db.Collection(getLabel(entry))

	result, err := collection.InsertOne(context.Background(), entry)
	if err != nil {
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("Unknown internal error: %v", err))
	}

	log.Printf("Inserted entry with ID: %v", result.InsertedID)

	return entry, nil
}

// Feed receives a stream of logs and stores each entry before streaming them back
func (l *Logomotive) Feed(stream logomotive.Logomotive_FeedServer) error {
	for {
		entry, err := stream.Recv()
		if err == io.EOF {
			return nil
		}
		if err != nil {
			return err
		}

		result, err := l.db.Collection(getLabel(entry)).InsertOne(context.Background(), entry)
		if err != nil {
			return status.Errorf(codes.Internal, fmt.Sprintf("Unknown internal error: %v", err))
		}

		log.Printf("Inserted entry with ID: %v", result.InsertedID)

		if err := stream.Send(entry); err != nil {
			return err
		}
	}
}

// Tail iterates through all the logs filtered by the provided TailQuery and streams them back one by one
func (l *Logomotive) Tail(query *logomotive.TailQuery, stream logomotive.Logomotive_TailServer) error {
	label := query.Label
	if label == "" {
		label = "default"
	}
	collection := l.db.Collection(label)

	data := &logomotive.LogEntry{}

	cursor, err := collection.Find(context.Background(), bson.M{})
	if err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("Unknown internal error: %v", err))
	}

	// An expression with defer will be called at the end of the function
	defer cursor.Close(context.Background())

	for cursor.Next(context.Background()) {
		// Decode the data at the current pointer and write it to data
		err := cursor.Decode(data)
		if err != nil {
			return status.Errorf(codes.Unavailable, fmt.Sprintf("Could not decode data: %v", err))
		}
		// If no error is found send log over stream
		stream.Send(data)
	}
	// Check if the cursor has any errors
	if err := cursor.Err(); err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("Unkown cursor error: %v", err))
	}

	return nil
}

// Labels fetches and returns all collection names (labels) found in MongoDB
func (l *Logomotive) Labels(ctx context.Context, _ *empty.Empty) (*logomotive.LabelList, error) {
	names, err := l.db.ListCollectionNames(ctx, bson.D{})
	if err != nil {
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("Unknown database error: %v", err))
	}

	labels := &logomotive.LabelList{
		Labels: names,
	}
	return labels, nil
}
