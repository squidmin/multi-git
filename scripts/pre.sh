#!/bin/zsh

export MG_ROOT=/tmp/mg
export MG_REPOS=repo-1,repo-2

git config --global user.email "educative@educative.io"
git config --global user.name "educative"

git clone https://github.com/the-gigi/multi-git
cd multi-git
git checkout v0.2
go build

mkdir -p ${MG_ROOT}/repo-1
mkdir -p ${MG_ROOT}/repo-2

mv ./multi-git $MG_ROOT

cd /usercode
