# Start with a regular Secret (never commit this)
resham@devbox:~$ kubectl create secret generic kumari-backend-secrets \
  --namespace kumari-staging \
  --from-literal=DATABASE_URL='postgresql://kumari:s3cretP4ss@postgres:5432/kumari' \
  --from-literal=REDIS_URL='redis://redis:6379/0' \
  --from-literal=OPENAI_API_KEY='sk-proj-...' \
  --from-literal=JWT_SECRET='ultra-secret-jwt-key-here' \
  --dry-run=client -o yaml | \
  kubeseal --cert sealed-secrets-pub.pem -o yaml \
  > overlays/staging/secrets/sealed-secrets.yaml
