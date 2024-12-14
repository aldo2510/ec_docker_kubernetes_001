1. Preparación:
    * Renombrar archivo docker-compose-v1.yaml a docker-compose.yaml

    ```bash
    mv docker-compose-v1.yaml docker-compose.yaml
    ```
    
    * Crear folder: 

    ```bash
    mkdir jenkins_home
    ```

1. Iniciar docker-compose
    ```bash
    docker-compose up -d
    docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
    ```

1. Ver secreto de jenkins
    ```bash
    cat jenkins_home/secrets/initialAdminPassword
    docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
    
    docker exec -it jenkins /bin/bash
    cat /var/jenkins_home/secrets/initialAdminPassword
    ```

1. Instalar plugins sugeridos: clic en install suggested plugins

1. Crear el primer usuario, para iniciar colocaremos el usuario admin con password admin y luego clic en save and continue.

1. La herramienta nos mostrará la url, clic en save and finish.

1. Finalmente, clic en start using Jenkins.




    ```bash         
    docker exec -it --user root jenkins /bin/bash
    chown jenkins /var/run/docker.sock
    docker exec -it jenkins /bin/bash
    ``` 


1. Detener jenkins
    ```bash
    docker-compose -f docker-compose-v1.yaml down
    docker-compose -f docker-compose-v1.yaml rm
    rm -fr jenkins_home
    ```

------

1. Create image
    ```bash   
   docker build  -t "jenkins/docker" .
    ```
