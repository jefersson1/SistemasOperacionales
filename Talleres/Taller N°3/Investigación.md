## 1).En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad

* a)Mencione dos problemas y expliquelos.

  * En la informatica dos problemas comunes en entornos compartidos son la vulnerabilidad a ataques de malware y la violación a la provacidad de los usuarios.
  En los entornos compartidos, el riesgo de que los usuarios descarguen, compartan y ejecuten archivos maliciosos es mayor. También hay la posibilidad de que al no actulizar los programas y sistemas operativos, queden brechas de seguridad por las cuales los ciberdelicuentes aprovechen para acceder al sistema.
  En cuanto a la violación de la privacidad los usuarios pueden acceder accidentalmente a los archivos o correos electronicos de los otros usuarios, o los administradores del sistema pueden tener acceso a la información personal o confidencial de los usuarios sin su conocimiento o su concentimiento.
 
* b)Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta

  * No se puede asegur con certeza que siempre sea posible, en los sistemas compratidos es dificil dar garantia de que los usuarios implementen buenas practicas de seguridad y se usen medidad de seguridad concistente, y cualquier falla en uno de los sistemas de los usuarios puede afectar a todos los otros usuarios que hagan parte del sistema.
  En los sistemas dedicados la medidas de seguridad son mas faciles de implementar y mantener, debido a que solo exite un usuario o grupo de usuarios que buscan acceder al sistema y los riesgos de seguridad son mas faciles de controlar y limitar.


## 2).Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

* Sistemas embebidos:
  * Los sistemas embebidos suelen tener recursos limitados en términos de CPU, memoria y almacenamiento. Por lo tanto, es importante gestionar adecuadamente estos recursos para garantizar que el sistema funcione de manera eficiente. Además, es importante gestionar la energía para garantizar una duración de la batería adecuada en dispositivos portátiles.

* Mainframe:
  * Los mainframes son sistemas de alto rendimiento diseñados para procesar grandes cantidades de datos. Los recursos que deben gestionarse en los mainframes incluyen la CPU, la memoria, el almacenamiento y la red. Además, es importante gestionar adecuadamente la seguridad y el acceso para garantizar que los datos estén protegidos.

* Workstation
  * Las workstations son sistemas de alto rendimiento diseñados para tareas intensivas de procesamiento, como diseño gráfico, edición de vídeo y simulaciones científicas. Los recursos que deben gestionarse en las workstations incluyen la CPU, la memoria, el almacenamiento y la tarjeta gráfica. Además, es importante gestionar adecuadamente la seguridad y el acceso para garantizar que los datos estén protegidos.
  
* Server
  * Los servidores son sistemas diseñados para proporcionar servicios a una red de computadoras. Los recursos que deben gestionarse en los servidores incluyen la CPU, la memoria, el almacenamiento y la red. Además, es importante gestionar adecuadamente la seguridad y el acceso para garantizar que los datos estén protegidos.

* Mobile
  * Los dispositivos móviles, como teléfonos inteligentes y tabletas, tienen recursos limitados en términos de CPU, memoria y almacenamiento. Es importante gestionar adecuadamente estos recursos para garantizar que el sistema funcione de manera eficiente y que la duración de la batería sea adecuada. Además, es importante gestionar adecuadamente la seguridad y el acceso para garantizar que los datos estén protegidos en caso de pérdida o robo del dispositivo.


## 3).Caracterice dos casos de uso para implementar un OS para servidor y PC.

 * Servidores de aplicaciones: Los servidores de aplicaciones son sistemas que ejecutan aplicaciones empresariales críticas, como aplicaciones de gestión de relaciones con clientes (CRM), software de gestión de la cadena de suministro (SCM), software de gestión de recursos empresariales (ERP) y software de gestión de bases de datos. En este caso de uso, se necesita un OS para servidor que proporcione una plataforma estable y segura para ejecutar estas aplicaciones críticas y garantizar la disponibilidad y el rendimiento de la aplicación. El OS debe ser escalable y capaz de manejar una carga de trabajo variable y demandas de memoria, almacenamiento y capacidad de procesamiento. Además, el OS debe proporcionar herramientas de administración y monitoreo para asegurar la integridad de la aplicación y la seguridad de los datos.

 * Estaciones de trabajo para diseño gráfico y edición de video: Las estaciones de trabajo para diseño gráfico y edición de video requieren un OS para PC que sea capaz de manejar tareas de procesamiento intensivas. En este caso de uso, se necesita un OS para PC que proporcione una plataforma estable y capaz de manejar grandes archivos y aplicaciones pesadas. El OS debe ser compatible con herramientas de software específicas para diseño gráfico y edición de video, como Adobe Photoshop y Final Cut Pro, y debe ser capaz de gestionar adecuadamente los recursos de hardware, como la tarjeta gráfica, la CPU y la memoria. Además, el OS debe proporcionar una interfaz fácil de usar y herramientas de productividad para mejorar la eficiencia del usuario.

