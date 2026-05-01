# My secret rotation workflow
resham@devbox:~$ ansible-vault edit secrets/kumari-staging.vault.yml
# Edit the value

resham@devbox:~$ ./scripts/generate-sealed-secrets.sh staging
# Script reads from vault, creates sealed secret YAML

resham@devbox:~$ cd ~/kumari-k8s-manifests
resham@devbox:~/kumari-k8s-manifests$ git add overlays/staging/secrets/
resham@devbox:~/kumari-k8s-manifests$ git commit -m "chore: rotate staging DB credentials"
resham@devbox:~/kumari-k8s-manifests$ git push
