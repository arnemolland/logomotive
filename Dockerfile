FROM golang:1.15-alpine AS builder

# Install make
RUN apk update && apk add make ca-certificates

WORKDIR /app

ADD go.mod go.sum ./
RUN go mod download

COPY . ./

ENV GOOS=linux GOARCH=amd64 CGO_ENABLED=0
RUN make

FROM scratch

WORKDIR /app
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /app/bin/server .
EXPOSE 50051

ENTRYPOINT ["/app/server"]
