# Mi primer ambiente Big Data

Este proyecto es para la comunidad latina, para que puedan crear ambientes Big Data de prueba para adentrarse más a estos paradigmas.

## Comenzando 🚀

Para levantar los ambientes, nos tenemos que posicionar en la carpeta raíz del proyecto, no importa si es Windows o Mac con los accedemos mediante la consola y corremos las siguientes líneas.

$ vagrant up nodo1 nodo2 nodo3

Vagrant de manera natural consume el archivo de configuración para crear los ambientes virtuales o levantarlos si estos ya fueron creados.

Existe otros dos comandos que nos ayudan para poder mantener esos ambientes virtuales.

$ vagrant destroy nodo1 nodo2 nodo3

Este comando nos ayuda a destruir o eliminar las maquinas virtuales creadas.

$ vagrant suspend nodo1 nodo2 nodo3

Con la sintaxis suspend, las maquinas o maquina virtual se queda en pausa justamente en el momento que aplicamos el comando.

Recuerden que los nodo1 nodo2 y nodo3 son la referencia a las maquinas virtuales que creamos con vagrantfile. 

$vagrant ssh nodo1

Este comando nos ayuda a acceder a las maquinas virtuales creadas.




### Pre-requisitos 📋

-Instalar Virtual Box que es el encargado consumir el recurso de nuestra maquina y asignar a los ambientes virtuales que queremos crear.
-Instalar Vagrant será la herramienta para crear y configurar los ambientes virtuales que se comunicara con virtual Box proporcionar los ambientes virtuales.


