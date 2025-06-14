# !/bin/bash

if [ $1 = "c" ]; then
    echo 'create kind cluster'
    kind create cluster --name demo --config kind-cluster.yaml
elif [ $1 = "d" ]; then
    echo 'delete kind cluster'
    kind delete cluster --name demo
else
    echo 'try again'
fi
