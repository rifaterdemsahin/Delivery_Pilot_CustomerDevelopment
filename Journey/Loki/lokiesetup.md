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
    docker build -t pexabo/nginx-helloworld .
    ```

## Step 4: Push the Docker Image to Docker Hub
1. Log in to Docker Hub:
    ```sh
    docker login
    ```
2. Push the Docker image to Docker Hub:
    ```sh
    docker push pexabo/nginx-helloworld
    ```

## Step 5: Create the Deployment YAML
1. Create a file named 

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
    kubectl get deployments
    ```
2. Check the status of the pods:
    ```sh
    kubectl get pods
    ```

## Step 8: Access the Application
1. Forward the port to access the application locally:
    ```sh
    kubectl port-forward deployment/nginx-helloworld 8080:80
    ```
2. Open a web browser and navigate to `http://localhost:8080` to see your application.

rifaterdemsahin: setup the loki for my helloworld project in the minikube 

GitHub Copilot: To set up Loki for your HelloWorld project in Minikube, follow these steps:

## Step 1: Install Minikube and Start the Cluster
1. Ensure Minikube is installed on your system.
2. Start Minikube:
    ```sh
    minikube start
    ```

## Step 2: Install Helm
1. Ensure Helm is installed on your system.
2. Add the Loki Helm repository:
    ```sh
    helm repo add grafana https://grafana.github.io/helm-charts
    helm repo update
    ```

## Step 3: Deploy Loki
1. Create a namespace for Loki:
    ```sh
    kubectl create namespace loki
    ```
2. Install Loki using Helm:
    ```sh
    helm install loki grafana/loki-stack --namespace=loki
    ```

## Step 4: Configure Promtail
1. Install Promtail to collect logs from your Kubernetes cluster:
    ```sh
    helm install promtail grafana/promtail --namespace=loki --set "loki.serviceName=loki"
    ```

## Step 5: Verify Loki and Promtail Installation
1. Check the status of the Loki and Promtail pods:
    ```sh
    kubectl get pods -n loki
    ```

## Step 6: Configure Your Application to Send Logs to Loki
1. Ensure your application logs are being collected by Promtail. Promtail automatically collects logs from all containers in the cluster.

## Step 7: Access Loki
1. Forward the Loki port to access it locally:
    ```sh
    kubectl port-forward svc/loki 3100:3100 -n loki
    ```
2. Open a web browser and navigate to `http://localhost:3100` to access Loki.

## Step 8: Visualize Logs in Grafana
1. Install Grafana using Helm:
    ```sh
    helm install grafana grafana/grafana --namespace=loki --set "service.type=NodePort"
    ```
2. Get the Grafana admin password:
    ```sh
    kubectl get secret --namespace loki grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
    ```
3. Forward the Grafana port to access it locally:
    ```sh
    kubectl port-forward svc/grafana 3000:80 -n loki
    ```
4. Open a web browser and navigate to `http://localhost:3000`.
5. Log in with the username `admin` and the password retrieved in step 2.
6. Add Loki as a data source in Grafana:
    - Go to **Configuration** > **Data Sources**.
    - Click **Add data source**.
    - Select **Loki**.
    - Set the URL to `http://loki:3100`.
    - Click **Save & Test**.

Now you can visualize your application logs in Grafana using Loki as the data source.