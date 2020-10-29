package main

import (
	"log"
	"os"

	"github.com/arnemolland/logomotive"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
		log.Printf("Defaulting to port %s", port)
	}
	s := logomotive.NewServer(port)
	s.Start()
}
