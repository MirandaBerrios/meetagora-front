![](https://capstone-396701.uc.r.appspot.com//meetagora-services/gcp/images/meetagora-logo.png)
# Meetagora
### Lista de requerimientos: 
- JDK 1.8u311
- Flutter
- Dart
- Navegador Chrome o Edge
- IDE como Visual Studio Code, Android Studio o equivalente.
- 15 Gigas de espacio en el disco
- Dispositivo Android para emulación Versión de Android Tiramisú


## Puesta en marcha del código

Clona el repositorio con la herramienta que más te sea conveniente y ejecuta los siguientes códigos, puede que tarden varios minutos: 

 ``` 
 flutter pub get
 flutter run
```
Esto desplegará una opción que te hará elegir en que navegador quieres emular la aplicación, ten en cuenta que es solo para ver el diseño, no trae consigo ninguna funcionalidad.
``` 
flutter clean 
flutter build apk --release
```
Estos comandos te generarán la apk para que puedas disfrutar de las funcionalidades en tu dispositivo Android, esto podría demorar varios minutos.

## Extras  

Puntos extras que abordar, la aplicación trabaja con varias páginas y modales que podrás ver en el código, además, la aplicación tiene variables app State que funcionan dentro de toda la aplicación, donde encontrarás la variable apiUrlStatment esta es pieza fundamental porque es el link con el que trabajan todas las conexiones a las API, de querer probar el ambiente de desarrollo de manera local deberás cambiar la ruta desde ese lugar, por defecto se utiliza la url que apunta al back end ya subido en el servidor, la url que encontrarás es la siguiente: https://backend-gkhesykiqa-tl.a.run.app, de querer trabajar de forma local deberá cambiarla por tu url de localhost y el puerto que hayas declarado en el backend .

En caso de no poder generar la apk en tu computador puedes descargar la app desde el siguiente link:
https://storage.cloud.google.com/front-apk/meetagora-app-release.apk

