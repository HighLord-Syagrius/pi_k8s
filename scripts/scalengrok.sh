kubectl scale deployment -n ngrok-operator ngrok-operator-agent --replicas=$1
kubectl scale deployment -n ngrok-operator ngrok-operator-manager --replicas=$1
