## TALLER N°8 DE SISTEMAS OPERACIONALES

### 1. Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

Es importante distinguir entre programas que pasan la mayor parte del tiempo esperando (limitados por I/O) y programas que usan constantemente la CPU (limitados por CPU). Si un planificador asigna un programa limitado por I/O a una CPU, puede que la CPU no se utilice al máximo y se desperdicien recursos. Si asigna un programa limitado por CPU a una CPU que también está ejecutando programas limitados por I/O, puede haber una competencia por los recursos de la CPU, lo que resulta en un rendimiento más bajo. Al distinguir entre estos dos tipos de programas, el planificador puede asignar los recursos del sistema de manera más eficiente para obtener el mejor rendimiento posible.


### 2. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

Cuando hay varios procesos compitiendo por la misma CPU, puede haber un conflicto entre la utilización de la CPU y el tiempo de respuesta. Si los procesos tienen que esperar demasiado tiempo para usar la CPU o para completar sus operaciones de entrada/salida, el tiempo de respuesta del sistema puede verse afectado y el rendimiento puede disminuir. Para evitar estos conflictos, los planificadores de procesos utilizan diferentes técnicas para maximizar tanto la utilización de la CPU como el tiempo de respuesta, como la priorización de procesos, el uso de múltiples CPUs y la programación de operaciones de entrada/salida en segundo plano.

### 3. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

Cuando hay varios procesos compitiendo por la misma CPU, puede haber un conflicto entre la utilización de la CPU y el tiempo de respuesta. Si los procesos tienen que esperar demasiado tiempo para usar la CPU o para completar sus operaciones de entrada/salida, el tiempo de respuesta del sistema puede verse afectado y el rendimiento puede disminuir. Para evitar estos conflictos, los planificadores de procesos utilizan diferentes técnicas para maximizar tanto la utilización de la CPU como el tiempo de respuesta, como la priorización de procesos, el uso de múltiples CPUs y la programación de operaciones de entrada/salida en segundo plano.

### 4.Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O  y la utilización de la CPU?

La utilización de los dispositivos de entrada/salida (E/S) y la utilización de la CPU pueden entrar en conflicto en ciertas configuraciones, lo que puede afectar el rendimiento del sistema. Si un proceso está esperando una operación de E/S para completarse, la CPU puede quedar inactiva y no estar siendo utilizada al máximo de su capacidad. Por otro lado, si un proceso está utilizando constantemente la CPU, los procesos que necesitan realizar operaciones de E/S pueden tener que esperar más tiempo para obtener acceso a la CPU.

Para evitar estos conflictos, los planificadores de procesos utilizan diferentes técnicas para equilibrar la utilización de los dispositivos de E/S y la utilización de la CPU. Por ejemplo, pueden programar las operaciones de E/S en segundo plano para permitir que los procesos realicen E/S mientras otros procesos utilizan la CPU. También pueden utilizar algoritmos de planificación que asignan tiempo de CPU en función del estado de E/S de los procesos. El objetivo es encontrar un equilibrio adecuado para maximizar el rendimiento del sistema.

### 5.Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del  subíndice:

<div>
<p style = "text-align:center">
<img src="https://github.com/jefersson1/SistemasOperacionales/blob/main/Talleres/Taller%20N%C2%B08/Captura%20de%20pantalla%202023-05-14%20182921.png" alt="JuveYell" width="300px">
</p>
</div>

### Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta  prioridad) y RR (cuanto = 1).

El tiempo de llegada se asume que es 0 para todos los procesos.

* FCFS:

| P1  | P2  | P3  | P4  | P5  |
|---|---|---|---|---|
| 0  | 11  | 13  | 14  | 19  |

* SJF:

| P1  | P2  | P3  | P4  | P5  |
|---|---|---|---|---|
| 1  | 2  | 4  | 9  | 19  |

* De prioridad baja = a alta  prioridad:

| P1  | P2  | P3  | P4  | P5  |
|---|---|---|---|---|
| 1  | 6  | 16  | 18  | 19  |

* RR :

