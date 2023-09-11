FROM ubuntu:22.04
WORKDIR /var/lib/jenkins/workspace/Docker-compose-3
RUN apt-get update
COPY . .
