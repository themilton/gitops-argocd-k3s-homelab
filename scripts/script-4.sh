# Node 1 — initialize the cluster
resham@k3s-node-1:~$ curl -sfL https://get.k3s.io | sh -s - server \
  --cluster-init \
  --disable traefik \
  --disable servicelb \
  --write-kubeconfig-mode 644 \
  --tls-san 10.0.50.41 \
  --tls-san k3s.homelab.local \
  --node-taint CriticalAddonsOnly=true:NoExecute
