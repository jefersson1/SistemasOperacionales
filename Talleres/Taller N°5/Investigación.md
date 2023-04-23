## TALLER N°5 DE SISTEMAS OPERACIONALES


### 1.Compare las diferencias entre la planeación a corto plazo y largo plazo

La planeación a corto plazo y largo plazo son dos tipos de planificación que las empresas utilizan para lograr sus objetivos y metas. Las diferencias clave entre estas dos formas de planificación son las siguientes:

* La principal diferencia entre la planificación a corto y largo plazo es el horizonte temporal en el que se enfocan. La planificación a corto plazo generalmente cubre un período de tiempo de uno a dos años, mientras que la planificación a largo plazo se extiende más allá de ese período, y puede ser de cinco años, diez años o incluso más.

* La planificación a corto plazo tiende a ser más detallada que la planificación a largo plazo. Esto se debe a que los detalles específicos de la implementación y la ejecución son más relevantes para la planeación a corto plazo. Por otro lado, la planificación a largo plazo se enfoca en la visión general, las metas y los objetivos generales.

* La planificación a corto plazo tiende a ser más flexible y adaptable que la planificación a largo plazo. Esto se debe a que las circunstancias y las necesidades de la empresa pueden cambiar rápidamente, y la planificación a corto plazo permite a la empresa adaptarse y cambiar de dirección en consecuencia. La planificación a largo plazo es menos flexible y puede ser más difícil de cambiar en respuesta a las condiciones cambiantes.

* La planificación a largo plazo depende en gran medida de las predicciones y las proyecciones, ya que se basa en el supuesto de que las condiciones actuales seguirán siendo las mismas en el futuro. La planificación a corto plazo, por otro lado, se basa en las condiciones actuales y en los datos del pasado inmediato, y no depende tanto de las predicciones a largo plazo.

* La planificación a largo plazo tiene un alcance más amplio que la planificación a corto plazo. La planificación a largo plazo se enfoca en la dirección general y en el futuro a largo plazo de la empresa, mientras que la planificación a corto plazo se enfoca en objetivos y metas más inmediatos y específicos.

### 2.Caracterice dos procesos que se puedan considerar a mediano plazo.

##### Desarrollo de nuevos productos

El desarrollo de nuevos productos es un proceso que implica el diseño, la creación y el lanzamiento de nuevos productos o servicios en el mercado. Este proceso puede tener un impacto significativo en la estrategia general de la empresa y puede requerir una inversión significativa de tiempo y recursos. Los pasos clave del desarrollo de nuevos productos incluyen la investigación de mercado, el diseño del producto, la creación de prototipos, las pruebas y la implementación. Este proceso a mediano plazo implica la coordinación de varios departamentos, como el departamento de investigación y desarrollo, el departamento de marketing y el departamento de producción.

##### Expansión geográfica 

La expansión geográfica es un proceso que implica la expansión de la presencia de una empresa en nuevas regiones geográficas. Esto puede incluir la apertura de nuevas sucursales, la adquisición de empresas existentes en otras regiones o la creación de nuevas alianzas estratégicas con empresas locales. La expansión geográfica a mediano plazo puede requerir una inversión significativa de tiempo y recursos y puede tener un impacto significativo en la estrategia general de la empresa. Algunos de los factores que deben considerarse en la expansión geográfica incluyen la investigación del mercado local, la adaptación de productos y servicios para el mercado local, la evaluación de la competencia y la identificación de socios potenciales. Este proceso a mediano plazo implica la coordinación de varios departamentos, como el departamento de finanzas, el departamento de recursos humanos y el departamento de operaciones.

### 3.Describa las acciones que toma el kernel para el cambio de contexto entre procesos.

El cambio de contexto es un proceso en el que el sistema operativo cambia la ejecución de un proceso por la ejecución de otro proceso en una CPU. El kernel es el núcleo del sistema operativo que se encarga de realizar este cambio de contexto. Acciones que toma el kernel para realizar el cambio de contexto entre procesos:

* El kernel primero guarda el contexto del proceso actual que se está ejecutando en la CPU. El contexto del proceso incluye el estado actual de la CPU, los registros del procesador, los punteros de pila y otros valores relevantes.

* Después de guardar el contexto del proceso actual, el kernel selecciona el próximo proceso que se ejecutará en la CPU. El kernel utiliza un algoritmo de planificación de procesos para determinar qué proceso se seleccionará. Este algoritmo puede ser basado en prioridades, tiempos de espera, rotación de turnos o cualquier otro criterio que el sistema operativo haya configurado.

* Una vez que se ha seleccionado el próximo proceso, el kernel restaura el contexto del nuevo proceso en la CPU. Esto incluye cargar el estado del procesador, los registros, los punteros de pila y otros valores relevantes del nuevo proceso en la CPU.

* Después de que se ha restaurado el contexto del nuevo proceso en la CPU, el kernel cambia la ejecución de la CPU al nuevo proceso. El nuevo proceso ahora comienza a ejecutarse en la CPU.

### 4.Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.

 Comunicación síncrona:
 
| Ventajas  | Desventajas  |
|---|---|
| Es más fácil de implementar y depurar que la comunicación asíncrona  | Puede conducir a problemas de latencia y rendimiento si el proceso receptor tarda mucho en responder o no responde en absoluto  |
| Los errores de comunicación son más fáciles de identificar y corregir, ya que la comunicación se produce en un orden secuencial y predecible  | Puede bloquear el proceso emisor si el proceso receptor no está disponible o está ocupado  |
| Es útil para situaciones en las que se requiere una respuesta inmediata del proceso receptor.  |   |
 
 Comunicación asíncrona:
 
| Ventajas  | Desventajas  |
|---|---|
| Permite un mayor paralelismo y concurrencia, ya que el proceso emisor no tiene que esperar una respuesta del proceso receptor antes de continuar con otras tareas  |   |
| Es útil para situaciones en las que no se requiere una respuesta inmediata del proceso receptor  | Es más difícil de implementar y depurar que la comunicación síncrona, ya que los mensajes pueden ser recibidos en cualquier orden y en cualquier momento  | Los errores de comunicación pueden ser más difíciles de identificar y corregir, ya que los mensajes pueden ser recibidos en cualquier momento y en cualquier orden |
| Es menos propenso a problemas de latencia y rendimiento que la comunicación síncrona, ya que el proceso emisor puede continuar su ejecución sin esperar una respuesta del proceso receptor  |   |

### 5.Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.

### 6.Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable.

### 7.Describa los estados de un proceso

### 8.Que datos se encuentran en un PCB.

### 9.Describa un modelo de comunicación Cliente-Servidor.
