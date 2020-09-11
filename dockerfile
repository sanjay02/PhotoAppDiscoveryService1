# For Java 8, try this
FROM openjdk:8-jdk-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/PhotoAppDiscoveryService1-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/PhotoAppDiscoveryService1-0.0.1-SNAPSHOT.jar/opt/app/eurekaserver.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/eurekaserver.jar
ENTRYPOINT ["java","-jar","eurekaserver.jar"]