En resumen, los casos de uso para implementar un OS para servidor y PC pueden variar dependiendo de las necesidades específicas del usuario. Los sistemas operativos para servidores deben proporcionar una plataforma estable y segura para ejecutar aplicaciones empresariales críticas, mientras que los sistemas operativos para PC deben ser capaces de manejar tareas de procesamiento intensivas y proporcionar herramientas de productividad para mejorar la eficiencia del usuario.

## 4).Compare las diferencias entre multiprocesamiento simétrico y asimétrico.

Las principales diferencias entre SMP y AMP son:

 * Acceso a recursos: en un sistema SMP, todos los procesadores tienen acceso igualitario a los recursos del sistema, mientras que en un sistema AMP, los procesadores tienen funciones específicas y diferentes niveles de acceso a los recursos.
 
 * Distribución de carga de trabajo: en un sistema SMP, la carga de trabajo se distribuye de manera uniforme entre los procesadores, mientras que en un sistema AMP, cada procesador tiene una tarea específica.
 
 * Velocidad de reloj y capacidad de memoria: en un sistema SMP, todos los procesadores tienen la misma velocidad de reloj y capacidad de memoria, mientras que en un sistema AMP, los procesadores pueden tener diferentes velocidades de reloj y capacidades de memoria.

En general, el multiprocesamiento simétrico es más común en sistemas de propósito general, como servidores y computadoras de escritorio, mientras que el multiprocesamiento asimétrico se utiliza comúnmente en sistemas embebidos y de tiempo real.

## 5).Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA)

 1. Hardware compatible: Las máquinas del clúster deben ser compatibles en cuanto a hardware para que funcionen juntas. Esto incluye aspectos como la arquitectura de la CPU, la cantidad y tipo de memoria RAM, la capacidad de almacenamiento y la velocidad de red.
 
 2. Sistema operativo y software compatibles: Todas las máquinas del clúster deben estar ejecutando el mismo sistema operativo y tener instalado el software necesario para proporcionar el servicio HA. Esto incluye software de clustering y herramientas para compartir recursos y balancear la carga de trabajo.

 3. Conexión de red redundante: Es importante tener una conexión de red redundante para evitar puntos únicos de falla. Las máquinas del clúster deben estar conectadas a una red de alta velocidad y disponer de una conexión de red secundaria como medida de contingencia.

 4. Recursos compartidos: Los recursos, como el almacenamiento y la memoria, deben estar compartidos entre las máquinas del clúster para garantizar la disponibilidad continua del servicio. Es necesario utilizar herramientas para gestionar y sincronizar el acceso a los recursos compartidos.
 
 5. Monitoreo y gestión del clúster: Es importante contar con herramientas para monitorear el estado del clúster, identificar y resolver problemas, y realizar la gestión de los recursos compartidos. Esto ayuda a garantizar la disponibilidad y confiabilidad del servicio HA.

 6. Plan de recuperación ante desastres: Es necesario contar con un plan de recuperación ante desastres en caso de que falle una máquina o recurso del clúster. Esto incluye la configuración de copias de seguridad y medidas para la recuperación en caso de fallos en el hardware o software del clúster.





## 6).Compare las diferencias entre una excepción y una interrupción.






## 7).El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la   CPU

* ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?


* ¿Como sabe la CPU que las operaciones de memoria se han completado?



## 8).Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?





## 9).Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos

* Sistema distribuido

* Sistema multipocesador

* Sistema de un solo procesador
