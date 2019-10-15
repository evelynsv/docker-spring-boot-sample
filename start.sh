# to publish a image
# ./gradlew build docker

# to run a container
docker run -v path-where-the-application.properties-is:/properties/ -p port:port --name=helloworld github-brendonfm/hello-docker-world-spring-boot:0.1.0
