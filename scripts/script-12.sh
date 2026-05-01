resham@devbox:~$ argocd login 10.0.50.41:30443 --insecure
resham@devbox:~$ argocd account update-password
resham@devbox:~$ kubectl -n argocd delete secret argocd-initial-admin-secret
