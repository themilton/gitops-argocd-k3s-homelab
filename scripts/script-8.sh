resham@devbox:~$ scp resham@10.0.50.41:/etc/rancher/k3s/k3s.yaml ~/.kube/config-k3s
resham@devbox:~$ sed -i 's/127.0.0.1/10.0.50.41/' ~/.kube/config-k3s
resham@devbox:~$ export KUBECONFIG=~/.kube/config-k3s
resham@devbox:~$ kubectl get nodes
NAME         STATUS   ROLES                       AGE    VERSION
k3s-node-1   Ready    control-plane,etcd,master   6m     v1.29.6+k3s1
k3s-node-2   Ready    control-plane,etcd,master   4m     v1.29.6+k3s1
k3s-node-3   Ready    control-plane,etcd,master   3m     v1.29.6+k3s1
