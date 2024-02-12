# Use the latest Ubuntu version as the base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y clang cmake cmake-curses-gui curl git

# Set the working directory
WORKDIR /workspaces/Base

# You can add more instructions if needed, such as copying your source code or additional dependencies.

# Specify the default command to run when the container starts
CMD ["/bin/bash"]
