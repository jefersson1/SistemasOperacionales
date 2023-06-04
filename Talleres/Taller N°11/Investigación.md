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

 * 100 KB
 * 500 KB
 * 200 KB
 * 300 KB
 * 600 KB

Procesos a situar:

 * Proceso A: 212 KB
 * Proceso B: 417 KB
 * Proceso C: 112 KB
 * Proceso D: 426 KB

Algoritmo de primer ajuste:
En el primer ajuste, se busca la primera partición de memoria lo suficientemente grande para alojar cada proceso.

 * Proceso A (212 KB): Se situaría en la partición 2 (500 KB) usando 212 KB de esa partición.
 * Proceso B (417 KB): Se situaría en la partición 5 (600 KB) usando 417 KB de esa partición.
 * Proceso C (112 KB): Se situaría en la partición 1 (100 KB) usando 112 KB de esa partición.
 * Proceso D (426 KB): No hay ninguna partición lo suficientemente grande para alojar este proceso, por lo que no se puede situar.

Algoritmo de mejor ajuste:
En el mejor ajuste, se busca la partición más pequeña que sea lo suficientemente grande para alojar cada proceso.

 * Proceso A (212 KB): Se situaría en la partición 3 (200 KB) usando 212 KB de esa partición.
 * Proceso B (417 KB): Se situaría en la partición 5 (600 KB) usando 417 KB de esa partición.
 * Proceso C (112 KB): Se situaría en la partición 1 (100 KB) usando 112 KB de esa partición.
 * Proceso D (426 KB): Se situaría en la partición 5 (600 KB) usando 426 KB de esa partición.

Algoritmo de peor ajuste:
En el peor ajuste, se busca la partición más grande que sea lo suficientemente grande para alojar cada proceso.

 * Proceso A (212 KB): Se situaría en la partición 5 (600 KB) usando 212 KB de esa partición.
 * Proceso B (417 KB): Se situaría en la partición 5 (600 KB) usando 417 KB de esa partición.
 * Proceso C (112 KB): Se situaría en la partición 5 (600 KB) usando 112 KB de esa partición.
 * Proceso D (426 KB): Se situaría en la partición 5 (600 KB) usando 426 KB de esa partición.

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
   * Asignación continua: Tiende a sufrir de fragmentación externa, ya que los bloques de memoria se asignan de manera continua y pueden quedar espacios vacíos      * entre ellos. Esto puede llevar a una asignación ineficiente de memoria y desperdicio de espacio.
   * Segmentación pura: No sufre de fragmentación externa, ya que los segmentos de memoria se asignan de forma independiente y no hay necesidad de encontrar bloques continuos.
   * Paginación pura: No sufre de fragmentación externa, ya que las páginas de memoria se asignan de forma independiente y no es necesario encontrar bloques continuos.

2. Fragmentación interna.

   * Asignación continua: Puede sufrir de fragmentación interna, especialmente cuando los bloques de memoria asignados son más grandes que el tamaño requerido por el proceso. Esto puede conducir a un desperdicio de memoria debido al espacio no utilizado dentro de los bloques asignados.
   * Segmentación pura: No sufre de fragmentación interna, ya que los segmentos de memoria se asignan de forma independiente y solo ocupan el tamaño necesario para el proceso.
   * Paginación pura: Puede sufrir de fragmentación interna, ya que los procesos se dividen en páginas de tamaño fijo y puede haber espacio no utilizado dentro de una página asignada al proceso.

3. Capacidad de compartir código.
   * Asignación continua: Es difícil compartir código entre diferentes procesos debido a la asignación continua de memoria, ya que los procesos tendrían que compartir bloques de memoria específicos.
   * Segmentación pura: Permite compartir código fácilmente entre procesos, ya que los segmentos de código pueden ser compartidos entre diferentes procesos, lo que ahorra memoria y permite una mayor eficiencia en la ejecución de programas.
   * Paginación pura: También permite compartir código entre procesos, ya que las páginas de código pueden ser compartidas. Sin embargo, la compartición de código puede requerir técnicas adicionales, como la protección de páginas compartidas contra escritura por parte de diferentes procesos.

