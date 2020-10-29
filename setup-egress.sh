# Set up a Cloud Router
gcloud compute routers create logomotive-router \
	--network=default \
	--region="$GOOGLE_CLOUD_REGION"

# Create a static IP
gcloud compute addresses create logomotive-origin --region=$GOOGLE_CLOUD_REGION

# Create a NATS gateway
gcloud compute routers nats create logomotive-nat \
	--router=logomotive-router \
	--region=$GOOGLE_CLOUD_REGION \
	--nat-all-subnet-ip-ranges \
	--nat-external-ip-pool=logomotive-origin

exit 0
