FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} CloudConfig.jar
COPY application.yml /application.yml
ENTRYPOINT ["java","-jar","/CloudConfig.jar"]
