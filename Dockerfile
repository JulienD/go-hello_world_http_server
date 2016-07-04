# golang image where workspace (GOPATH) configured at /go.
FROM golang:latest

# Copy the local package files to the container’s workspace.
COPY . /go/src/app

RUN go get -d -v

# Build the golang-docker command inside the container.
RUN go install -v

# Run the golang-docker command when the container starts.
ENTRYPOINT /go/src/app

# http server listens on port 8080.
EXPOSE 8080
