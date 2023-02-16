* Question 1
Pro EKS
- Es 'facil' migrar a otro proveedor de Kubernetes (Google, Azure o Self-managed)
- Kubernetes es un orquestador de contenedores basado en una tecnologia Open y esto podria evitar un vendor locking.
Cons EKS
- Si la aplicacion requiere un rendimiento de red alto, requiere de un alto conocimiento para su despliegue.
- Si la aplicacion es statefull y requiere EBS, el coste puede aumentar en terminos de infrastructura si no se plianifica bien.
- Tiene un coste fijo minimo por solo el cluster.

Pro EC2/Fargate
- El cluster no tiene coste minimo y solo pagas por uso.

Cons EC2/Fargate
- El uso de fargate puede ser lento para procesos que requieran una respuesta rapida.
- Si se usa EC2 require mas planificacion y conocimientos de AWS.

Despues de tiempo de utilizar los dos metodos es una decision muy parecida a escoger entre tabuladores o espacios ... vim o emacs.



* Question 2
La aplicacion hace una peticion http a un dominio X y lo que se pretende es permitir peticiones solo a dominio determinados.
Para poder permitir esto debemos de configura la Subnet para que asigne DNS y este sea el Resolver de Route53. Tambien hemos de permitir el trafico saliente,para esto deberemos de configurar un NatGateway ,asi como los SecurityGroups y ACL.

Para poder filtrar la peticiones dns podemos usar DNS Firewall de Route53 Resolver. Con esta opcion podremos crear una lisda de dominios permitidos. Esto solo bloquea resolucion de DNS y no trafico http, quiere decir que si la aplicacion sabe la IP puede hacer la solicitud sin usar DNS. 

Otra opcion es utilizar AWS Network Firewall y filtrar las peticiones de dns a una lista de dominios permitidos.


* Question 3
En el caso de comunicacion sincrona seria muy dependiente la arquitectura de la aplicacion, una opcion seria peticiones/respuesta via http o una conexion TCP entre los dos servicios (Por ejemplo Sockets). Incluso en este metodo se podira utiliza un balanceador por cada servicio, en el caso de que fueran servicios escalables. Teniendo en cuenta que si se utiliza el modelo de peticion/respuesta http la implementacion podria encajar en AWS Lambda, AWS API GW...

Si fuera asincrona la conexion podria ser algo menos dependiente de la arquitectura. En este caso un sistema de mensajes podria se adecuado. Ya sea utilizando un protocolo como AMQP y una implementacion como RabbitMQ ya sea gestionado o cloud. Tambien se podria utilizar el sistema de mensage de Amazon SQS


* Question 4
Es preferible siemple aplicar politicas de permisos minimos. En este caro crearia politica por region/servicio. Pero lo mejor seria no crear un usuario como tal sino utilizar un sistema de federado de usuarios.

