#!/bin/bash

kubectl apply -f deploy.yaml 
kubectl apply -f service.yaml

echo ""

echo 'This services use NodePort to connect with server, use kubernetes cluster ip and this port'

kubectl get services | grep transfer | awk '{print $5}' | awk -F ":" '{print $2}'