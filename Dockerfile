# Base image
FROM ubuntu:latest

ENV MONGO_HOST=localhost \
    MONGO_PORT=27017 \
    PORT=8080 \
    DB_URI=mongodb://localhost:27017/any
    DATABASE_NAME=gowarp \
    COLLECTION_NAME=keys

RUN apt-get update && \
    apt-get install -y mongodb \
    go \
    make \
    git

WORKDIR /app

RUN mkdir -p /data/db
RUN git clone https://github.com/handsomefox/gowarp.git /app

VOLUME ["/data/db"]

CMD ["mongod --dbpath /data/db &"]
CMD ["make run_serve"]
