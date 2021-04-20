# ohif-viewer-custom

Repo for building a custom docker image of [OHIF Viewer](https://github.com/OHIF/Viewers) to override `APP_CONFIG` using ConfigMap for kubernetes Deployment

## Build

```
docker build -t <image> .
docker push <image>
```

## Deployment

- Update [deploy/configmap.yaml](deploy/configmap.yaml) for your configuration
- Update [deploy/deployment.yaml](deploy/deployment.yaml) for your image location
- Update [deploy/ingress.yaml](deploy/ingress.yaml) for your hostname

```
kubectl -n <namespace> apply -f deploy
```
