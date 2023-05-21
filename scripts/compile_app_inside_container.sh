#!/bin/bash

docker run --rm -v "$PWD":/usr/src/multi-git -w /usr/src/multi-git golang:1.20 go build -v
