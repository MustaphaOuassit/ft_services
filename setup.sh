minikube delete
minikube start --memory=2048
eval $(minikube docker-env)
minikube addons enable metallb
 kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

docker build -t nginx ./srcs/nginx

kubectl apply -f ./srcs/metalLB.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml

minikube dashboard
