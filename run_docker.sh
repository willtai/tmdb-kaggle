#!/usr/bin/env bash

docker run -p 8888:8888 --rm -v $(pwd):/root --name jupyter-container jupyter-image 
