# On my workstation, update the image tag in the staging overlay
resham@devbox:~/kumari-k8s-manifests$ vim overlays/staging/kustomization.yaml
# Change: newTag: staging-a3f8c2d → newTag: staging-b7e1d4f

resham@devbox:~/kumari-k8s-manifests$ git add overlays/staging/kustomization.yaml
resham@devbox:~/kumari-k8s-manifests$ git commit -m "feat: bump backend to staging-b7e1d4f (add websocket auth)"
resham@devbox:~/kumari-k8s-manifests$ git push
