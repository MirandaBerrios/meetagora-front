# meetagora-app

Meetagora-frontend es una aplicación desarrollada en flutter sus dependencias son gestionadas son Dart.
Para que el software pueda funcionar son necesarios ciertos requerimientos:
- Instalar flutter y Dart
- Algun ide de programación 
- Android studio
- a lo menos 15 gigas de almacenamiento en el disco que este pensando clonar el repositorio 

## Como partir con Meetagora FrontEnd

Para comenzar a modificar el código puedes clonar en tu máquina local el proyecto a través del siguiente repositorio https://github.com/MirandaBerrios/meetagora-front , para posteriormente editarlo con el ide de programacion que mas te acomode, recomendamos visual studio code para el mismo.

Ahora lo más importante es cómo hacer que el código se despliegue y proceder a probarlo en tiempo real, lo primero es verificar que las dependencias se hayan actualizado correctamente en tu máquina, lo segundo es eliminar posibles importaciones repetidas o que no se están utilizando ya que se crean al momento de buildear la aplicación, como tercer paso es ya haber establecido el emulador en android studio, para poder utilizarlo, recomendamos utilizar la versión tiramisú de android y dar por lo menos 1gb de espacio en el disco y 4 o mas gb de ram para el correcto funcionamiento.

Para correr el código nos vamos al archivo main.dart y colocamos run, esto debería abrir tu emulador y mostrar la aplicación en funcionamiento, ya el resto depende de ti.

Puntos extras que abordar, la aplicación trabaja con varias páginas y modales que podrás ver en el código, además, la aplicación tiene variables app State que funcionan dentro de toda la aplicación, donde encontrarás la variable apiUrlStatment esta es pieza fundamental porque es el link con el que trabajan todas las conexiones a las API, de querer probar el ambiente de desarrollo de manera local deberás cambiar la ruta desde ese lugar,  por defecto se utiliza  la url que apunta al back end ya subido en el servidor, la url que encontrarás es la siguiente: https://backend-gkhesykiqa-tl.a.run.app, de querer trabajar de forma local deberá cambiarla por tu url de localhost y el puerto que hayas declarado en el back end.


