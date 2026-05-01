resham@devbox:~$ kubectl -n argocd get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d
# outputs something like: aB3cD4eF5gH6
