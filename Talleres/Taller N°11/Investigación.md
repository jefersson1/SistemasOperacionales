## TALLER N°10 DE SISTEMAS OPERACIONALES


### 1.  Explique la diferencia entre los conceptos de fragmentación interna y externa.

La fragmentación interna se produce cuando hay espacio desperdiciado dentro de un bloque de memoria asignado a un proceso. Esto ocurre cuando el tamaño del bloque es mayor que el tamaño real necesario para almacenar los datos del proceso. La fragmentación interna puede surgir en asignaciones estáticas o dinámicas y puede reducir la eficiencia del sistema.

Por otro lado, la fragmentación externa se refiere a la situación en la que hay suficiente memoria total disponible en el sistema, pero está fragmentada en bloques no contiguos. Esto dificulta la asignación de memoria contigua para satisfacer las demandas de memoria de los procesos. La fragmentación externa puede ocurrir en asignaciones estáticas o dinámicas y puede afectar el rendimiento del sistema.

Dicho de otra forma, la fragmentación interna implica espacio desperdiciado dentro de un bloque asignado a un proceso, mientras que la fragmentación externa implica la falta de bloques de memoria contiguos, a pesar de que hay suficiente memoria total disponible. Ambos conceptos pueden tener un impacto negativo en la eficiencia y el rendimiento del sistema.

### 2. ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

el editor de ensamblaje no cambia directamente el acoplamiento de las instrucciones y los datos a direcciones de memoria. Este acoplamiento está determinado por el lenguaje de programación, la arquitectura del sistema y cómo se escriben y organizan las instrucciones y los datos en el código ensamblador.

El editor de ensamblaje proporciona una interfaz para facilitar la escritura y edición del código ensamblador, pero no afecta directamente el acoplamiento de las instrucciones y los datos a direcciones de memoria. Esto está determinado por cómo se escriben las instrucciones y los datos en el código fuente y cómo se ensamblan y ejecutan posteriormente en la arquitectura del procesador.

Es importante tener en cuenta que el ensamblador utiliza direcciones de memoria y registros del procesador para acceder a instrucciones y datos. La forma en que se utilizan estas direcciones y registros en el código ensamblador puede influir en el acoplamiento de las instrucciones y los datos a direcciones de memoria.

### 3.  ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento  de memoria de éste?

El compilador debe pasar al editor de ensamblaje la tabla de símbolos, que contiene información sobre los símbolos definidos y utilizados en el código fuente. Además, debe proporcionar información sobre las direcciones y desplazamientos utilizados por las variables y las instrucciones. También debe comunicar las convenciones de llamada utilizadas y, en algunos casos, incluir directivas de ensamblaje para controlar el comportamiento del editor. Toda esta información es fundamental para facilitar el acoplamiento de memoria en el editor de ensamblaje.

### 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?

Tamaño de las particiones de memoria:

100 KB
500 KB
200 KB
300 KB
600 KB
Procesos a situar:

Proceso A: 212 KB
Proceso B: 417 KB
Proceso C: 112 KB
Proceso D: 426 KB

Algoritmo de primer ajuste:
En el primer ajuste, se busca la primera partición de memoria lo suficientemente grande para alojar cada proceso.

Proceso A (212 KB): Se situaría en la partición 2 (500 KB) usando 212 KB de esa partición.
Proceso B (417 KB): Se situaría en la partición 5 (600 KB) usando 417 KB de esa partición.
Proceso C (112 KB): Se situaría en la partición 1 (100 KB) usando 112 KB de esa partición.
Proceso D (426 KB): No hay ninguna partición lo suficientemente grande para alojar este proceso, por lo que no se puede situar.

Algoritmo de mejor ajuste:
En el mejor ajuste, se busca la partición más pequeña que sea lo suficientemente grande para alojar cada proceso.

Proceso A (212 KB): Se situaría en la partición 3 (200 KB) usando 212 KB de esa partición.
Proceso B (417 KB): Se situaría en la partición 5 (600 KB) usando 417 KB de esa partición.
Proceso C (112 KB): Se situaría en la partición 1 (100 KB) usando 112 KB de esa partición.
Proceso D (426 KB): Se situaría en la partición 5 (600 KB) usando 426 KB de esa partición.

Algoritmo de peor ajuste:
En el peor ajuste, se busca la partición más grande que sea lo suficientemente grande para alojar cada proceso.

Proceso A (212 KB): Se situaría en la partición 5 (600 KB) usando 212 KB de esa partición.
Proceso B (417 KB): Se situaría en la partición 5 (600 KB) usando 417 KB de esa partición.
Proceso C (112 KB): Se situaría en la partición 5 (600 KB) usando 112 KB de esa partición.
Proceso D (426 KB): Se situaría en la partición 5 (600 KB) usando 426 KB de esa partición.

El algoritmo de peor ajuste hace el uso más eficiente de la memoria en este caso, ya que logra situar todos los procesos utilizando la partición más grande disponible. Sin embargo, es importante tener en cuenta que el mejor ajuste puede ser más eficiente en general, ya que tiende a reducir la fragmentación de la memoria al encontrar la partición más cercana en tamaño al proceso. El primer ajuste puede generar más fragmentación y desperdiciar más espacio en la memoria.


### 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?

Para soportar la asignación dinámica de memoria en los esquemas mencionados, se requieren los siguientes elementos:

1. Asignación contigua de memoria:
   * Un administrador de memoria que sea capaz de asignar y liberar bloques de memoria de manera dinámica durante la ejecución.
   * Algoritmos de asignación de memoria, como el algoritmo de mejor ajuste o peor ajuste, para encontrar bloques de memoria disponibles que satisfagan las solicitudes de asignación.
   * Un mecanismo de gestión de fragmentación, como la compactación de memoria o el uso de técnicas de reubicación para reducir la fragmentación interna y externa.
   * Un sistema de protección de memoria para evitar que un proceso acceda a la memoria asignada a otro proceso.
   * Un esquema de administración de espacio de direcciones, como el uso de punteros y desplazamientos, para permitir que los programas accedan a su espacio de memoria asignado.
   
2. Segmentación pura:
   * Un administrador de memoria que sea capaz de asignar y liberar segmentos de memoria de manera dinámica durante la ejecución.
   * Un sistema de protección de memoria para evitar que un proceso acceda a los segmentos asignados a otros procesos.
   * Una tabla de segmentos que mapee los segmentos lógicos de los procesos a las direcciones físicas correspondientes en la memoria.
   * Un esquema de administración de espacio de direcciones que permita a los programas acceder a los segmentos asignados en función de sus direcciones lógicas.

3. Paginación pura:
   * Un administrador de memoria que sea capaz de asignar y liberar páginas de memoria de manera dinámica durante la ejecución.
   * Un sistema de protección de memoria para evitar que un proceso acceda a las páginas asignadas a otros procesos.
   * Una tabla de páginas que mapee las páginas virtuales de los procesos a las páginas físicas correspondientes en la memoria.
   * Un mecanismo de traducción de direcciones virtuales a direcciones físicas utilizando la tabla de páginas para permitir que los programas accedan a su memoria asignada.

### 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:
1. Fragmentación externa.
2. Fragmentación interna.
3. Capacidad de compartir código.


### 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 
1. ¿Por qué? 
2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?
3. ¿Por qué debería o por qué no debería?


### 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de  memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.


### 9. Considere la siguiente tabla de segmento:

¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?
1. 0. 430
2. 1. 10
3. 2. 500
4. 3. 400
5. 4. 112


