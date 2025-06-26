FROM golang:1.22 as building
WORKDIR /app
COPY . ./
RUN go mod init hello
RUN go build -o /app/hello

FROM alpine:3.22.0
COPY --from=building /app/hello /app/hello
CMD ["/app/hello"]
