FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} CloudEureka.jar
COPY application.yml /application.yml
COPY bootstrap.yml /bootstrap.yml
ENTRYPOINT ["java","-jar","/CloudEureka.jar"]
