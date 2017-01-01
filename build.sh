#!/bin/bash
export WORKDIR=/go/src/github.com/danielfs/${PWD##*/}
docker run --rm -v "$PWD":${WORKDIR} -w ${WORKDIR} -e CGO_ENABLED=0 -e GOOS=linux golang:alpine go build -x -a -installsuffix cgo -o encurtador .
docker build -t danielfs/encurtador .
