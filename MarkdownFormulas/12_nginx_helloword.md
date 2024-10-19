# Hello World in Java with Docker
This guide will help you create a simple "Hello World" web server using Nginx and run it using Docker.

## Prerequisites

- Docker installed on your machine
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

## Step 4: Run the Docker Container

Run the Docker container using the following command:

```sh
docker run --rm -p 8080:80 nginx-helloworld
```

Open your web browser and navigate to `http://localhost:8080`. You should see the output:

```
Hello, World!
```

Congratulations! You've successfully created and run a "Hello World" web server using Nginx and Docker.
