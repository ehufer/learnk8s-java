FROM       openjdk:jre-alpine
LABEL      maintainer="Fernand Galiana"

RUN        mkdir -p /app/jar
WORKDIR    /app/jar
ADD        service/target/hello-0.0.1.jar hello.jar

ENTRYPOINT ["java", "-jar", "hello.jar"]