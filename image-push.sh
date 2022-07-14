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
REPOSITORY_USERNAME="admin"
REPOSITORY_PASSWORD="Harbor12345"
REPOSITORY_PROJECT_NAME="paastacp"

for IMAGE in ${IMAGE_NAME[@]}
do
    sudo podman push $REPOSITORY_URL/$REPOSITORY_PROJECT_NAME/$IMAGE
done

