FROM openjdk:8-jdk-alpine

LABEL maintainer="github.com/brendonfm"

VOLUME /tmp
VOLUME /properties

ARG JAR_BASE_NAME=${JAR_BASE_NAME}
ARG BUILD_VERSION=${BUILD_VERSION}
ARG JAR_FILE=$JAR_BASE_NAME-$BUILD_VERSION.jar

COPY ${JAR_FILE} app.jar

WORKDIR /tmp

ENTRYPOINT ["java","-jar","/app.jar","--spring.config.location=/properties/application.properties"]

EXPOSE 8080