#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

docker build . -t neo4j-build-env:latest

docker tag neo4j-build-env:latest lendingclub/neo4j-build-env
