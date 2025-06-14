# !/bin/bash

if [ $1 = "c" ]; then
    echo 'create kind cluster'
    kind create cluster --name demo --config kind-cluster.yaml
elif [ $1 = "d" ]; then
    echo 'delete kind cluster'
    kind delete cluster --name demo
elif [ $1 = "p" ]; then
    echo 'port-forward'
    kubectl port-forward service/web -n app-demo 8080:80
elif [ $1 = "k" ]; then
    echo 'kubectl apply'
    kubectl apply -f namespace.yaml
    kubectl apply -f secrets.yaml
    kubectl apply -f mysql/
    kubectl apply -f backend/
    kubectl apply -f frontend/
    kubectl apply -f networkpolicies.yaml
else
    echo 'try again'
fi
