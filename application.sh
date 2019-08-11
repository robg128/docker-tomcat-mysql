#!/bin/bash
gcloud container clusters get-credentials simcupd-cluster --zone us-central1-a
echo "**** Create resources ****"

cd yaml
kubectl create -f namespace-development.yaml
kubectl create -f persistent-volume-mysql.yaml
kubectl create -f persistent-volume-claim-mysql.yaml
kubectl create -f deployment-mysql.yaml
kubectl create -f service-mysql.yaml
kubectl create -f deployment-simcupd.yaml
kubectl create -f service-simcupd.yaml

echo "**** End creating  resources"
