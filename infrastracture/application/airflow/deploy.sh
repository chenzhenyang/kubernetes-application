#!/usr/bin/env bash

kubectl apply -f secrets.yaml
kubectl apply -f configmaps.yaml
kubectl apply -f postgres.yaml
kubectl apply -f volumes.yaml
kubectl apply -f airflow.yaml


