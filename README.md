# CentOS 7

[![Build Status](https://travis-ci.org/strongbrent/docker-centos7-testuser.svg?branch=master)](https://travis-ci.org/strongbrent/docker-centos7-testuser) [![Docker Automated build](https://img.shields.io/docker/cloud/automated/strongbrent/docker-centos7-testuser.svg)](https://cloud.docker.com/repository/docker/strongbrent/docker-centos7-testuser) [![Docker Automated build](https://img.shields.io/docker/cloud/build/strongbrent/docker-centos7-testuser.svg)](https://cloud.docker.com/repository/docker/strongbrent/docker-centos7-testuser/builds)

## Background
Stock CentOS 7 Docker image with a default user for automation testing.

## How to Build this Image

This image is built automatically on Docker Hub any time a commit is made or code is merged to the `master` branch. However, if you need to need to manually build an image on your workstation, execute the following:
```
make build
```

## How to Run this Container

To run a container from this image, run this command:
```
make run
```
When you exit, the container is automatically removed.

## How to Clean Up
To remove the container image, run this command:
```
make clean
```

## Disclaimer 

This image is used to test build automation scripts. It is most definitely not suitable nor secure enough to run in any production environment.
