docker build --no-cache -t blitzenprancer/http-server-docker-kubernetes-project:v1 .

docker push blitzenprancer/http-server-docker-kubernetes-project:v1

kubectl delete deployment http-server-docker-kubernetes-project

kubectl apply -f devops/deployment.yaml

kubectl apply -f devops/service.yaml
