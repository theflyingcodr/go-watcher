#!/bin/bash
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

gvm install go$GO_VERSION 
gvm use go$GO_VERSION --default

export GOPATH=/go

go get ./...

exec "$@"
