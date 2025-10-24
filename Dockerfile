# Build the manager binary
FROM golang:1.25 AS builder

WORKDIR /workspace

COPY go.mod go.mod

COPY main.go main.go

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o demo main.go

ENTRYPOINT ["./demo"]
