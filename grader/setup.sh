#!/bin/sh

adduser student --no-create-home --disabled-password --gecos ""
chmod -R o= /autograder/*
mkdir -p /autograder/results /autograder/submission
chown -R student /autograder/submission