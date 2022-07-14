sudo podman build cloud-admin/ --tag 3.37.105.130:30002/paastacp/cloud-admin
sudo podman build cloud-api-one/ --tag 3.37.105.130:30002/paastacp/cloud-api-one
sudo podman build cloud-api-two/ --tag 3.37.105.130:30002/paastacp/cloud-api-two
sudo podman build cloud-config/ --tag 3.37.105.130:30002/paastacp/cloud-config
sudo podman build cloud-eureka/ --tag 3.37.105.130:30002/paastacp/cloud-eureka
sudo podman build cloud-ui/ --tag 3.37.105.130:30002/paastacp/cloud-ui
sudo podman build cloud-zuul/ --tag 3.37.105.130:30002/paastacp/cloud-zuul

sudo podman images | grep paastacp
