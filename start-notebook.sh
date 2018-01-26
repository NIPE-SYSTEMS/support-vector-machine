#!/bin/sh

docker run -it --rm --name jupyter -p 8888:8888 -p 6006:6006 -v $(pwd):/root waleedka/modern-deep-learning jupyter notebook --ip=0.0.0.0 --allow-root
