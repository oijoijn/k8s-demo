kubectl apply -f namespace.yaml
kubectl apply -f secrets.yaml
kubectl apply -f mysql/
kubectl apply -f backend/
kubectl apply -f frontend/
kubectl apply -f networkpolicies.yaml
# Linux (WSL)
kubectl port-forward -n app-demo svc/web 8080:80 --address 0.0.0.0
