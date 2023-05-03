## TALLER N°6 DE SISTEMAS OPERACIONALES


### 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.

* Cálculos que involucran números pequeños, En algunos casos, el procesamiento de datos que involucran números pequeños puede ser más rápido en un solo hilo que en múltiples hilos. Esto se debe a que el tiempo de sincronización y la comunicación entre los hilos pueden superar el tiempo que se tarda en realizar el cálculo en sí. En este caso, la sobrecarga asociada con la creación y el manejo de hilos puede superar los beneficios potenciales.

* Operaciones de entrada/salida intensivas, En algunas aplicaciones gran parte del tiempo de ejecución se gasta en operaciones de entrada/salida (E/S), como leer o escribir datos en el disco o en una red. En tales situaciones, el uso de múltiples hilos no mejorará el rendimiento, ya que la E/S se realiza en serie. De hecho, el uso de múltiples hilos puede aumentar la complejidad del programa y no proporcionar ningún beneficio real en términos de rendimiento.

### 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

Para cambiar el contexto entre hilos de nivel de usuario, la biblioteca de hilos toma las siguientes acciones:

* Guardar el estado del hilo actual: Antes de cambiar al siguiente hilo en la cola, la biblioteca de hilos debe guardar el estado actual del hilo en ejecución. Esto incluye la información sobre el estado de la CPU, como los registros de la CPU y el puntero de la pila.

* Seleccionar el siguiente hilo: Después de guardar el estado del hilo actual, la biblioteca de hilos selecciona el siguiente hilo que debe ejecutarse. Este proceso de selección puede basarse en un algoritmo de programación apropiado, como el Round Robin o el First-Come-First-Serve, que se utiliza para administrar la cola de hilos.

* Restaurar el estado del siguiente hilo: Después de seleccionar el siguiente hilo, la biblioteca de hilos debe restaurar el estado del hilo seleccionado. Esto incluye la información sobre el estado de la CPU, como los registros de la CPU y el puntero de la pila, que se guardó en el primer paso.

* Cambiar al siguiente hilo: Después de restaurar el estado del siguiente hilo, la biblioteca de hilos cambia la ejecución al nuevo hilo seleccionado. El nuevo hilo ahora se convierte en el hilo en ejecución y comienza a ejecutarse en la CPU.

### 3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

En general, los valores de los registros son componentes del estado de un programa que se mantienen a nivel de hilo. Esto significa que cada hilo en un proceso multihilo tiene su propio conjunto de valores de registro, que no se comparten con otros hilos en el mismo proceso.

Cada hilo en un proceso multihilo se ejecuta en su propio contexto de registro, lo que significa que tiene su propio conjunto de registros de CPU para almacenar variables y mantener el estado de la CPU. Los valores de los registros se utilizan para realizar operaciones aritméticas y lógicas, y para acceder a la memoria del programa. Cada hilo debe tener su propio conjunto de registros para evitar conflictos de datos y garantizar que el estado del programa se mantenga correctamente.

Sin embargo, es posible que los hilos compartan algunos datos a través de la memoria compartida. En este caso, si un hilo escribe en una ubicación de memoria compartida, otros hilos pueden leer el contenido de esa ubicación de memoria. Pero, los valores de registro no se comparten directamente entre los hilos.

### 4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

En un proceso multihilo, los cúmulos de memoria (heap) son comunes y se comparten entre los hilos. El heap es un segmento de memoria dinámica donde se asignan los bloques de memoria durante la ejecución de un programa. Los bloques de memoria se asignan y se liberan dinámicamente durante la ejecución del programa y se comparten entre todos los hilos del proceso.

Cuando un hilo solicita memoria dinámica del heap, la memoria se asigna a través de la función de asignación de memoria como malloc () en C. La memoria se asigna a un bloque de memoria en el heap y se devuelve al hilo que realizó la solicitud. El bloque de memoria asignado puede ser accedido y utilizado por cualquier hilo del proceso, siempre y cuando tenga acceso a la dirección de memoria donde se encuentra el bloque.

Por lo tanto, el heap se comparte entre todos los hilos en un proceso multihilo. Sin embargo, es importante tener en cuenta que el acceso concurrente al heap desde múltiples hilos puede causar problemas de sincronización y conflictos de datos. Es por eso que los programadores deben usar técnicas de sincronización, como los semáforos, los mutex y las barreras, para controlar el acceso concurrente al heap y evitar problemas de concurrencia.

### 5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

