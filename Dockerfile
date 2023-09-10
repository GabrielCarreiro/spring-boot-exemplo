FROM maven:3.9.4-eclipse-temurin-17

LABEL com.example.version="1.0.0"
LABEL com.example.release-date="30-09-2023"
LABEL com.example.production="False"

WORKDIR /build

COPY . .

RUN mvn package

ENTRYPOINT ["java","-jar","/build/target/exemplo-1.0.0-SNAPSHOT.jar"]