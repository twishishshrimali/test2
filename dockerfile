FROM maven:3.5.4-jdk-8-alpine as maven

COPY ./pom.xml ./pom.xml

COPY ./src ./src

RUN mvn dependency:go-offline -B

RUN mvn package

FROM openjdk:8u171-jre-alpine

WORKDIR /java-web-project

COPY --from=maven target/java-web-project.war ./java-web-project.war

CMD ["java", "-jar", "--port", "9997" "./target/java-web-project.war"]