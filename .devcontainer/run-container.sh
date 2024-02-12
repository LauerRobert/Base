#!/bin/bash

# Specify the path to your host project directory
host_project_directory=$(dirname $(dirname "$(readlink -f $0)"))

# Specify the name of your Docker image
docker_image="lar2lr_base_image:latest"

container_name="lar2lr_base"

# Check if a container with the same name already exists
if docker ps -a --format '{{.Names}}' | grep -q "^$container_name$"; then
    echo "container exists"
    # If it exists, stop and remove the existing container
    docker kill "$container_name" >/dev/null 2>&1
    docker rm "$container_name" >/dev/null 2>&1
fi

# Run the Docker container with the -v option
docker run -it -v "$host_project_directory:/workspaces/Base" --name "$container_name" "$docker_image" /bin/bash
