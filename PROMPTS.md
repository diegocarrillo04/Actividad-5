# registro de prompts

## Validación de argumentos

Nombre: Diego Carrillo
Rama: feature/validacion-argumentos
Módulo: Validación de entrada

### Prompts utilizados
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
