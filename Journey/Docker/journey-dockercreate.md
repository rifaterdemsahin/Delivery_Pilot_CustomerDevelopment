rifaterdemsahin: create a implementation steps here

GitHub Copilot: # Implementation Steps

## Step 1: Create the Dockerfile
1. Create a file named `Dockerfile`.
2. Add the following content to the `Dockerfile`:
    ```dockerfile
    # Use the official Nginx image from the Docker Hub
    FROM nginx:alpine

    # Copy the HTML file to the Nginx directory
    COPY index.html /usr/share/nginx/html/index.html
    ```

## Step 2: Create the HTML File
1. Create a file named `index.html`.
2. Add your HTML content to the `index.html` file.

## Step 3: Build the Docker Image
1. Open a terminal.
2. Navigate to the directory containing the `Dockerfile` and `index.html`.
3. Run the following command to build the Docker image:
    ```sh
    cd /workspaces/deliverypilot/SymbolsCode/helloworld
    docker build -t pexabo/nginx-helloworld .
    ```

## Step 4: Push the Docker Image to Docker Hub
1. Log in to Docker Hub:
    ```sh
    docker info
    docker logout
    docker login
    ```
2. Push the Docker image to Docker Hub:
    ```sh
    docker push pexabo/nginx-helloworld
    ```

minikube start 

## Step 5: Create the Deployment YAML
1. Create a file named 
cd /workspaces/deliverypilot/SymbolsCode/helloworld

deployment.yaml

.
2. Add the following content to the 

deployment.yaml

 file:
    ```yaml
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

## Step 6: Deploy to Kubernetes
1. Ensure you have access to a Kubernetes cluster and `kubectl` is configured.
2. Apply the deployment:
    ```sh
    kubectl apply -f deployment.yaml
    ```

## Step 7: Verify the Deployment
1. Check the status of the deployment:
    ```sh
    kubectl get deployments -A
    ```
2. Check the status of the pods:
    ```sh
    kubectl get pods -A
    ```

## Step 8: Access the Application
1. Forward the port to access the application locally:
    ```sh
    kubectl port-forward deployment/nginx-helloworld 8080:80
    ```
2. Open a web browser and navigate to `http://localhost:8080` to see your application.