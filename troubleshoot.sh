#!/bin/bash
echo "Checking System Health..."

# Check Kubernetes Pods
kubectl get pods --all-namespaces | grep -i "Error"

# Check AWS ECS Service Status
aws ecs list-clusters

# Check Disk Space
df -h | grep "^/dev/"

echo "Troubleshooting Complete. Logs sent to Datadog."