| P1  | P2  | P3  | P4  | P5  | P1  | P5  | P1  | P2  | P3  | P5  |
|---|---|---|---|---|---|---|---|---|---|---|
| 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 9  | 10  | 11  |

Para el algoritmo RR, el proceso P1 se ejecuta durante 1 unidad de tiempo y luego se mueve al final de la cola de procesos, lo que permite que los demás procesos se ejecuten en orden hasta que P1 vuelve a la cola después de cada ejecución.

### 6. Cual es el tiempo de ejecución de cada proceso para cada algoritmo?

* FCFS:
 * P1: 10 unidades de tiempo
 * P2: 1 unidad de tiempo
¨* P3: 2 unidades de tiempo
 * P4: 1 unidad de tiempo
 * P5: 5 unidades de tiempo
* SJF:
 * P2: 1 unidad de tiempo
 * P4: 1 unidad de tiempo
 * P3: 2 unidades de tiempo
 * P5: 5 unidades de tiempo
 * P1: 10 unidades de tiempo
* Por prioridades:
 * P2: 1 unidad de tiempo
 * P5: 5 unidades de tiempo
 * P1: 10 unidades de tiempo
 * P3: 2 unidades de tiempo
 * P4: 1 unidad de tiempo
* RR:
 * P1: 3 unidades de tiempo 
 * P2: 2 unidades de tiempo
 * P3: 2 unidades de tiempo
 * P4: 1 unidad de tiempo
 * P5: 3 unidades de tiempo

### 7. Cual es el tiempo de espera de cada proceso para cada algoritmo?

* FCFS:
 * P1: 0 unidades de tiempo
 * P2: 10 unidad de tiempo
¨* P3: 11 unidades de tiempo
 * P4: 13 unidad de tiempo
 * P5: 14 unidades de tiempo
* SJF:
 * P2: 0 unidad de tiempo
 * P4: 2 unidad de tiempo
 * P3: 3 unidades de tiempo
 * P5: 5 unidades de tiempo
 * P1: 11 unidades de tiempo
* Por prioridades:
 * P2: 0 unidad de tiempo
 * P5: 1 unidades de tiempo
 * P1: 2 unidades de tiempo
 * P3: 12 unidades de tiempo
 * P4: 13 unidad de tiempo
* RR:
 * P1: 6 unidades de tiempo 
 * P2: 1 unidades de tiempo
 * P3: 6 unidades de tiempo
 * P4: 8 unidad de tiempo
 * P5: 9 unidades de tiempo

### 8.Que algoritmo puede dar lugar a bloqueos indefinidos?

El algoritmo que puede dar lugar a bloqueos indefinidos es el algoritmo de planificación de procesos conocido como Interbloqueo o Deadlock. Esto ocurre cuando varios procesos quedan bloqueados entre sí, ya que cada uno está esperando que otro proceso libere un recurso que necesita para continuar, formando un ciclo de espera mutua. En esta situación, ninguno de los procesos puede avanzar y el sistema se detiene. Para evitar el interbloqueo, se utilizan técnicas como la asignación segura de recursos y el algoritmo del banquero, que garantizan que los recursos sean asignados de forma segura y evitar el interbloqueo.

### 9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al  proceso del usuario?

Una estrategia que puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario es la priorización de procesos en las colas de nivel superior. En un sistema de colas multinivel, la computadora puede maximizar la cantidad de tiempo de CPU asignada al proceso del usuario priorizando los procesos del usuario en las colas de nivel superior y ajustando dinámicamente la cantidad de tiempo de CPU asignada a cada cola en función de la cantidad de procesos del usuario en esas colas. De esta manera, se le da más tiempo de CPU a los procesos del usuario y se reduce el tiempo de espera para que se ejecuten.
Para implementar esta estrategia, la computadora podría tener en cuenta la prioridad de los procesos y ajustar dinámicamente la cantidad de tiempo de CPU asignada a cada cola. Por ejemplo, si hay una gran cantidad de procesos del usuario en las colas de nivel inferior, la computadora podría aumentar la prioridad de estas colas y asignarles más tiempo de CPU.
