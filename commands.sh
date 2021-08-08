docker build --no-cache -t BlitzenPrancer/http-server-docker-kubernetes-project:v1 .

docker push suda2001/http-server-docker-kubernetes-project:v1

kubectl delete deployment http-server-docker-kubernetes-project

kubectl apply -f devops/deployment.yaml

kubectl apply -f devops/service.yaml
