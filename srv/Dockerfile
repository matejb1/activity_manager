FROM maven:3-eclipse-temurin-21-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY settings.xml /root/.m2/settings.xml
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean install package -DskipTests -Dmodernizer.skip -Dcheckstyle.skip=true

FROM eclipse-temurin:21-alpine-3.24
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
