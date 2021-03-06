# LearnK8s-Java

![docker hub](https://img.shields.io/docker/pulls/imhotepio/learnk8s-java.svg?style=flat-square)
![docker hub](https://img.shields.io/docker/stars/imhotepio/learnk8s-java.svg?style=flat-square)
![docker hub](https://img.shields.io/docker/build/imhotepio/learnk8s-java.svg?style=flat-square)
![docker hub](https://img.shields.io/docker/automated/imhotepio/learnk8s-java.svg?style=flat-square)

<br/>
A sample Spring Boot demo application to illustrate java based deployments with Kubernetes

---
## Prerequisites

- Java 8
- Maven
- Docker

## Setup

1. Build Jar file

    ```shell
    make build
    ```

1. Build Docker Image

    ```shell
    make img
    ```

1. Publish Image on DockerHub

    ```shell
    make push
    ```

1. Provision the application

    ```shell
    kubectl apply -f k8s/hello.yml
    ```

1. Verify!

    ```shell
    curl -XGET http://MY_IP:30800/hello
    ```

---
<img src="assets/imhoteplogo.png" width="32" height="auto"/> © 2018 Imhotep Software LLC.
All materials licensed under [Apache v2.0](http://www.apache.org/licenses/LICENSE-2.0)