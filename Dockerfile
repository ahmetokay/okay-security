#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package
#
##
## Package stage
##
FROM openjdk:8-jre-alpine3.9
COPY --from=build /home/app/target/okay-security-1.0-SNAPSHOT-spring-boot.jar /okay-security.jar
EXPOSE 5555
ENTRYPOINT ["java","-jar","/okay-security.jar"]


#FROM openjdk:8-jre-alpine3.9
## copy the packaged jar file into our docker image
#COPY target/okay-security-1.0-SNAPSHOT-spring-boot.jar /okay-security.jar
## set the startup command to execute the jar
#CMD ["java", "-jar", "/okay-security.jar"]
