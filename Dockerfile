FROM golang:1.17-alpine
FROM nginx:latest

WORKDIR /app

COPY static /usr/share/nginx/html
COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /latihan-ci-cd

EXPOSE 3000

CMD ["/latihan-ci-cd"]
