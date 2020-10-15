Driver Options

Minikube now supports the use of many different drivers. Hyperkit is the current recommended default for macOS. If you do not have Docker Desktop installed, then you may need to install it using Homebrew:

brew install hyperkit

To start minikube with hyperkit:

minikube start --driver=hyperkit

To set Hyperkit as the default driver:

minikube config set driver hyperkit

Find the IP address of your cluster:

minikube ip

Docker Driver - Important

Currently, the docker driver is not supported for use in this course. It currently does not work with any type of ingress:

https://minikube.sigs.k8s.io/docs/drivers/docker/#known-issues

Docker Pointing to VM:
eval $(minikube docker-env)


kubectl create secret generic pgpassword --from-literal PGPASSWORD=12345asdf



docker run -it -v $(pwd):/app ruby:2.4 sh
travis login --org
travis encrypt-file service-account.json -r faizulhai24/multi-k8s --org



# Install Helm v3:
In your Google Cloud Console run the following:

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
 
link to the docs:

https://helm.sh/docs/intro/install/#from-script


# Install Ingress-Nginx:
In your Google Cloud Console run the following:

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install my-release ingress-nginx/ingress-nginx

https://kubernetes.github.io/ingress-nginx/deploy/#using-helm