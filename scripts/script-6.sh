# Node 2
resham@k3s-node-2:~$ curl -sfL https://get.k3s.io | sh -s - server \
  --server https://10.0.50.41:6443 \
  --token K10c4b2f3a8e9d::server:abc123xyz789... \
  --disable traefik \
  --disable servicelb \
  --write-kubeconfig-mode 644 \
  --tls-san 10.0.50.42 \
  --tls-san k3s.homelab.local

# Node 3 — same but with 10.0.50.43
resham@k3s-node-3:~$ curl -sfL https://get.k3s.io | sh -s - server \
  --server https://10.0.50.41:6443 \
  --token K10c4b2f3a8e9d::server:abc123xyz789... \
  --disable traefik \
  --disable servicelb \
  --write-kubeconfig-mode 644 \
  --tls-san 10.0.50.43 \
  --tls-san k3s.homelab.local
