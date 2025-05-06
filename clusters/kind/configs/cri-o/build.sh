export CRIO_VERSION=v1.32
export KUBE_VERSION=v1.32.3
docker build --build-arg CRIO_VERSION=$CRIO_VERSION --build-arg KUBE_VERSION=$KUBE_VERSION -t kindnode/crio:$KUBE_VERSION .
