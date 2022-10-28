#!/bin/bash
docker build . -t silot
docker run --name build-silot --gpus all silot sh /workspace/install.sh || docker rm build-silot
docker commit build-silot silot
docker rm build-silot
