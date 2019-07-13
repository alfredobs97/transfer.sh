#!/bin/bash

kubectl apply -f deploy.yaml 
kubectl apply -f service.yaml

echo ""

echo 'This services use NodePort to connect with server, use kubernetes cluster external ip and this port'

kubectl get services | grep transfer | awk '{print $5}' | awk -F ":" '{print $2}'


echo ""
echo 'if you use Minikube to develop, use minikube ip to connect with previus port'