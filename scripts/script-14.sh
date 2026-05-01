resham@devbox:~/kumari-k8s-manifests$ tree -L 3
.
├── README.md
├── apps/                          # ArgoCD Application CRs
│   ├── kumari-staging.yaml
│   ├── kumari-prod.yaml
│   ├── monitoring.yaml
│   ├── traefik.yaml
│   ├── sealed-secrets.yaml
│   └── longhorn.yaml
├── base/                          # Base manifests (shared)
│   ├── kumari-backend/
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   ├── hpa.yaml
│   │   └── kustomization.yaml
│   ├── kumari-frontend/
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   └── kustomization.yaml
│   ├── postgres/
│   │   ├── statefulset.yaml
│   │   ├── service.yaml
│   │   ├── pvc.yaml
│   │   └── kustomization.yaml
│   └── redis/
│       ├── deployment.yaml
│       ├── service.yaml
│       └── kustomization.yaml
├── overlays/                      # Environment-specific patches
│   ├── staging/
│   │   ├── kustomization.yaml
│   │   ├── namespace.yaml
│   │   ├── ingress.yaml
│   │   ├── patches/
│   │   │   ├── backend-resources.yaml
│   │   │   ├── backend-env.yaml
│   │   │   ├── frontend-env.yaml
│   │   │   ├── postgres-storage.yaml
│   │   │   └── replica-count.yaml
│   │   └── secrets/
│   │       └── sealed-secrets.yaml
│   └── production/
│       ├── kustomization.yaml
│       ├── namespace.yaml
│       ├── ingress.yaml
│       ├── patches/
│       │   ├── backend-resources.yaml
│       │   ├── backend-env.yaml
│       │   ├── frontend-env.yaml
│       │   ├── postgres-storage.yaml
│       │   └── replica-count.yaml
│       └── secrets/
│           └── sealed-secrets.yaml
└── helm-values/                   # Values files for Helm charts
    ├── traefik-values.yaml
    ├── monitoring-values.yaml
    ├── longhorn-values.yaml
    └── sealed-secrets-values.yaml
