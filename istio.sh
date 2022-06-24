#!/bin/sh

CLUSTER_NAME="sharecare-cluster"
# add istio to existing GKE cluster
gcloud beta container clusters update $CLUSTER_NAME \
    --update-addons=Istio=ENABLED --istio-config=auth=MTLS_PERMISSIVE \
    --zone=europe-west2-a

# get cluster creds
gcloud container clusters get-credentials $CLUSTER_NAME --zone=europe-west2-a

# check services
kubectl get service -n istio-system

# get pods
kubectl get pods -n istio-system

# enable sidecar injection
kubectl label namespace default istio-injection=enabled

# restart all pods in namespace
kubectl rollout restart deployment <deployment_name> -n <namespace>

kubectl -n default rollout restart deploy

