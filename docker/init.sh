#!/usr/bin/env bash

# Build Docker images
echo "Building Docker Images..."
./docker/build.sh

echo "Starting up Docker Containers..."
./docker/up.sh
