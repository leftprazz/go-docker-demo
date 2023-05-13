FROM golang:1.18-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /go-docker-demo

EXPOSE 8080

CMD [ "/go-docker-demo" ]