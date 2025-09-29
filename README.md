# connectivity-troubleshooting
A docker image that can be used for troubleshooting connectivity to various services.

Useful for testing connectivity from within Kubernetes clusters. The `kubectl run` command below will create an ephemeral pod.
```bash
kubectl run -it --rm --image=ghcr.io/bancey/connectivity-troubleshooting:latest troubleshoot -- bash
```

If you can't create naked pods in an environment, you can create a deployment instead.
```bash
kubectl apply -f https://raw.githubusercontent.com/bancey/connectivity-troubleshooting/main/troubleshoot.yaml
```

Then exec into the pod:
```bash
kubectl exec -it deploy/connectivity-troubleshooting -- bash
```

Cleanup once you are done:
```bash
kubectl delete -f https://raw.githubusercontent.com/bancey/connectivity-troubleshooting/main/troubleshoot.yaml
```
