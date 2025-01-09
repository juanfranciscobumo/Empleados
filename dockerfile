# Usar una imagen base de OpenJDK 22
FROM openjdk:22-jdk-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado al contenedor
COPY build/libs/empleados-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto donde la aplicación escucha
EXPOSE 8081

# Comando para ejecutar el JAR
ENTRYPOINT ["java", "-jar", "app.jar"]