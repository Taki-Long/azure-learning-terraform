#!/bin/bash


terraform init
terraform apply
az acr login -n takiacr1
docker build -t takiacr1.azurecr.io/aci-demo:latest ./docker
docker push takiacr1.azurecr.io/aci-demo:latest