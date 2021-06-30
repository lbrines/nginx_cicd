# Diagrama para CI/CD

![alt text](https://github.com/lbrines/nginx_cicd/blob/main/diagram.png?raw=true)

Despues de commit / push del usuario se ejecutan las siguientes acciones:
### Github actions
* Construcción y push de la imagen a Docker Hub.
* Modificación y commit del manifiesto de K8s con los tag de la nueva imagen.

### Flux
* Sincroniza el manifiesto desde Github y lo aplica en el Cluster de K8s.