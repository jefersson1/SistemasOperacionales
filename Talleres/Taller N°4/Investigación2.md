## Taller N°4 de sistemas operacionales

### 1. Las funciones compartidas por el OS pueden dividirse en dos categorias, describalas.

|Funciones del kernel |Funciones de espacio de usuario |
|---|---|
| Estas funciones son las más fundamentales y esenciales para el sistema operativo. Están ubicadas en el núcleo o kernel del sistema operativo y proporcionan servicios de bajo nivel, como la gestión de memoria, la planificación de procesos, el manejo de interrupciones y la gestión de dispositivos de entrada y salida. Estas funciones son críticas para la operación del sistema operativo y se ejecutan en modo privilegiado, lo que significa que solo el kernel tiene acceso directo a ellas.  | Estas funciones se ejecutan fuera del kernel en el espacio de usuario del sistema operativo y proporcionan servicios de nivel superior. Ejemplos de estas funciones incluyen bibliotecas de funciones compartidas, controladores de dispositivo de usuario, servicios de red y herramientas de administración del sistema. A diferencia de las funciones del kernel, las funciones de espacio de usuario se ejecutan en modo no privilegiado, lo que significa que cualquier proceso de usuario puede acceder a ellas, aunque con ciertas restricciones de seguridad.  |


### 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.

 2.1 Interfaz gráfica de usuario (GUI): La mayoría de los sistemas operativos modernos proporcionan una GUI, que es una interfaz de usuario visual que utiliza iconos, menús y otros elementos gráficos para hacer que el uso del sistema sea más fácil e intuitivo. La GUI también permite a los usuarios interactuar con el sistema operativo y con las aplicaciones de una manera más fácil e intuitiva.
 
 2.2 Administrador de archivos: Un administrador de archivos es una herramienta que permite a los usuarios navegar y administrar los archivos y carpetas en su sistema. Esto incluye la creación, eliminación, copia y movimiento de archivos y carpetas, así como la visualización y edición de su contenido.
 
 2.3 Herramientas de accesibilidad: Los sistemas operativos modernos también incluyen una variedad de herramientas de accesibilidad para ayudar a las personas con discapacidades visuales, auditivas o motoras. Estas herramientas incluyen, entre otras, lectores de pantalla, teclados en pantalla, opciones de texto a voz y herramientas de reconocimiento de voz.
 
 2.4 Gestión de energía: Los sistemas operativos modernos también incluyen funciones de gestión de energía, que ayudan a los usuarios a administrar la energía de sus dispositivos. Esto incluye opciones para suspender o hibernar el sistema cuando no está en uso, así como la configuración de opciones de ahorro de energía para prolongar la duración de la batería.
 
 2.5 Centro de notificaciones: Los sistemas operativos modernos también incluyen un centro de notificaciones que proporciona una manera fácil para que los usuarios vean y respondan a las notificaciones de sus aplicaciones. Esto incluye notificaciones para mensajes de texto, correos electrónicos, actualizaciones de aplicaciones, recordatorios y más.

### 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos   consumidos por un programa.

Para generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa, se pueden seguir los siguientes pasos:

* Recopilar datos: Es necesario recopilar datos sobre el programa en cuestión, lo que implica registrar la cantidad de tiempo y recursos utilizados por el programa durante su ejecución. Esto puede incluir el tiempo de CPU utilizado, la memoria utilizada, el número de operaciones de entrada y salida, entre otros datos relevantes.

* Analizar los datos: Una vez que se han recopilado los datos, es necesario analizarlos para comprender mejor el rendimiento del programa. Esto puede implicar el uso de técnicas estadísticas como el análisis de frecuencia, el análisis de tendencias, la regresión, entre otros.

* Generar un informe: Con los datos y el análisis en mano, se puede generar un informe estadístico que detalle la cantidad de tiempo y recursos utilizados por el programa. El informe puede incluir gráficos, tablas y otras visualizaciones para ayudar a los lectores a comprender los datos de manera más clara.

