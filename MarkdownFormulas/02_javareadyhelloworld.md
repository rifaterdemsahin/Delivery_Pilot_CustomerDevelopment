# # Obselete

# Hello World in Java with Docker

This guide will help you create a simple "Hello World" Java application and run it using Docker.

## Prerequisites

- Docker installed on your machine
- Basic knowledge of Java

## Step 1: Create a Java Application

Create a new file named `HelloWorld.java` with the following content:

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

## Step 2: Create a Dockerfile

In the same directory, create a file named `Dockerfile` with the following content:

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java program
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
```

## Step 3: Build the Docker Image

Open a terminal, navigate to the directory containing the `Dockerfile`, and run the following command to build the Docker image:

```sh
docker build -t java-helloworld .
```

## Step 4: Run the Docker Container

Run the Docker container using the following command:

```sh
docker run --rm java-helloworld
```

You should see the output:

```
Hello, World!
```

Congratulations! You've successfully created and run a "Hello World" Java application using Docker.