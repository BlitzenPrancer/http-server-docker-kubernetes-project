#1st build - creating the binary
# getting base image golang:1.13
FROM golang:1.13
WORKDIR /go/src/github.com/BlitzenPrancer/http-server-docker-kubernetes-project

COPY cli ./cli

RUN CGO_ENABLED=0 GOOS=linux go install ./cli/server

#2nd Stage - executing the binary

FROM alpine:latest
WORKDIR /app/

COPY --from=0 /go/bin/server ./binary

CMD ./binary
