#!/bin/bash

# AWS ECR 레포지토리 URI
ECR_REPO_URI="434404663272.dkr.ecr.ap-northeast-2.amazonaws.com/test_mlops"

# Docker 이미지 빌드
docker build -t my-app-image .

# Docker 이미지를 ECR에 푸시
aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin $ECR_REPO_URI
docker tag my-app-image $ECR_REPO_URI:latest
docker push $ECR_REPO_URI:latest

