# Logomotive 🚂

A logging application disrupting the crazy fragmented un-logged microservice landscape.

- Running application at run.molland.sh

## Client

A basic Flutter client application resides in `./client` and can be run with `flutter run`. Compiled binaries can be found as release artifacts on GitHub.

Signed mobile apps can be accessed through Firebase App Distribution on both [iOS](https://appdistribution.firebase.dev/i/fdefe862270a95e7) and [Android](https://appdistribution.firebase.dev/i/409c82e0511169e9).

## Development

The protobuf definitions can be recompiled, but assumes the google/protobuf sources resides in `/usr/local/include`

## Deployment

### Google Cloud Run

This application can be deployed with one click **\***:

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

**\*** Required a MongoDB connection URI to be set as `MONGO_URI` in the environment. Managed instances like MongoDB Atlas often require a [static egress IP](https://cloud.google.com/run/docs/configuring/static-outbound-ip) for whitelisting.

If you need to setup static egress:

```bash
make egress
```

To deploy:

```bash
make deploy_gcr
```

### k8s

Assumes a k8s cluster is available.

#### Plain (insecure)

Nothing but plain ol' Kubernetes resources. `logomotive-svc` is exposed as an external `LoadBalancer`.

```bash
make deploy
```

> NOTE: Will only deploy 1 replica as no request-level LB is present.

#### GCE (secure)

Sets up a GCE ingress using a Google-managed certificate. Terminates TLS at the ingress, eliminating the need for application-level certificates. The Linkerd mesh does load-balancing at the request level.

For this, you need:

- A GKE cluster with linkerd
- A Google-managed certificate
- A GCE static IP

Edit `k8s/gce/ingress.yaml` and `k8s/gce/cert.yaml` with your values.

```bash
make deploy_gce
```