* Conclusiones y recomendaciones: El informe estadístico también debe incluir conclusiones y recomendaciones para mejorar el rendimiento del programa. Esto puede incluir sugerencias para reducir el tiempo de CPU utilizado, disminuir el consumo de memoria, mejorar el uso de operaciones de entrada y salida, entre otras acciones.

* En resumen, la generación de un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa requiere la recopilación de datos, análisis de los mismos, la elaboración del informe y conclusiones y recomendaciones para mejorar el rendimiento del programa.


### 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.

4.1 Creación de archivos: El OS proporciona herramientas para crear nuevos archivos, ya sea a través de la línea de comandos o mediante una interfaz gráfica de usuario. Al crear un archivo, el OS asigna espacio en disco y le da un nombre y una ubicación en el sistema de archivos.

4.2 Organización de archivos: El OS administra los archivos en el sistema de archivos, incluyendo la creación y eliminación de carpetas, la copia y el movimiento de archivos, la búsqueda y la clasificación de archivos, y la asignación de permisos de acceso.

4.3 Acceso a archivos: El OS proporciona herramientas para acceder a los archivos en el sistema de archivos, ya sea mediante la navegación en una interfaz de usuario o mediante la línea de comandos. Además, el OS gestiona los permisos de acceso a los archivos, lo que significa que solo los usuarios autorizados pueden leer, escribir o ejecutar un archivo determinado.

4.4 Protección de archivos: El OS protege los archivos del sistema de archivos contra la corrupción o el daño accidental, por ejemplo, mediante el uso de copias de seguridad y puntos de restauración. También puede incluir herramientas para proteger los archivos contra el acceso no autorizado, como el cifrado de archivos.

4.5 Mantenimiento del sistema de archivos: El OS también administra la integridad del sistema de archivos, incluyendo la detección y corrección de errores en el disco y la organización de archivos fragmentados. También puede incluir herramientas para la optimización del disco, que pueden ayudar a mejorar el rendimiento del sistema de archivos en general.

4.6 En resumen, las actividades del sistema operativo enfocadas a la administración de archivos incluyen la creación, organización, acceso, protección y mantenimiento del sistema de archivos en general.

### 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.
| VENTAJAS  | DESVENTAJAS  |
|---|---|
|Simplificación del código: Al utilizar la misma interfaz de llamadas al sistema para la manipulación de archivos y dispositivos, se puede simplificar el código de la aplicación, ya que no es necesario escribir código adicional para interactuar con diferentes tipos de dispositivos.   |Pérdida de funcionalidad: Si se utiliza la misma interfaz de llamadas al sistema para la manipulación de archivos y dispositivos, puede haber una pérdida de funcionalidad para algunos dispositivos. Por ejemplo, un dispositivo puede tener características específicas que no se puedan utilizar a través de la interfaz de llamadas al sistema genérica.   |
| Flexibilidad: La misma interfaz de llamadas al sistema para la manipulación de archivos y dispositivos permite que la aplicación sea más flexible y fácil de mantener, ya que se pueden agregar o quitar dispositivos sin cambiar el código de la aplicación.  |Dificultad para depurar errores: Al utilizar la misma interfaz de llamadas al sistema para diferentes dispositivos, puede ser más difícil depurar errores que surjan durante la manipulación de los mismos. Esto se debe a que la misma llamada al sistema puede tener diferentes comportamientos dependiendo del dispositivo específico.   |
|Mejora de la portabilidad: Si la misma interfaz de llamadas al sistema es compatible con múltiples plataformas, la aplicación será más portátil y se podrá ejecutar en diferentes sistemas operativos.   |Rendimiento: La misma interfaz de llamadas al sistema puede no ser óptima para todos los dispositivos. Por ejemplo, una llamada al sistema que funciona bien para la manipulación de archivos puede no ser adecuada para dispositivos de alta velocidad, como los dispositivos de red.   |

### 6. Conteste las siguientes preguntas:

* Cual es el propósito del interprete de comandos?

 Proporcionar una interfaz de usuario para que los usuarios interactúen con el sistema operativo y ejecuten programas. El intérprete de comandos es una aplicación que toma las órdenes escritas por el usuario, las interpreta y las ejecuta.

* Por qué esta separado del kernel?

