FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.war
COPY ${JAR_FILE} CloudUi.war
COPY application.yml /application.yml
COPY bootstrap.yml /bootstrap.yml
ENTRYPOINT ["java","-jar","/CloudUi.war"]
