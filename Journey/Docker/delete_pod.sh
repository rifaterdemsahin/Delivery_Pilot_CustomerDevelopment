#!/bin/bash

# Get the pod name
POD_NAME=$(kubectl get pods --no-headers -o custom-columns=":metadata.name" | grep nginx-helloworld)

# Check if the pod exists
if [ -z "$POD_NAME" ]; then
    echo "Pod not found."
else
    # Delete the pod
    kubectl delete pod $POD_NAME
    echo "Pod $POD_NAME deleted."
fi