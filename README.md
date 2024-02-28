# connectivity-troubleshooting
A docker image that can be used for troubleshooting connectivity to various services.

Useful for testing connectivity from within Kubernetes clusters. The `kubectl run` command below will create an ephemeral pod.
```bash
kubectl run -it --rm --image=ghcr.io/bancey/connectivity-troubleshooting:latest troubleshoot -- bash
```
