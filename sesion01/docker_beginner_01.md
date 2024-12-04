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

## Instalación de Docker

### Para Linux (Ubuntu)

```bash
# Actualiza el índice de paquetes
sudo apt-get update

# Instala paquetes necesarios
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Agrega la clave GPG de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Agrega el repositorio de Docker
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Instala Docker
sudo apt-get update
sudo apt-get install docker-ce

# Verifica la instalación
sudo systemctl status docker
