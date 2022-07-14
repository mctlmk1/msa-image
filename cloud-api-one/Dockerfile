FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} CloudApiOne.jar
COPY application.yml /application.yml
COPY bootstrap.yml /bootstrap.yml
ENTRYPOINT ["java","-jar","/CloudApiOne.jar"]
