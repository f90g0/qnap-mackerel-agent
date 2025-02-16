#!/bin/sh
set -e

repodir=$(cd "$(dirname "$0")"/..;pwd)
cd "$repodir"

GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-s -w" -o bin/mkrinst ./cmd/mkrinst
