# Hello World in Java with Docker
This guide will help you create a simple "Hello World" web server using Nginx and deploy it to Minikube. 🚀

## Prerequisites 📋

- Minikube installed on your machine 🖥️
- kubectl installed and configured 🔧
- Basic knowledge of Nginx 🌐

## Step 1: Create an HTML File 📄

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

## Step 2: Create a Dockerfile 🐳

In the same directory, create a file named `Dockerfile` with the following content:

```Dockerfile
# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file to the Nginx directory
COPY index.html /usr/share/nginx/html/index.html
```

## Step 3: Build the Docker Image 🏗️

Open a terminal, navigate to the directory containing the `Dockerfile`, and run the following command to build the Docker image:

```sh
docker build -t nginx-helloworld .
```

## Step 4: Push the Docker Image to a Registry 📤

Tag your Docker image and push it to a container registry that Minikube can access. For example, using Docker Hub:

```sh
docker tag nginx-helloworld pexabo/nginx-helloworld
docker login
docker push pexabo/nginx-helloworld
```

## Step 5: Create a Kubernetes Deployment 📦

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

## Step 6: Create a Kubernetes Service 🌐

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

## Step 7: Deploy to Minikube 🚀

Apply the deployment and service configurations using kubectl:

```sh
minikube start
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

## Step 8: Access the Web Server 🌐

Run the following command to get the Minikube IP address:

```sh
minikube ip
```

Open your web browser and navigate to `http://<minikube-ip>:30000`. You should see the output:
http://192.168.49.2:30000
```
Hello, World!
```
curl http://192.168.49.2:30000
Congratulations! 🎉 You've successfully created and deployed a "Hello World" web server using Nginx and Minikube.

## Step 9: Create an Ingress Resource 🌐

To access your Nginx server using a domain name instead of the NodePort, you can create an Ingress resource. First, ensure that the Minikube ingress addon is enabled:

```sh
minikube addons enable ingress
```

Create a file named `ingress.yaml` with the following content:

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
    name: nginx-helloworld-ingress
    annotations:
        nginx.ingress.kubernetes.io/rewrite-target: /
spec:
    rules:
    - host: hello-world.local
        http:
            paths:
            - path: /
                pathType: Prefix
                backend:
                    service:
                        name: nginx-helloworld
                        port:
                            number: 80
```

Apply the Ingress resource using kubectl:

```sh
kubectl apply -f ingress.yaml
```

## Step 10: Update /etc/hosts File 📝

To access the Nginx server using the domain name `hello-world.local`, you need to update your `/etc/hosts` file with the Minikube IP address. Run the following command to get the Minikube IP address:

```sh
minikube ip
```

Edit your `/etc/hosts` file and add the following line, replacing `<minikube-ip>` with the actual IP address:

```plaintext
<minikube-ip> hello-world.local
```

## Step 11: Access the Web Server via Ingress 🌐

Open your web browser and navigate to `http://hello-world.local`. You should see the output:

```
Hello, World!
```

## Step 12: Create a LoadBalancer Service 🌐

To create a LoadBalancer service for your Nginx server, update your `service.yaml` file with the following content:

```yaml
apiVersion: v1
kind: Service
metadata:
    name: nginx-helloworld
spec:
    type: LoadBalancer
    selector:
        app: nginx-helloworld
    ports:
    - protocol: TCP
        port: 80
        targetPort: 80
```

Apply the updated service configuration using kubectl:

```sh
kubectl apply -f service.yaml
```

Run the following command to get the external IP address assigned to your LoadBalancer service:

```sh
kubectl get services
```

## Step 13: Enable Port Forwarding for Minikube 🚀

If you prefer to access your Nginx server without modifying the `/etc/hosts` file or using a LoadBalancer, you can use port forwarding. Run the following command to forward a port from your local machine to the Minikube service:

```sh
kubectl port-forward service/nginx-helloworld 8080:80
```

This command forwards port 8080 on your local machine to port 80 on the `nginx-helloworld` service.

Open your web browser and navigate to `http://localhost:8080`. You should see the output:

```
Hello, World!
```

Congratulations! 🎉 You've successfully created and deployed a "Hello World" web server using Nginx and Minikube with port forwarding.

Open your web browser and navigate to the external IP address. You should see the output:

```
Hello, World!
```

Congratulations! 🎉 You've successfully created and deployed a "Hello World" web server using Nginx and Minikube with Ingress and LoadBalancer.
