### Taller N°9 de sistemas operacionales


#### 1. Cual es significado del termino espera activa?

El término espera activa se refiere a una técnica de programación en la cual un proceso o hilo de ejecución verifica constantemente el estado de un evento o condición que está esperando, en lugar de quedarse inactivo sin hacer nada. En lugar de bloquearse y no realizar ninguna acción, el proceso realiza verificaciones periódicas para determinar si el evento deseado ha ocurrido. Esta técnica se utiliza cuando el tiempo de espera esperado es corto y bloquear la ejecución sería ineficiente. Sin embargo, la espera activa puede consumir recursos innecesarios y existen otras técnicas más eficientes disponibles, como la sincronización basada en señales o interrupciones.

#### 2. De que manera se puede evitar la espera activa?

Para evitar la espera activa en sistemas operativos, se pueden utilizar las siguientes técnicas:

* Sincronización basada en señales: En lugar de verificar constantemente el estado de un evento, los procesos esperan una señal o notificación específica. Esto permite que se bloqueen de manera eficiente hasta que se produzca el evento, evitando el consumo innecesario de recursos.

* Sincronización basada en esperas: Los procesos utilizan estructuras de datos especiales, como semáforos o variables de condición, para esperar pasivamente hasta que se cumpla la condición deseada. Esto evita la necesidad de verificaciones continuas y permite una suspensión y reanudación eficientes de los procesos.

* Uso de temporizadores: En lugar de esperar activamente, los procesos pueden programar una interrupción o una verificación periódica utilizando temporizadores. Si el evento aún no ha ocurrido, el proceso puede realizar acciones alternativas o repetir el proceso de espera.

Estas técnicas permiten evitar la espera activa y mejorar la eficiencia y el rendimiento de los sistemas operativos al reducir el consumo innecesario de recursos.

#### 3.  Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.

Los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador porque consumen recursos ineficientemente al ocupar el único núcleo de procesador disponible de manera constante, lo que afecta negativamente al rendimiento general del sistema.

En cambio, en sistemas multiprocesador, donde hay varios núcleos de procesador disponibles, los bloqueos mediante bucle sin fin se utilizan con más frecuencia, ya que el impacto en el rendimiento es menor. Esto se debe a que otros núcleos pueden seguir ejecutando tareas mientras el proceso en espera activa verifica el estado. Sin embargo, es preferible utilizar técnicas más eficientes de sincronización, como señales o esperas condicionales, que evitan el consumo innecesario de recursos.

#### 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.

Las interrupciones no son apropiadas para implementar primitivas de sincronización en sistemas multiprocesador debido a los problemas de coherencia de caché y sincronización que pueden surgir. En sistemas con múltiples procesadores, las interrupciones pueden afectar de manera desigual a los distintos procesadores, lo que puede llevar a errores de sincronización y comportamientos impredecibles en el sistema. En cambio, se utilizan técnicas de sincronización más adecuadas, como señales, esperas condicionales o barreras de sincronización, que garantizan un control más preciso y confiable sobre el acceso y la sincronización de los procesadores en sistemas multiprocesador.

#### 5.  Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.

Se utiliza una variable compartida llamada "lock" que inicialmente está en estado desbloqueado. Cuando un proceso quiere acceder al recurso compartido, intenta adquirir el "lock" usando swap(). Si el "lock" está desbloqueado (por ejemplo, su valor es 0), el proceso lo cambia a un estado bloqueado (por ejemplo, 1) y obtiene acceso exclusivo al recurso. Si el "lock" está bloqueado, el proceso espera un tiempo limitado antes de intentar nuevamente. Cuando el proceso ha terminado, libera el "lock" estableciendo su valor nuevamente en 0. Esto permite que otro proceso adquiera el "lock" y acceda al recurso compartido.

#### 6.  Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.

Un servidor puede utilizar semáforos para limitar el número de conexiones concurrentes, Para limitar el número de conexiones abiertas, el servidor puede seguir los siguientes pasos utilizando semáforos:

* El servidor crea un semáforo con un contador inicializado al número máximo de conexiones permitidas.

* Cuando un cliente intenta establecer una conexión, el servidor intenta adquirir el semáforo. Si el contador es mayor a cero, se decrementa y se permite la conexión. Si el contador es cero, significa que se alcanzó el límite de conexiones y el servidor bloquea al cliente.

* Cuando un cliente finaliza una conexión, el servidor incrementa el contador del semáforo.

Este enfoque garantiza que el servidor solo acepte un número limitado de conexiones simultáneas, controlando el acceso a los recursos del sistema. Los semáforos permiten que el servidor restrinja el número de conexiones concurrentes y evita que se exceda el límite establecido.


#### 7.  Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.

Los monitores y los semáforos son equivalentes en términos de su capacidad para implementar los mismos tipos de problemas de sincronización. Ambos mecanismos permiten controlar el acceso a los recursos compartidos y garantizar la sincronización entre los procesos. Aunque tienen enfoques y características diferentes, se pueden utilizar para resolver una amplia gama de problemas de sincronización en programación concurrente.

Los monitores son estructuras de datos que encapsulan variables y procedimientos relacionados en una unidad coherente. Solo un proceso puede acceder al monitor a la vez, lo que garantiza la exclusión mutua y la sincronización. Los monitores proporcionan automáticamente bloqueo y desbloqueo de acceso a los recursos compartidos dentro de ellos, y también ofrecen variables de condición que permiten a los procesos esperar y notificar eventos específicos.

Por otro lado, los semáforos son contadores utilizados para controlar el acceso a los recursos. Pueden ser utilizados para permitir o bloquear el acceso a una sección crítica del código. Los semáforos se utilizan para implementar soluciones a problemas de sincronización como la exclusión mutua, la sincronización de procesos y la resolución de problemas de productor-consumidor.

En resumen, aunque los monitores y los semáforos tienen enfoques diferentes, son equivalentes en términos de su capacidad para implementar los mismos tipos de problemas de sincronización. Ambos mecanismos proporcionan las herramientas necesarias para controlar el acceso a los recursos compartidos y garantizar la sincronización adecuada entre los procesos.

#### 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.

La exclusión mutua estricta en un monitor de búfer limitado hace que sea adecuado para porciones pequeñas porque garantiza que solo un proceso pueda acceder al búfer a la vez. Esto evita bloqueos prolongados y permite que cada proceso tome el control del monitor solo por el tiempo necesario para realizar su operación en el búfer.

#### 9. Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en sistemas multiprocesador debido a la presencia de concurrencia y ejecución simultánea de múltiples procesos. En sistemas monoprocesador, donde no hay ejecución simultánea, no es necesario utilizar este tipo de bloqueos y se prefieren mecanismos más eficientes para evitar condiciones de carrera y gestionar la sincronización.

