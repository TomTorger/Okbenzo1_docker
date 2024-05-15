#!/bin/sh

# Set the Next.js repository URL
NEXTJS_REPO=https://github.com/silasklaveness/Okbenzo1.git

# Build the Docker image
docker build --build-arg NEXTJS_REPO=$NEXTJS_REPO -t tomtorger/Okbenzo1_docker:latest .