### 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 
1. ¿Por qué?

La razón por la cual un proceso no puede acceder a una zona de memoria que no le pertenezca es mantener la seguridad y la integridad del sistema. Si se permitiera el acceso a zonas de memoria de otros procesos, esto podría resultar en violaciones de privacidad, corrupción de datos y posibles fallas del sistema. Cada proceso está aislado en su propio espacio de direcciones virtuales, lo que proporciona protección y evita interferencias entre procesos.

2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?

El sistema operativo puede proporcionar mecanismos controlados para permitir el acceso a zonas de memoria específicas. Esto se puede lograr mediante técnicas como permisos de acceso, segmentos de memoria compartidos o llamadas al sistema especiales que permitan la comunicación entre procesos.

3. ¿Por qué debería o por qué no debería?

La decisión de permitir o no el acceso a otras zonas de memoria depende de los requisitos y políticas de seguridad del sistema operativo y las aplicaciones en ejecución. Permitir el acceso a otras zonas de memoria puede ser útil para ciertos casos de uso, como la comunicación y el intercambio de datos eficiente entre procesos. Sin embargo, también puede plantear riesgos de seguridad y puede ser necesario implementar mecanismos de control y protección adicionales para garantizar que el acceso sea seguro y confiable.

### 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de  memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

| Paginación  | Segmentación  |
|---|---|
| En la paginación, la memoria se divide en páginas de tamaño fijo tanto en el espacio de direcciones virtuales como en el espacio de direcciones físicas.  | En la segmentación, la memoria se divide en segmentos lógicos de diferentes tamaños, que representan diferentes partes funcionales de un programa.  |
| Se utiliza una tabla de páginas para realizar la traducción de direcciones virtuales a direcciones físicas.  | Se utiliza una tabla de segmentos para realizar la traducción de direcciones virtuales a direcciones físicas.  |
| La tabla de páginas mantiene un registro de las correspondencias entre las páginas virtuales y las páginas físicas, y se necesita un registro de página por cada página virtual en uso.  | La tabla de segmentos mantiene un registro de las correspondencias entre los segmentos lógicos y los segmentos físicos, y se necesita un registro de segmento por cada segmento lógico en uso en el sistema.  |
| Por lo tanto, la cantidad de memoria requerida por la tabla de páginas depende del número total de páginas virtuales en uso en el sistema.  | La cantidad de memoria requerida por la tabla de segmentos depende del número total de segmentos lógicos en uso en el sistema.  |
| La tabla de páginas se almacena en la memoria principal y ocupa un espacio relativamente pequeño en comparación con el tamaño total de la memoria.  | La tabla de segmentos también se almacena en la memoria principal y ocupa un espacio relativamente pequeño en comparación con el tamaño total de la memoria.  |

### 9. Considere la siguiente tabla de segmento:

¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?
1. 0. 430
2. 1. 10
3. 2. 500
4. 3. 400
5. 4. 112

* Dirección lógica: 0.430

Segmento: 0
Desplazamiento: 430
Dirección física = Base del segmento 0 + Desplazamiento = 219 + 430 = 649

* Dirección lógica: 1.10

Segmento: 1
Desplazamiento: 10
Dirección física = Base del segmento 1 + Desplazamiento = 2300 + 10 = 2310

* Dirección lógica: 2.500

Segmento: 2
Desplazamiento: 500
Dirección física = Base del segmento 2 + Desplazamiento = 90 + 500 = 590

* Dirección lógica: 3.400

Segmento: 3
Desplazamiento: 400
Dirección física = Base del segmento 3 + Desplazamiento = 1327 + 400 = 1727

* Dirección lógica: 4.112

Segmento: 4
Desplazamiento: 112
Dirección física = Base del segmento 4 + Desplazamiento = 1952 + 112 = 2064

Entonces, las direcciones físicas correspondientes son:

Dirección física para 0.430: 649
Dirección física para 1.10: 2310
Dirección física para 2.500: 590
Dirección física para 3.400: 1727
Dirección física para 4.112: 2064


