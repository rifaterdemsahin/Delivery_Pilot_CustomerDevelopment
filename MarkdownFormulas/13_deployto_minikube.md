# Hello World in Java with Docker
This guide will help you create a simple "Hello World" web server using Nginx and deploy it to Minikube.

## Prerequisites

- Minikube installed on your machine
- kubectl installed and configured
- Basic knowledge of Nginx

## Step 1: Create an HTML File

Create a new file named `index.html` with the following content:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
    <h1>Hello, World!</h1>
</body>
</html>
```

## Step 2: Create a Dockerfile

In the same directory, create a file named `Dockerfile` with the following content:

```Dockerfile
# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file to the Nginx directory
COPY index.html /usr/share/nginx/html/index.html
```

## Step 3: Build the Docker Image

Open a terminal, navigate to the directory containing the `Dockerfile`, and run the following command to build the Docker image:

```sh
docker build -t nginx-helloworld .
```

## Step 4: Push the Docker Image to a Registry

Tag your Docker image and push it to a container registry that Minikube can access. For example, using Docker Hub:

```sh
docker tag nginx-helloworld pexabo/nginx-helloworld
```sh

docker logout
docker login

docker push pexabo/nginx-helloworld
https://hub.docker.com/r/pexabo/nginx-helloworld

```

## Step 5: Create a Kubernetes Deployment

Create a file named `deployment.yaml` with the following content:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-helloworld
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx-helloworld
  template:
    metadata:
      labels:
        app: nginx-helloworld
    spec:
      containers:
      - name: nginx
        image: pexabo/nginx-helloworld
        ports:
        - containerPort: 80
```

## Step 6: Create a Kubernetes Service

Create a file named `service.yaml` with the following content:

```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-helloworld
spec:
  type: NodePort
  selector:
    app: nginx-helloworld
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80
    nodePort: 30000
```

## Step 7: Deploy to Minikube

Apply the deployment and service configurations using kubectl:

```sh
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

## Step 8: Access the Web Server

Run the following command to get the Minikube IP address:

```sh
minikube ip
```

Open your web browser and navigate to `http://<minikube-ip>:30000`. You should see the output:

```
Hello, World!
```

Congratulations! You've successfully created and deployed a "Hello World" web server using Nginx and Minikube.

