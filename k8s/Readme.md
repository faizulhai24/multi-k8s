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
