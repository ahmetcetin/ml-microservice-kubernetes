#!/usr/bin/env bash

dockerpath="ahmetcetin/house_price_predict:latest"
kubectl run house-price-predict-pod --image=$dockerpath --port=80
kubectl get pods
kubectl port-forward house-price-predict-pod 8080:80
