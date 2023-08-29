#!/bin/bash
# cara running export PASSWORD_DOCKER_HUB=<password> kemudian ./build_push_image.sh

# Nama image
IMAGE_NAME=karsajobs

# Tag image
IMAGE_TAG=latest

# Username Docker Hub
USERNAME=mhdiqbalpradipta

# Melihat daftar image
docker images -q

# Build image
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u $USERNAME --password-stdin

# Tag image dengan nama pengguna dan tag
docker tag $IMAGE_NAME:$IMAGE_TAG $USERNAME/$IMAGE_NAME:$IMAGE_TAG

# Push image ke Docker Hub
docker push $USERNAME/$IMAGE_NAME:$IMAGE_TAG

# Logout dari Docker Hub
docker logout