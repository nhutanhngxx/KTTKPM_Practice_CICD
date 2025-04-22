# Sử dụng image gốc cho Java 21
FROM openjdk:21-jdk-slim

# Cấu hình thư mục làm việc trong container
WORKDIR /app

# Copy file jar vào container
COPY build/libs/Customer-Service-0.0.1-SNAPSHOT.jar /app/Customer-Service-0.0.1-SNAPSHOT.jar

# Cấu hình cổng
EXPOSE 8080

# Chạy ứng dụng Java
CMD ["java", "-jar", "Customer-Service-0.0.1-SNAPSHOT.jar"]