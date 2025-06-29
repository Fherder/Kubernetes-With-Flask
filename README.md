# Install kubectl and minikube
## Kubectl
First you need to install kubectl with Powershell.
- Download the latest release with the command:
```
curl.exe -LO "https://dl.k8s.io/release/v1.33.0/bin/windows/amd64/kubectl-convert.exe"
```
- After downloading kubectl you need to add it to the PATH.
- To verify installation try:
```
kubectl version --client
```

## Minikube

- After installing kubectl proceed with the [Minikube installation](https://minikube.sigs.k8s.io/docs/start/?arch=%2Fwindows%2Fx86-64%2Fstable%2F.exe+download):

# Run with kuberetes

- Start minikube in the project directory.
```
minikube start --driver=docker
```
- Build docker image inside minikube with powershell:
```
minikube docker-env
```
```
& minikube -p minikube docker-env | Invoke-Expression
```
- Rebuild image.
```
docker build -t flask-hola .
```

# Deploy
- Inside the k8s folder run:
```
kubectl apply -f deployment.yaml
```
```
kubectl apply -f service.yaml
```
- Verify.
```
kubectl get pods
```
- Start
```
minikube service hello-service
```  
