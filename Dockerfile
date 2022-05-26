FROM golang:1.18.2-alpine3.16

RUN apk add git \
 && git clone https://github.com/handsomefox/gowarp.git && cd gowarp/ \
 && go install 
 
EXPOSE 7999
WORKDIR /go/gowarp/
CMD go run main.go