Existen muchas razones por las cuales se da de esta manera pero la principal razón por la que el intérprete de comandos (shell) se separa del kernel es la seguridad. Al separar el intérprete de comandos del kernel, se limita el acceso de las aplicaciones de usuario a los recursos críticos del sistema, lo que aumenta la seguridad del sistema operativo.
El kernel es la parte del sistema operativo que tiene acceso directo al hardware y controla el acceso a los recursos del sistema, como la memoria y los dispositivos de entrada/salida. Si se permitiera que las aplicaciones de usuario tuvieran acceso directo al kernel, sería muy fácil comprometer la seguridad del sistema y causar daños graves.

* Liste los requisitos para desarrollar un interprete de comandos.
  * Conocimientos de programación: Es necesario tener habilidades de programación en el lenguaje en el que se va a desarrollar el intérprete de comandos. Los lenguajes comunes utilizados para desarrollar intérpretes de comandos son C, C++, Python, Perl, entre otros.

  * Conocimientos de los sistemas operativos: Se requiere un conocimiento sólido de los sistemas operativos para entender cómo funcionan los comandos y las funciones del sistema operativo que el intérprete de comandos debe interactuar. Esto incluye el sistema de archivos, la administración de procesos, la gestión de memoria, la entrada y salida de datos, entre otros.

  * Diseño del lenguaje de comandos: El intérprete de comandos debe tener un lenguaje de comandos diseñado para que los usuarios puedan interactuar con el sistema operativo. Este lenguaje de comandos debe ser fácil de entender, fácil de usar y debe proporcionar una funcionalidad útil.

  * Interfaz de usuario: El intérprete de comandos debe tener una interfaz de usuario bien diseñada que sea fácil de usar y que permita al usuario interactuar con el sistema operativo de manera intuitiva.

  * Pruebas y depuración: Es necesario realizar pruebas exhaustivas para asegurarse de que el intérprete de comandos funcione correctamente y no tenga errores. La depuración también es un paso crítico para solucionar cualquier problema que pueda surgir durante el desarrollo.

  * Documentación: Es importante proporcionar una documentación clara y completa que explique cómo funciona el intérprete de comandos, cómo usarlo y cómo solucionar problemas comunes.

### 7. Compare las ventajas y desventajas de los modelos de intercomunicación.

| VENTAJAS  | DESVENTAJAS  |
|---|---|
|Comunicación efectiva: Uno de los principales beneficios de los modelos de intercomunicación es que promueven la comunicación efectiva entre los participantes. Esto se debe a que se enfocan en la retroalimentación y la comprensión mutua de los mensajes.   |Tiempo: Los modelos de intercomunicación pueden ser más lentos que otros modelos de comunicación debido a la necesidad de retroalimentación y diálogo, lo que puede retrasar el proceso de toma de decisiones.   |
|Flexibilidad: Los modelos de intercomunicación pueden ser adaptados a una variedad de situaciones y contextos de comunicación, lo que los hace muy útiles en una amplia gama de escenarios.   |Puede ser difícil de implementar: Los modelos de intercomunicación requieren que los participantes tengan habilidades efectivas de comunicación y escucha, lo que puede ser difícil de lograr en algunos casos.   |
|Comprensión más profunda: Debido a que los modelos de intercomunicación se centran en la retroalimentación y el intercambio de ideas, los participantes tienen la oportunidad de comprender más profundamente los mensajes y las perspectivas de los demás.   |Posibilidad de conflicto: Debido a que los modelos de intercomunicación fomentan la retroalimentación y el diálogo, existe la posibilidad de que se produzcan conflictos o desacuerdos entre los participantes.   |
|Fomento de la confianza y el respeto mutuo: Al promover la retroalimentación y el diálogo, los modelos de intercomunicación fomentan la confianza y el respeto mutuo entre los participantes, lo que es esencial para una comunicación efectiva y saludable.   |Falta de objetividad: Si los participantes no están dispuestos a escuchar las perspectivas de los demás y a considerar la retroalimentación de manera objetiva, los modelos de intercomunicación pueden ser menos efectivos.   |

