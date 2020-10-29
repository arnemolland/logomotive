protobuf=/usr/local/include
timestamp=google/protobuf/timestamp.proto
empty=google/protobuf/empty.proto

build: build_server

build_server:
	go build -ldflags="-w -s" -mod=readonly -o bin/server ./server

clean:
	rm -rf ./bin

dockerize:
	docker build . -t arnemolland/logomotive 
	docker push arnemolland/logomotive
	docker tag arnemolland/logomotive:latest gcr.io/molland/logomotive
	docker push gcr.io/molland/logomotive

install:
	go get -u github.com/golang/protobuf/{proto,protoc-gen-go}

generate:
	protoc --go_out=plugins=grpc:pkg --go_opt=paths=source_relative api/v1/logomotive.proto
	protoc -I ${protobuf} -I. --dart_out=grpc:client/lib/generated api/v1/logomotive.proto ${protobuf}/${timestamp} ${protobuf}/${empty}

deploy:
	kubectl kustomize k8s/plain | kubectl apply -f -

deploy_gce:
	kubectl kustomize k8s/gce | linkerd inject - | kubectl apply -f -

deploy_gcr:
	gcloud beta run deploy logomotive \
		--image=gcr.io/molland/logomotive \
		--vpc-connector=logomotive-connector \
		--vpc-egress=all
		--set-env-vars=[MONGO_URI=${MONGO_URI}]

egress:
	./setup-egress.sh