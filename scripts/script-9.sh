resham@devbox:~$ helm repo add argo https://argoproj.github.io/argo-helm
resham@devbox:~$ helm repo update

resham@devbox:~$ kubectl create namespace argocd

resham@devbox:~$ helm install argocd argo/argo-cd \
  --namespace argocd \
  --version 6.9.3 \
  --set server.service.type=NodePort \
  --set server.service.nodePortHttps=30443 \
  --set configs.params."server\.insecure"=true \
  --set server.extraArgs[0]="--insecure"
