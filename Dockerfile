FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
RUN mvn -q -DskipTests package
EXPOSE 8080
CMD ["java","-jar","target/music-lesson-mvp-java-0.0.1-SNAPSHOT.jar"]
