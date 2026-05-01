# Install kubeseal CLI
resham@devbox:~$ wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.26.2/kubeseal-0.26.2-linux-amd64.tar.gz
resham@devbox:~$ tar xzf kubeseal-0.26.2-linux-amd64.tar.gz
resham@devbox:~$ sudo mv kubeseal /usr/local/bin/

# Fetch the public key from the cluster
resham@devbox:~$ kubeseal --fetch-cert > sealed-secrets-pub.pem
