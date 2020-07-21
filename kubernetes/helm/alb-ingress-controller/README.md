# ALB Ingress Controller
[aws-alb-ingress-controller](https://github.com/kubernetes-sigs/aws-alb-ingress-controller) satisfies Kubernetes ingress resources by provisioning Application Load Balancers.

## Variables
- Replace {{ cluster_name }} with K8s cluster name

## Installing the Chart
```console
$ helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
$ helm install alb-ingress-controller incubator/aws-alb-ingress-controller --set clusterName=dev --set autoDiscoverAwsRegion=true --set autoDiscoverAwsVpcID=true -f values-dev.yaml --namespace kube-system
```
