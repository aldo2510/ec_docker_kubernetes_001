# Introducción a Docker

Docker es una plataforma de contenedores que permite desarrollar, enviar y ejecutar aplicaciones en contenedores. Un contenedor es una unidad estándar de software que empaqueta el código y todas sus dependencias, de manera que pueda ejecutarse de forma rápida y confiable en diferentes entornos.

## Conceptos Básicos

### 1. **Contenedor**:
Un contenedor es una unidad ligera y ejecutable que contiene todo lo necesario para ejecutar una aplicación: el código, las bibliotecas y las dependencias.

### 2. **Imagen**:
Las imágenes son plantillas de solo lectura utilizadas para crear contenedores. Cada contenedor se crea a partir de una imagen.

### 3. **Dockerfile**:
Es un archivo de texto que contiene las instrucciones necesarias para construir una imagen Docker.

### 4. **Docker Hub**:
Es un registro en línea donde puedes encontrar y almacenar imágenes Docker. Es como un repositorio público de imágenes.

### 5. **Docker Compose**:
Herramienta que permite definir y ejecutar aplicaciones de Docker de múltiples contenedores.

### 6. **Docker daemon**:
El demonio Docker *(dockerd)* escucha las solicitudes de la API de Docker y administra objetos Docker, como imágenes, contenedores, redes y volúmenes. Un demonio también puede comunicarse con otros demonios para administrar los servicios de Docker.

### 7. **Docker client**:
El cliente Docker *(docker)* es la forma principal en la que muchos usuarios de Docker interactúan con Docker. Cuando se utilizan comandos como *docker run*, el cliente envía estos comandos a dockerd, que los ejecuta. El comando *docker* utiliza la API de Docker. El cliente Docker puede comunicarse con más de un demonio.

### 8. **Docker daemon**:
El demonio Docker *(dockerd)* escucha las solicitudes de la API de Docker y administra objetos Docker, como imágenes, contenedores, redes y volúmenes. Un demonio también puede comunicarse con otros demonios para administrar los servicios de Docker.

### 9. **Docker registry**:
Un registro de Docker almacena imágenes de Docker. Docker Hub es un registro público que cualquiera puede usar y Docker busca imágenes en Docker Hub de manera predeterminada. Incluso puedes ejecutar tu propio registro privado (ACR, GAR, etc).

Cuando utiliza los comandos docker pull o docker run, Docker extrae las imágenes necesarias de su registro configurado. Cuando utiliza el comando docker push, Docker envía su imagen a su registro configurado.