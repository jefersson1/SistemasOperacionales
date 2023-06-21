## TALLER N°11 DE SISTEMAS OPERACIONALES


### 1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.

Para implementar la paginación bajo demanda, se requiere soporte tanto a nivel de hardware como de software. A continuación, los siguientes puintos son el soporte por hardware necesario:

Unidad de gestión de memoria (MMU): Es necesaria para traducir las direcciones virtuales en direcciones físicas y manejar excepciones cuando se accede a una página ausente en la memoria principal.

Tabla de páginas: Es una estructura de datos utilizada por la MMU para realizar las traducciones de direcciones virtuales a direcciones físicas.

Mecanismos de control de acceso a memoria: Deben existir para definir niveles de protección en las páginas y generar excepciones cuando se accede incorrectamente a una página protegida.

Unidad de gestión de memoria secundaria: Permite cargar y liberar páginas de memoria en una memoria secundaria, como un disco duro.

### 2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?

La característica de "copia durante la escritura" (Copy-On-Write, COW) permite compartir datos entre usuarios o procesos y solo copiarlos cuando se modifican. Esto ahorra memoria y tiempo de copiado. Es ventajoso usarla cuando se desea compartir datos eficientemente, conservar diferentes versiones o realizar copias de seguridad incrementales.

### 3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?

Para implementar la característica de copia durante la escritura (COW), se requiere el siguiente soporte de hardware:

* Unidad de gestión de memoria (MMU) para asignar y gestionar las páginas compartidas.
* Detección de escritura para identificar operaciones de escritura en los datos compartidos.
* Memoria virtual o espacio de direcciones separado para cada copia de los datos.
* Soporte para copias eficientes de páginas, como instrucciones o mecanismos específicos.

El soporte de hardware necesario puede variar según la implementación y el sistema utilizado.


### 4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.

Una situación en la que el algoritmo de sustitución de páginas menos frecuentemente utilizadas (LFU) puede generar menos fallos de página que el algoritmo de sustitución de páginas más recientemente utilizadas (MRU) es cuando hay un conjunto de páginas que son accedidas con alta frecuencia en ráfagas cortas pero luego pasan a ser accedidas con poca o ninguna frecuencia durante períodos prolongados.

Imaginemos un sistema en el que se realizan operaciones intensivas en memoria durante ciertos períodos de tiempo, como la ejecución de una aplicación que realiza cálculos complejos o la visualización de contenido multimedia. Durante estos períodos de actividad intensa, se acceden repetidamente a ciertas páginas de datos. Sin embargo, una vez finalizada esta actividad intensiva, estas páginas dejan de ser accedidas con frecuencia.

En este escenario, el algoritmo LFU puede ser más efectivo que el algoritmo MRU. El LFU registra la frecuencia de acceso a cada página y, cuando se produce un fallo de página, elige reemplazar la página con la frecuencia de acceso más baja. Debido a que las páginas que antes eran accedidas con alta frecuencia ahora se acceden con poca o ninguna frecuencia, es más probable que sean seleccionadas para reemplazo por el algoritmo LFU, evitando así fallos de página innecesarios.

En contraste, el algoritmo MRU se basa en el tiempo más reciente de acceso a las páginas. Aunque estas páginas fueron accedidas repetidamente en ráfagas cortas durante un período de tiempo, después de la inactividad prolongada, el algoritmo MRU aún considerará que estas páginas son "recientes" y menos propensas a ser reemplazadas. Esto podría llevar a mantener en memoria páginas que ya no son necesarias y aumentar la tasa de fallos de página.

Es importante destacar que la elección del algoritmo de sustitución de páginas depende del comportamiento de acceso a las páginas y de las características específicas del sistema. Se deben considerar diversos factores, como el patrón de acceso a las páginas, la cantidad de memoria disponible y los requisitos del sistema, al seleccionar el algoritmo más adecuado.

### 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.

