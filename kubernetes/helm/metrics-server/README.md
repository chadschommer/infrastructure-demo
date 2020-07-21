# metrics-server

[Metrics Server](https://github.com/kubernetes-incubator/metrics-server) is a cluster-wide aggregator of resource usage data. Resource metrics are used by components like `kubectl top` and the [Horizontal Pod Autoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale) to scale workloads. To autoscale based upon a custom metric, see the [Prometheus Adapter chart](https://github.com/helm/charts/blob/master/stable/prometheus-adapter).

## TL;DR;

```console
$ helm install metrics-server stable/metrics-server --namespace kube-system -f kubernetes/helm/metrics-server/values.yaml
```
