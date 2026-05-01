resham@devbox:~$ kubectl -n kumari-staging get all
NAME                                   READY   STATUS    RESTARTS   AGE
pod/kumari-backend-7d8f9c6b5-x4k2n    1/1     Running   0          2m
pod/kumari-frontend-5c4d8f7a9-m3p7q   1/1     Running   0          2m
pod/postgres-0                         1/1     Running   0          2m
pod/redis-6f8d4bdff5-r2t9x            1/1     Running   0          2m

NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)
service/kumari-backend    ClusterIP   10.43.128.45    <none>        8000/TCP
service/kumari-frontend   ClusterIP   10.43.201.12    <none>        3000/TCP
service/postgres          ClusterIP   10.43.89.201    <none>        5432/TCP
service/redis             ClusterIP   10.43.156.78    <none>        6379/TCP
