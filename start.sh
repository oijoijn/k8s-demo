kubectl apply -f namespace.yaml
kubectl apply -f secrets.yaml
kubectl apply -f mysql/
kubectl apply -f backend/
kubectl apply -f frontend/
kubectl apply -f networkpolicies.yaml
