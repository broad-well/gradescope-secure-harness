#!/bin/sh
# Assume that "secureharnesstest" is an available image.

docker run --rm -v $(pwd)/tests/$1:/autograder/submission -l harnesstest secureharnesstest
