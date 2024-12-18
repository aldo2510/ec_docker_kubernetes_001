# Dockerfile



|Command    |Descripcion|Obligatorio|
|-----------|-----------|-----------|
|FROM       |Imagen base para construir la imagen|SI|
|CMD	    |Ejecuta el comando que inicia el container, se puede sobreescribir facilmente|SI|
|ENTRYPOINT |Ejecuta el comando que inicia el container|SI|
|MAINTAINER |Quien mantiene le Dockerfile|NO
|ENV |Definir variable de entorno|NO
|RUN |Ejecuta un comando y graba en resultado|NO
|ADD |Copias archivos a la imagen|NO
|EXPOSE|Abre puerto para abrir el container|NO
|WORKDIR|Directorio de trabajo|NO

1. CMD echo “Hello World” (shell estilo)
1. CMD ["echo", "Hello World"] (exec estilo)
1. ENTRYPOINT echo "Hello World" (shell estilo)
1. ENTRYPOINT ["echo", "Hello World"] (exec estilo)

Generalmente se usa la instrucción ENTRYPOINT para apuntar a la aplicación principal que se desea ejecutar, y CMD para definir unos parámetros por defecto.

apt-get update
apt-get install -y curl



sudo apt-get install -y curl
sudo docker run -it ubuntu /bin/sh


### Creando imagenes

* Limpiar (opcional)
    ```bash
    docker system prune -a
    ```


* Imagen shell01
    ```bash
    docker build -t shell01 .
    docker build -t shell01 . --progress=plain --no-cache
    docker run shell01
    ```
    * --progress=plain option as docker defaults to auto
    * --no-cache=it is necessary to rebuild the container

* Imagen shell02
    ```bash
    docker build -t shell02 -f Dockerfile02 .
    docker run shell02
    ```

* Imagen shell03
    ```bash
    docker build -t shell03 -f Dockerfile03 .
    docker run shell03
    ```

* Imagen shell04


    ```bash
    RUN chmod +x ./app.sh
    ```

    ```bash
    docker build -t shell04 -f Dockerfile04 .
    docker run -e NAME="sss" shell04
    ```

* Imagen shell05

    ```bash
    # Instalar prerequisitos
    #RUN apk add curl
    #RUN apk update && apk add curl
    ```

    ```bash
    docker build -t shell05 -f Dockerfile05 .
    docker run shell05
    ```


* Imagen shell07

    ```bash
    docker build -t shell07 \
    --build-arg PATH_APPS=/opt \
    --build-arg NAME_APP=APP01  \
    -f Dockerfile07 .
    docker run shell07
    ```

* Imagen web 1.0

    ```bash
     # Comprimir
    tar -czf dist.tgz ./dist
    tar -xvf dist.tgz
    ```

    ```bash
    docker build -t web01 .
    docker run -p 8080:80 web01
    ```

* Lab web 2.0
    1. Escuchar por el puerto 8085
    1. Implementar un /health
    1. Directorio /data/www

* Java
    ```bash
    docker build -t java01 .
    docker run -p 8080:8080 java01
    ```

    ```bash
    curl http://localhost:8080/customers
    ```

* Subir Imagen shell01 a dockerhub
    ```bash
    docker tag shell01:latest aldot25/shell01:latest
    docker push aldot25/shell01:latest
    ```

