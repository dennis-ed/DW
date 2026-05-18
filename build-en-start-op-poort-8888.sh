#!/bin/bash

docker stop demo-site-missing-manual-container 2>/dev/null
docker rm demo-site-missing-manual-container 2>/dev/null

docker build -t demo-site-missing-manual .
docker run -d --name demo-site-missing-manual-container -p 8888:80 demo-site-missing-manual