### 8. Conteste las siguientes preguntas:

* Cual es la principal ventaja de usar microkernel en el diseño del OS?

La principal ventaja de usar un microkernel en el diseño de un sistema operativo es la modularidad y la flexibilidad que proporciona. En un diseño de microkernel, las funciones básicas del sistema operativo, como la gestión de memoria y la planificación de procesos, se implementan en el núcleo mínimo (microkernel) del sistema. Otras funciones, como los controladores de dispositivos y los servicios del sistema, se ejecutan en espacios aislados (llamados servidores) fuera del núcleo.

* Como interactúan los programas de usuario y los servicios del OS en una arquitectura?

En una arquitectura de sistema operativo, los programas de usuario y los servicios del sistema interactúan mediante llamadas al sistema (system calls), los programas de usuario solicitan servicios o recursos del sistema operativo a través de llamadas al sistema, que son atendidas por los servicios del sistema operativo que se ejecutan en el espacio del kernel del sistema operativo.

* Cuales son las desventajas de usar la arquitectura de microkernel?

Desventajas:
 * Rendimiento: la modularidad de la arquitectura de microkernel puede afectar el rendimiento del sistema, ya que cada servicio o controlador de dispositivo se ejecuta en un espacio aislado, lo que puede aumentar la latencia de las llamadas al sistema y la cantidad de cambios de contexto necesarios para completar una tarea.

 * Complejidad: la arquitectura de microkernel es inherentemente más compleja que otras arquitecturas de sistemas operativos, ya que requiere que los servicios y controladores de dispositivos se ejecuten en espacios aislados. Esto puede dificultar el desarrollo y la depuración de los servicios y controladores de dispositivos.

 * Compatibilidad: la modularidad de la arquitectura de microkernel puede dificultar la compatibilidad con el software existente. Dado que los servicios y controladores de dispositivos se ejecutan en espacios aislados, es posible que algunos controladores de dispositivos o software de sistema existentes no sean compatibles con la arquitectura de microkernel.

 * Seguridad: aunque la arquitectura de microkernel se considera más segura que otras arquitecturas de sistemas operativos, sigue siendo vulnerable a ataques externos, especialmente si los servicios y controladores de dispositivos no están bien diseñados y se ejecutan en espacios aislados inseguros.

### 9. Compare las ventajas y desventajas de usar VM.

| VENTAJAS  | DESVENTAJAS  |
|---|---|
|Aislamiento: las VM se ejecutan en su propio espacio de memoria aislado, lo que las hace útiles para probar y ejecutar software en un ambiente seguro y controlado. Esto permite que múltiples VM se ejecuten en el mismo servidor físico, cada una con su propio sistema operativo y aplicaciones.   |Rendimiento: el uso de una VM puede resultar en un rendimiento más lento debido a la sobrecarga de la virtualización. La ejecución de un sistema operativo y aplicaciones adicionales en la parte superior del sistema operativo anfitrión puede aumentar la carga en la CPU, la memoria y el almacenamiento.   |
|Portabilidad: las VM pueden ser movidas fácilmente entre diferentes hosts físicos, lo que permite la portabilidad y la escalabilidad del software y los servicios.   |Costo: el uso de VM puede requerir hardware adicional y licencias de software, lo que puede aumentar el costo de implementación y mantenimiento.   |
|Consolidación: al permitir que múltiples VM se ejecuten en un solo servidor físico, las VM pueden ayudar a consolidar y reducir el número de servidores físicos necesarios para ejecutar el software y los servicios.   |Complejidad: la configuración y administración de VM puede ser más compleja que la administración de servidores físicos. La gestión de múltiples sistemas operativos y aplicaciones en diferentes VM puede requerir habilidades y conocimientos adicionales.   |
|Configuración flexible: las VM permiten una configuración flexible de hardware y software, lo que facilita la configuración y la instalación de software y servicios.   |Vulnerabilidad: las VM también pueden ser vulnerables a amenazas de seguridad, y los fallos de seguridad en el sistema operativo o las aplicaciones de una VM pueden afectar a otras VM que se ejecutan en el mismo servidor físico.   |
