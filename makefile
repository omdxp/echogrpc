create:
	protoc --proto_path=proto proto/*.proto --go_out=gen/proto/
	protoc --proto_path=proto proto/*.proto --go-grpc_out=gen/proto/

clean:
	rm -rf gen/proto/

run_server:
	go run server/server.go

run_client:
	go run client/client.go