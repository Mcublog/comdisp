#!/usr/bin/env bash

docker build -f ./dockerfile . -t comdisp
docker run --name abnormal_maximum comdisp:latest
docker cp abnormal_maximum:/dist/KostyarPorts.exe ./
docker rm abnormal_maximum