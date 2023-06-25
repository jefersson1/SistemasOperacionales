### TALLER N°13 DE SISTEMAS OPERACIONALES


#### 1:

stress-ng: es una herramienta de estrés para sistemas Linux que permite generar cargas de trabajo intensivas en diversos componentes del sistema, como la CPU, memoria, E/S, discos, entre otros. Su objetivo principal es evaluar la estabilidad, rendimiento y capacidad de respuesta del sistema bajo condiciones de alta carga. Con stress-ng, los usuarios pueden someter su sistema a pruebas de estrés controladas y medir su comportamiento en diferentes escenarios, lo que resulta útil para identificar posibles problemas o limitaciones del sistema. La herramienta ofrece una amplia gama de opciones y configuraciones para adaptarse a diferentes casos de uso y necesidades de pruebas de estrés.

#### 2:

* stress-ng --cpu 4 --timeout 60s: Este comando genera un estrés en la CPU utilizando 4 trabajadores durante 60 segundos. Se utiliza para evaluar la capacidad de procesamiento del sistema.
* stress-ng --vm 2 --vm-bytes 1G --timeout 60s: Este comando genera un estrés en la memoria utilizando 2 trabajadores y asignando 1GB de memoria cada uno durante 60 segundos. Se utiliza para evaluar el comportamiento del sistema bajo una carga intensiva de memoria.
* stress-ng --fork 4 --timeout 60s: Este comando genera un estrés en el manejo de procesos e hilos, creando 4 procesos hijos durante 60 segundos. Se utiliza para evaluar cómo el sistema maneja la creación y finalización de procesos e hilos.


##### 3:
