# Paso 1: Especificar la imagen base openjdk 17 jdk alpine
FROM openjdk:17-jdk-alpine

# Paso 2: Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Paso 3: Copiar el archivo JAR de tu aplicación en el contenedor
COPY target/*.jar mi-aplicacion.jar

# Paso 4: Especificar el comando para ejecutar la aplicación
CMD ["java", "-jar", "mi-aplicacion.jar"]