En un proceso multihilo, las variables globales se comparten entre todos los hilos del proceso. Las variables globales son variables que se definen fuera de cualquier función y se pueden acceder desde cualquier parte del código del programa. Estas variables se almacenan en el segmento de datos estáticos del programa y se inicializan antes de la ejecución del programa.

Cuando un hilo accede a una variable global, está accediendo a la misma dirección de memoria que cualquier otro hilo que acceda a esa misma variable global. Esto significa que si un hilo modifica el valor de una variable global, el cambio será visible para todos los hilos que accedan a esa misma variable global.

### 6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

En un proceso multihilo, cada hilo tiene su propia memoria de pila (stack) privada que no se comparte con otros hilos. La memoria de pila es una región de memoria utilizada para almacenar las variables locales de una función y para mantener el estado de la CPU durante la ejecución de una función.

Cuando se crea un nuevo hilo, se asigna una nueva pila para ese hilo. Cada hilo tiene su propio conjunto de registros de CPU y su propia pila para mantener su contexto de registro y garantizar que el estado del programa se mantenga correctamente. Esto significa que los datos almacenados en la pila de un hilo no están disponibles para otros hilos en el mismo proceso.

El hecho de que cada hilo tenga su propia memoria de pila es importante para evitar conflictos de datos y garantizar que el estado del programa se mantenga correctamente. Si los hilos compartieran la misma memoria de pila, podrían ocurrir problemas de sincronización y conflictos de datos cuando los hilos intentaran acceder a las mismas variables locales.

### 7.En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

la solución multihilo que utiliza múltiples hilos del kernel puede proporcionar un mejor rendimiento en tareas que son intensivas en CPU y en aplicaciones que tienen múltiples flujos de trabajo independientes que pueden ejecutarse en paralelo, ejemplos:

* Tareas intensivas en CPU: Si una tarea es intensiva en CPU y no implica mucha entrada/salida, como la realización de cálculos matemáticos complejos o la realización de simulaciones, utilizar múltiples hilos de ejecución puede mejorar significativamente el rendimiento. Esto se debe a que cada hilo puede ejecutar su propia porción del trabajo, aprovechando los múltiples núcleos del procesador y mejorando la utilización del CPU.

* Aplicaciones con múltiples flujos de trabajo: Si una aplicación tiene múltiples flujos de trabajo independientes que pueden ejecutarse en paralelo, como la renderización de gráficos en un videojuego o la realización de transacciones en una base de datos, utilizar múltiples hilos de ejecución puede mejorar el rendimiento general de la aplicación. Cada hilo puede manejar un flujo de trabajo diferente y el sistema puede aprovechar los múltiples núcleos del procesador para realizar estas tareas en paralelo.

Sin embargo, en tareas que involucran una gran cantidad de entrada/salida, el rendimiento puede no mejorar mucho, ya que el tiempo de espera de entrada/salida puede limitar el uso de la CPU y reducir el beneficio de la ejecución en paralelo.

### 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?

Sí, una solución multihilo que utiliza múltiples hilos de usuario puede conseguir un mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador. Esto se debe a que en un sistema multiprocesador, hay varios núcleos de procesador que pueden ejecutar hilos de manera simultánea, lo que permite una mayor paralelización de las tareas.

Cuando se utiliza una solución multihilo en un sistema multiprocesador, se pueden asignar diferentes hilos a diferentes núcleos de procesador, lo que permite que los hilos se ejecuten de manera simultánea en diferentes núcleos. Como resultado, el tiempo total para completar una tarea se puede reducir significativamente, lo que lleva a un mejor rendimiento en comparación con un sistema de un solo procesador.

### 9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores.

Cuando el número de hilos de usuario es mayor que el número de procesadores del sistema y el número de hilos del kernel asignados al programa es menor que el número de procesadores, es probable que se produzca una competencia por los recursos del sistema. Esto puede llevar a una disminución en el rendimiento del programa.

Cuando el número de hilos de usuario es mayor que el número de procesadores, algunos de los hilos tendrán que esperar a que se libere un procesador para poder ser ejecutados. En este caso, el sistema operativo debe programar y gestionar la ejecución de los hilos, lo que puede resultar en una sobrecarga adicional.

Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, sólo se puede ejecutar un número limitado de hilos simultáneamente. Los hilos restantes tendrán que esperar a que se libere un procesador para poder ser ejecutados. Como resultado, es posible que algunos hilos se bloqueen y esperen mientras otros hilos están siendo ejecutados, lo que puede ralentizar el rendimiento del programa.
