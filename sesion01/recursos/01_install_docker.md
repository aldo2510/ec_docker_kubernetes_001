# Install Docker and Docker Compose on Centos Linux

## Instalar docker

1. Instalar el paquete yum-utils y agregar el repositorio de docker

    ```console
    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    ```
1. Instalar docker

    ```console
    sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
    ```
1. Iniciar docker

    ```console
    sudo systemctl start docker
    ```
    
1. Comprobar que docker se instaló correctamente

    ```console
    sudo docker run hello-world
    ```
  
## Habilitar docker para usuarios no root

1. Crear grupo docker

    ```console
    sudo groupadd docker
    ```
    
1. Agregar usuario al grupo docker

    ```console
    sudo usermod -aG docker $USER
    ```

1. Activar cambios en los grupos

    ```console
    newgrp docker
    ```
      
 1. Comprobar que se puede ejecutar docker sin usuario root

    ```console
    docker run hello-world
    ```

## Configurar Docker para iniciar desde el arranque

 1. Para iniciar automáticamente Docker y Containerd use los siguientes comandos

    ```console
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
    ```

## Instalar Docker Compose

1. Descargar e instalar docker-compose

    ```console
    sudo curl -SL https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
    ```
    
1. Agregar permisos de ejecución

    ```console
    sudo chmod +x /usr/local/bin/docker-compose
    ```

1. Agregar acceso directo

    ```console
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
    ```