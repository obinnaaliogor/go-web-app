# Go Web Application

This is a simple website written in Golang. It uses the `net/http` package to serve HTTP requests.

## Running the server

To run the server, execute the following command:

```bash
go run main.go
```

The server will start on port 8080. You can access it by navigating to `http://localhost:8080/courses` in your web browser.

## Running with Docker

# Build the Docker image
docker build -t go-web-app .

# Run the Docker container in production
docker run --rm -p 8080:8080 go-web-app

# Run the Docker container in development mode
docker run --rm -p 8080:8080 -v $(pwd):/app go-web-app

# Run tests
docker build -t go-web-app-test --target=build .
docker run --rm go-web-app-test go test ./...

## Looks like this

![Website](static/images/golang-website.png)


# go-web-app
# go-web-app
