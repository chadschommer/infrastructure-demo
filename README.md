# Project
A combination of Spring, Python, Terraform, Kubernetes, Helm, and AWS, the
purpose of this project is to demonstrate blue-green deployment and a live demo
showing there is absolutely no interruption of service.

## Getting Started
#### Terraform
Start by Terraforming a new Datacenter and standing up an EKS cluster
```bash
$ cd terraform/datacenter/
$ terraform init
$ terraform plan -out=plan.out
terraform apply plan.out
```

#### Kubernetes and Helm
```bash
$ aws eks --region us-east-1 update-kubeconfig --name dev
$ kubectl get namespaces
```
After validating namespaces are returned, begin populating K8s
```bash
$ kubectl apply -f kubernetes/manifests/aws-auth-cm.yaml
$ kubectl apply -f kubernetes/manifests/storage/
$ kubectl apply -f kubernetes/manifests/tiller/
$ kubectl create namespace mgmt
```
Tiller only need on Helm <3.0 versions

Apply helm charts in the following order (reviewing each specific readme for instructions)
- external-dns
- cluster-autoscaler
- alb-ingress-controller
- metrics-server
- jenkins

```bash
kubectl apply -f kubernetes/manifests/mgmt-ingress-dev.yaml
```
