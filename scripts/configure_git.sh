#!/bin/zsh

EMAIL_ADDR="$1"

git config --global user.email ${EMAIL_ADDR}
git config --global user.name "squidmin"
