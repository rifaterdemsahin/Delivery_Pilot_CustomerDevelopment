# # Obselete

# Java Docker Hello World Web Application

This guide will help you create a simple Java web application and run it using Docker.

## Prerequisites

- Docker installed on your machine
- Basic knowledge of Java and Docker

## Step 1: Create the Java Web Application

Create a new directory for your project and navigate into it:

```sh
mkdir java-docker-hello-world
cd java-docker-hello-world
```

Create a `HelloWorldServlet.java` file in the `src/main/java/com/example` directory with the following content:

```java
package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println("Hello, World!");
    }
}
```

Create a `web.xml` file in the `src/main/webapp/WEB-INF` directory with the following content:

```xml
<web-app>
    <servlet>
        <servlet-name>HelloWorldServlet</servlet-name>
        <servlet-class>com.example.HelloWorldServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>HelloWorldServlet</servlet-name>
        <url-pattern>/hello</url-pattern>
    </servlet-mapping>
</web-app>
```

## Step 2: Create a Dockerfile

Create a `Dockerfile` in the root of your project directory with the following content:

```Dockerfile
# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0

# Copy the web application to the Tomcat webapps directory
COPY ./src/main/webapp /usr/local/tomcat/webapps/ROOT
```

## Step 3: Build and Run the Docker Image

Build the Docker image:

```sh
docker build -t java-docker-hello-world .
```

Run the Docker container:

```sh
docker run -p 8080:8080 java-docker-hello-world
```

## Step 4: Access the Web Application

Open your web browser and navigate to `http://localhost:8080/hello`. You should see the message "Hello, World!".

Congratulations! You have successfully created a Java web application and run it using Docker.