# Base image
FROM debian:bullseye-slim

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y make curl docker.io

# Set working directory
WORKDIR /workspace/project

# Copy project files to the workspace
COPY . .

# Install project dependencies (if applicable)
# RUN make prepare

# Expose necessary ports
# EXPOSE <port1> <port2> ...

# Define default command or entrypoint (if applicable)
# CMD [ "make", "start" ]