docker build -t dheepakshivaraman/multi-docker-client:latest -t dheepakshivaraman/multi-docker-client:$GIT_SHA -f ./client/Dockerfile ./client
docker build -t dheepakshivaraman/multi-docker-server:latest -t dheepakshivaraman/multi-docker-server:$GIT_SHA -f ./server/Dockerfile ./server
docker build -t dheepakshivaraman/multi-docker-worker:latest -t dheepakshivaraman/multi-docker-worker:$GIT_SHA -f ./worker/Dockerfile ./worker

docker push dheepakshivaraman/multi-docker-client:latest
docker push dheepakshivaraman/multi-docker-client:$GIT_SHA

docker push dheepakshivaraman/multi-docker-server:latest
docker push dheepakshivaraman/multi-docker-server:$GIT_SHA

docker push dheepakshivaraman/multi-docker-worker:latest
docker push dheepakshivaraman/multi-docker-worker:$GIT_SHA

kubectl set image deployments/client-deployment client=dheepakshivaraman/multi-docker-client:$GIT_SHA
kubectl set image deployments/server-deployment server=dheepakshivaraman/multi-docker-server:$GIT_SHA
kubectl set image deployments/worker-deployment worker=dheepakshivaraman/multi-docker-worker:$GIT_SHA