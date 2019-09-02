# eksctl
eksctl create cluster \\n--name prod2 \\n--version 1.13 \\n--nodegroup-name standard-workers \\n--node-type t3.medium \\n--nodes 3 \\n--nodes-min 1 \\n--nodes-max 4 \\n--node-ami auto

kubectl get svc
# NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
# kubernetes   ClusterIP   10.100.0.1   <none>        443/TCP   100m

eksctl get cluster
# NAME	REGION
# prod2	us-east-1