Una situación en la que el algoritmo de sustitución de páginas más frecuentemente utilizadas (Most Frequently Used, MFU) puede generar menos fallos de página que el algoritmo de sustitución de páginas menos recientemente utilizadas (Least Recently Used, LRU) es cuando existe un conjunto de páginas críticas que se acceden con alta frecuencia y son esenciales para el rendimiento del sistema.

Imaginemos un escenario en el que un sistema tiene una cantidad limitada de memoria y ciertas páginas de datos son accedidas repetidamente de manera constante y crítica. Estas páginas pueden contener datos clave, algoritmos importantes o componentes de software fundamentales. Es crucial mantener estas páginas en memoria para evitar fallos de página y garantizar un rendimiento óptimo.

En esta situación, el algoritmo MFU puede ser más efectivo que el algoritmo LRU. El MFU realiza un seguimiento de cuántas veces se ha accedido a cada página y, cuando ocurre un fallo de página, reemplaza la página que ha sido accedida con mayor frecuencia. Esto garantiza que las páginas críticas y altamente utilizadas permanezcan en memoria, ya que tienen una frecuencia de acceso alta.

Por otro lado, el algoritmo LRU reemplaza la página que ha sido accedida menos recientemente, independientemente de la frecuencia de acceso. Si bien esto puede funcionar bien en escenarios donde el comportamiento de acceso es variado y equilibrado, puede llevar a la eliminación de páginas críticas en situaciones donde se acceden con alta frecuencia.

### 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:

*  Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de 
marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?

Para generar espacio libre para la nueva página solicitada se deben seguir los siguientes pasos:

Identificación de una página para reemplazo: El conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas (LRU), lo que implica que se selecciona la página que ha sido utilizada menos recientemente para ser reemplazada.

Retirar la página seleccionada: La página que ha sido seleccionada según la política LRU se retira del conjunto compartido de marcos libres, liberando así un marco que puede ser utilizado para almacenar la nueva página solicitada.

Asignación del marco libre a la nueva página: Una vez que se ha generado espacio libre al retirar una página del conjunto compartido de marcos libres, se asigna el marco libre a la nueva página solicitada. Esto implica cargar el contenido de la página solicitada en el marco libre recién liberado.

* Si se produce un fallo de página y la página se encuentra en el conjunto compartido de 
marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto 
compartido de marcos libres para hacer sitio para la página solicitada?

Pasos para activar la página residente y gestionar el conjunto compartido de marcos libres para hacer espacio para la página solicitada:

* Activación de la página residente: La página residente que se encuentra en el conjunto compartido de marcos libres debe ser activada para que se cargue en un marco disponible en memoria principal. Esto implica trasladar la página residente desde el conjunto compartido al marco asignado.

* Liberación de un marco para la página solicitada: Una vez que la página residente ha sido activada y cargada en memoria principal, se libera un marco en el conjunto compartido de marcos libres para hacer espacio para la página solicitada. Esto se logra seleccionando la página menos recientemente utilizada en el conjunto compartido según la política de sustitución menos recientemente utilizadas (LRU) y retirándola del conjunto.

* Asignación del marco libre a la página solicitada: Después de liberar el marco en el conjunto compartido, se asigna ese marco libre a la nueva página solicitada. El contenido de la página solicitada se carga en el marco liberado, permitiendo que la página esté disponible en memoria principal.

* Actualización del conjunto compartido de marcos libres: Tras la asignación del marco libre a la página solicitada, es importante actualizar el conjunto compartido de marcos libres para mantenerlo correctamente organizado y reflejar los cambios en el uso de las páginas. Esto puede implicar actualizar el estado de las páginas (marcarlas como activas o inactivas) y reorganizar el conjunto según la política LRU.


### 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:

* Uso de CPU 20%


* Paginación de disco 97,7%


* Otros dispositivos de I/O 5%

Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las 
tasas de utilización de la CPU. De razones para su respuesta.


* Instalar una CPU más rápida.

* Instalar un disco de paginación de mayor tamaño.

* Incrementar el grado de multiprogramación.

* Instalar mas memoria principal.

* Instalar un disco duro mas rápidos.
