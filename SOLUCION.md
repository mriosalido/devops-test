# Introduccion
Para las pruebas he creado un cluster ecs con terraform (ver directorio /terraform) y para la creacion de un servicio / task se ha usado terraform en el directorio /terraform-service.

# Premisas
- Existe el bucket de S3: infra-tf-live-state
- Existe la table DynamoDB: infra-tf-live-lock
- En el fichero /terraform/version.tf: Modificar linea 7 y poner el profile de AWS para acceder a S3 y DyamoDB
- En el fichero /terraform/terraform.tfvars: Modificar linea 7 y poner el profile de AWS para acceder ECS

# Para crear la infra necesaria:
```
$ cd terraform
$ terraform init
$ terraform apply
```

# Creacion del servicio
## Premisas:
- Existe el bucket de S3: infra-tf-live-state
- Existe la table DynamoDB: infra-tf-live-lock
- En el fichero /terraform-service/version.tf: Modificar linea 7 y poner el profile de AWS para acceder a S3 y DyamoDB
- En el fichero /terraform-service/terraform.tfvars: Modificar linea 7 y poner el profile de AWS para acceder ECS
```
$ cd terraform-service
$ terraform init
$ terraform apply
```
Esto crea servicio en ECS.

Para cambiar de version la imagen utilizado podemos modificar el fichero /terraform-service/terraform.tfvars la linea 12 por la nueva version.

En Kubernetes este tipo rollout podemos aplicar con facilidad tanto el patron Canary Release o Blue Green deployment. 
En ECS tambien es posible aplicar estos patrones pero dado que a Amazon le gusta el tema del vendor locking solo es de una forma facil si utilizamos CloudFormation and DeveloperTools con sus CodePipelines....
