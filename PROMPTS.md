# registro de prompts

## Validación de argumentos

Nombre: Diego Carrillo
Rama: feature/validacion-argumentos
Módulo: Validación de entrada

### Prompts utilizados
Ayúdame a crear un un programa con el script de bash que permita realizar una búsqueda de una palabra definida por el usuario y la trayectoria o carpeta a analizar. Los datos de palabra o frase a buscar y trayectoria o carpeta a analizar, serán entregados por el usuario como primer y segundo argumento en donde el primer argumento sea una frase o frase a buscar y el segundo la ruta o carpeta al analizar, también tiene que validar que se hayan recibido exactamente 2 argumentos, si no es así se muestra un mensaje de uso incorrecto y salir, también se debe de validar que la ruta proporcionada exista y sea un directorio válido y debe buscar en la carpeta indicada todos los archivos que contengan la palabra o frase.

También debe de imprimir en la pantalla la ubicación o ruta de cada archivo encontrado y el número de veces (frecuencia) que aparece la palabra en dicho archivo.

Ayudame a crear un repositorio en GitHub
Como puedo realizar un codigo en donde utilice el script de bash para que realice una busqueda de una palabra definida por el usuario y que se muestre la carpeta en donde se analiza los datos,
Estos datos son dados por el usuario como argumentos

Como creo la rama y clono el repositorio dentro de bash

### Uso de la respuesta
Utilicé la respuesta para crear mi rama y escribir la validación
en script.sh. Esta parte comprueba que se reciban exactamente dos
argumentos, que el texto de búsqueda no esté vacío y que la ruta
exista y sea una carpeta.

## Motor de búsqueda
Nombre: Diego Carrillo
Rama: feature/motor-busqueda

Continué utilizando la respuesta al prompt:
"listo, ya tengo el token, ahora dime que hacer para terminar la actividad desde este punto"

Implementé la búsqueda recursiva con find.
Probé el programa en la carpeta pruebas y mostró correctamente
los tres archivos, incluido el archivo de la subcarpeta.
