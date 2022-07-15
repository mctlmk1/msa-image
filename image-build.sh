IMAGE_NAME=(
"cloud-admin"
"cloud-api-one"
"cloud-api-two"
"cloud-config"
"cloud-eureka"
"cloud-ui"
"cloud-zuul"
)

REPOSITORY_URL="3.37.105.130:30002"
REPOSITORY_PROJECT_NAME="paastacp"

for IMAGE in ${IMAGE_NAME[@]}
do
    sudo podman build $IMAGE/ --tag $REPOSITORY_URL/$REPOSITORY_PROJECT_NAME/$IMAGE
done

sudo podman images | grep paastacp
