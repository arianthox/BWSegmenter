FROM openjdk:13-jdk-slim
LABEL maintainer="william.bejarano@globant.com"
VOLUME /tmp
EXPOSE 8002
ARG JAR_FILE=build/libs/BWSegmenter-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} BWSegmenter-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/BWSegmenter-0.0.1-SNAPSHOT.jar"]
