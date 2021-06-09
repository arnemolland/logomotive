package logomotive

import (
	context "context"
	"fmt"
	"log"
	"net"
	"os"
	"time"

	logomotive "github.com/arnemolland/logomotive/pkg/api/v1"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
	"google.golang.org/grpc"
)

// NewServer returns a new Server instance with the given port
func NewServer(port string) *Server {
	return &Server{
		grpcSrv: grpc.NewServer(),
		port:    port,
	}
}

// Server interface
type Server struct {
	grpcSrv *grpc.Server
	port    string
}

// Start fires up a logomotive
func (s *Server) Start() {
	log.Println("starting server on host port", s.port)

	uri := getMongoURI()
	log.Println("connecting to", uri)
	client, err := mongo.NewClient(options.Client().ApplyURI(uri))
	if err != nil {
		log.Fatal(err)
	}
	ctx, cancelConn := context.WithTimeout(context.Background(), 10*time.Second)
	err = client.Connect(ctx)
	if err != nil {
		log.Fatal(err)
	}
	err = client.Ping(ctx, readpref.Primary())
	if err != nil {
		log.Fatalf("failed to connect to db: %v", err)
	}
	log.Print("connected to database")
	logomotive.RegisterLogomotiveServiceServer(s.grpcSrv, NewLogomotive(client.Database("logs")))

	lis, err := net.Listen("tcp", fmt.Sprintf(":%s", s.port))
	if err != nil {
		log.Fatalf("failed to listen on hostport %v", err)
	}

	// An expression with defer will be called at the end of the function
	defer client.Disconnect(ctx)
	defer cancelConn()

	s.grpcSrv.Serve(lis)
}

func getMongoURI() string {
	mHost := os.Getenv("MONGO_HOST")
	mURI := os.Getenv("MONGO_URI")
	if mURI == "" {
		if mHost == "" {
			mHost = "localhost"
		}
		mURI = fmt.Sprintf("mongodb://%s:27017", mHost)
	}
	return mURI
}
