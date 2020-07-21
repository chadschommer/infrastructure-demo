# Cluster-Autoscaler
[The cluster autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler) scales worker nodes within an AWS autoscaling group (ASG) or Spotinst Elastigroup.

```bash
helm install cluster-autoscaler stable/cluster-autoscaler --set "autoscalingGroups[0].name=dev-02020072102550753230000000d,autoscalingGroups[0].maxSize=5,autoscalingGroups[0].minSize=1" --namespace kube-system -f values-dev.yaml
```

Add inline policy to worker node IAM role
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeAutoScalingInstances",
        "autoscaling:SetDesiredCapacity",
        "autoscaling:TerminateInstanceInAutoScalingGroup",
        "autoscaling:DescribeTags",
        "route53:ListHostedZones",
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:CreateLoadBalancer",
        "elasticloadbalancing:CreateTargetGroup",
        "elasticloadbalancing:DescribeTargetGroupAttributes",
        "elasticloadbalancing:AddTags",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeInternetGateways",
        "iam:CreateServiceLinkedRole",
        "elasticloadbalancing:DescribeTags",
        "elasticloadbalancing:DescribeLoadBalancerAttributes",
        "elasticloadbalancing:DescribeListeners",
        "waf-regional:GetWebACLForResource",
        "elasticloadbalancing:DescribeTargetGroups",
        "route53:ListResourceRecordSets",
        "tag:GetResources"
      ],
      "Resource": "*"
    }
  ]
}
```
