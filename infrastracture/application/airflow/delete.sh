#!/usr/bin/env bash

kubectl delete -f secrets.yaml
kubectl delete -f configmaps.yaml
kubectl delete -f postgres.yaml
kubectl delete -f volumes.yaml
kubectl delete -f airflow.yaml


