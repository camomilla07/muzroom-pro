# Используем готовый образ с Java 17
FROM openjdk:17-jdk-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем pom.xml и скачиваем зависимости
COPY pom.xml .
RUN apt-get update && apt-get install -y maven && mvn dependency:go-offline

# Копируем всё остальное и собираем проект
COPY . .
RUN mvn package -DskipTests

# Запускаем приложение
CMD ["java", "-jar", "target/music-lesson-mvp-java-0.0.1-SNAPSHOT.jar"]

