# Build Stage
FROM golang:1.22.5 AS build
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o main .

# Final Stage
FROM gcr.io/distroless/base
WORKDIR /app

# Copy the application binary and static files
COPY --from=build /app/main .
COPY --from=build /app/static /app/static

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["/app/main"]
