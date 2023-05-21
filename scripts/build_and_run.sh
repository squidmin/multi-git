#!/bin/zsh

docker build -t multi-git .
docker run -it --rm --name multi-git multi-git
