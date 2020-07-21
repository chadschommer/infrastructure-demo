# Argo Continuous Delivery

Argo CD Chart
======
A Helm chart for ArgoCD, a declarative, GitOps continuous delivery tool for Kubernetes.

Source code can be found [here](https://argoproj.github.io/argo-cd/)

## Additional Information
This is a **community maintained** chart. This chart installs [argo-cd](https://argoproj.github.io/argo-cd/), a declarative, GitOps continuous delivery tool for Kubernetes.

The default installation is intended to be similar to the provided ArgoCD [releases](https://github.com/argoproj/argo-cd/releases).

This chart currently installs the non-HA version of ArgoCD.

## Installing the Chart

To install the chart with the release name `argocd`:

```console
$ helm repo add argo https://argoproj.github.io/argo-helm
$ helm install argocd argo/argo-cd --namespace mgmt -f kubernetes/helm/argocd/values.yaml
```
