minikube delete
minikube start --memory=2048
eval $(minikube docker-env)
minikube addons enable metallb
#kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

docker build -t nginx ./srcs/nginx
docker build -t mysql ./srcs/mysql
docker build -t phpmyadmin ./srcs/phpmyadmin

kubectl apply -f ./srcs/metalLB.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml

minikube dashboard
