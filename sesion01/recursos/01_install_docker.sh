#!/bin/bash

# Install Docker and Docker Compose on Centos Linux

## Instalar docker
echo "Instalar el paquete yum-utils y agregar el repositorio de docker"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
echo "Instalar docker"
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo "Iniciar docker"
sudo systemctl start docker

## Habilitar docker para usuarios no root
echo "Crear grupo docker"
sudo groupadd docker
echo "Agregar usuario al grupo docker"
sudo usermod -aG docker $USER

## Configurar Docker para iniciar desde el arranque
echo "Para iniciar automáticamente Docker y Containerd use los siguientes comandos"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

## Instalar Docker Compose
echo "Descargar e instalar docker-compose"
sudo curl -SL https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
echo "Agregar permisos de ejecución"
sudo chmod +x /usr/local/bin/docker-compose
echo "Agregar acceso directo"     
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


echo "Activar cambios en los grupos"
newgrp docker