# external-dns

[ExternalDNS](https://github.com/kubernetes-sigs/external-dns) is a Kubernetes addon that configures public DNS servers with information about exposed Kubernetes services to make them discoverable.

## TL;DR;

```console
$ helm repo add bitnami https://charts.bitnami.com/bitnami
$ helm install external-dns bitnami/external-dns --namespace kube-system -f kubernetes/helm/external-dns/values-dev.yaml
```
