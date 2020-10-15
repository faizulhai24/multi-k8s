docker build -t faizulhai24/multi-client:latest -t faizulhai24/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t faizulhai24/multi-server:latest -t faizulhai24/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t faizulhai24/multi-worker:latest -t faizulhai24/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push faizulhai24/multi-client:latest
docker push faizulhai24/multi-server:latest
docker push faizulhai24/multi-worker:latest

docker push faizulhai24/multi-client:$SHA
docker push faizulhai24/multi-server:$SHA
docker push faizulhai24/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=faizulhai24/multi-server:$SHA
kubectl set image deployments/client-deployment client=faizulhai24/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=faizulhai24/multi-worker:$SHA