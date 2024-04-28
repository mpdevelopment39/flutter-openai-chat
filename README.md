# Flutter OpenAi Chat Demo

  Este proyecto es un ejemplo de aplicación implementando la api de [OpenAI](https://platform.openai.com/docs/api-reference). El proyecto está desarrollado con las versiones 3.19.2 de Flutter y 3.3.0 del sdk de Dart.

  A nivel arquitectura he implementado <strong>Clean Architecture</strong> de una manera sencilla con su correspondiente abstracción de capas.

  - <strong>UI/Presentation.</strong> Donde definimos todo lo que tenga que ver con la interfaz de la aplicación, páginas, componentes/widgets, gestión de estados con riverpod(Notifiers,states)...
  - <strong>Domain.</strong> Donde definimos nuestras entidades de dominio que utilizaremos a lo largo de la aplicación así como los repositorios y casos de uso.
  - <strong>Data.</strong> Donde definimos la implementación de nuestros repositorios (Obtención de datos de backend/apis,bbdd,preferencias locales...) y las entidades o modelos de data como las respuestas de dichas fuentes de datos.
  - <strong>App/Config.</strong> Donde definimos archivos de configuración globales de toda la aplicación como constantes, gestión de rutas, inyección de dependencias, helpers...

  <strong>NOTA:</strong> He decidido no crear una entidad más de abstracción como los datasources con sus implementaciones para mantener el proyecto lo más sencillo posible, pero si nos vieramos en una situación en la cual para obtener datos podemos tener diversas fuentes u origenes como por ejemplo un backend o una bbdd local con información cacheada podríamos tener esta capa y definir en cada momento que datasource o fuente de datos queremos implementar en nuestros repositorios.
  
  Para la escrítura de los comentarios del código suelo utilizar la extensión Better Comments de VS Code ya que resulta muy visual y cómoda a la hora de leer dichos comentarios, ya que nos permite tener diversos formatos.

## Librerías utilizadas para el diseño

  * [<b>animate_do</b>](https://pub.dev/packages/animate_do)
    * Para utilizar animaciones en el diseño.
  * [<b>animated_text_kit</b>](https://pub.dev/packages/animated_text_kit)
    * Para pintar las respuestas del chat.
  * [<b>device_preview</b>](https://pub.dev/packages/device_preview)
    * Para realizar pruebas de interfaz en cualquier dispositivo.
  * [<b>lottie</b>](https://pub.dev/packages/lottie)
    * Para mostrar animaciones en formato json.
  * [<b>wheel_slider</b>](https://pub.dev/packages/wheel_slider)
    * Para mostrar elementos seleccionables al usuario.
  * [<b>top_snackbar_flutter</b>](https://pub.dev/packages/top_snackbar_flutter)
    * Para mostrar snackbars informativas al usuario.
  

## Librerías utilizadas para implementación de funcionalidad

  * [<b>dio</b>](https://pub.dev/packages/dio)
    * Para la implementación de peticiones Rest.
  * [<b>flutter_dotenv</b>](https://pub.dev/packages/flutter_dotenv)
    * Para la gestión de variables de entorno.
  * [<b>flutter_riverpod</b>](https://pub.dev/packages/flutter_riverpod)
    * Como manejador de estados de la aplicación.
  * [<b>freezed</b>](https://pub.dev/packages/freezed)
    * Para la creación y generación de modelos (DTOs o entidades de Dominio) y utilidades asociadas.
  * [<b>get_it</b>](https://pub.dev/packages/get_it)
    * Para la inyección de dependencias.
  * [<b>pretty_dio_logger</b>](https://pub.dev/packages/pretty_dio_logger)
    * Para hacer un seguimiento cómodo en consola de los logs de todas las requests realizadas con Dio

## Features

Lista de funcionalidades implementadas en el proyecto:

- Elección del modelo utilizado: El usuario puede escoger el modelo con el que quiere conversar.

- Elección de la temperatura: El usuario puede escoger la temperatura con la que obtendrá las respuestas por parte del modelo. La temperatura controla la creatividad y la aleatoriedad de las respuestas generadas por el modelo.

- Mantener conversación libre con el chat: El usuario tiene la posibilidad de mantener una conversación abierta (Texto plano) con el chat.

- Sugerencias iniciales: El usuario dispone de unas breves sugerencias precargadas para comenzar la conversación.

<br>
<br>
A continuación se muestran diferentes gifs con el resultado del proyecto:

</p>
<p align="center">
    <img src="/assets/readme/gif1.gif" width="310" height="640">
    <img src="/assets/readme/gif2.gif" width="310" height="640">
    <img src="/assets/readme/gif3.gif" width="310" height="640">
    <img src="/assets/readme/gif4.gif" width="310" height="640">
    <img src="/assets/readme/gif5.gif" width="310" height="640">
    <img src="/assets/readme/gif6.gif" width="310" height="640">
    <img src="/assets/readme/gif7.gif" width="310" height="640">
</p>


<h2>Pasos para ejecutar el proyecto</h2>

 1. Descargar el proyecto en la ruta deseada. Bien ejecutando el comando git clone o descargando el zip directamente.
 2. Duplicar el archivo <strong>.env.template</strong> y renombrarlo como .env
 3. Rellenar las variables de entorno con sus valores correspondientes.
    - Para la obtención del api key es necesario crearse una cuenta en [OpenAI](https://platform.openai.com/), ir al apartado "Api keys" y pulsar el botón "Create new secret key". Copiar dicho dato y pegarlo en el archivo .env creado anteriormente para la variable OPENAI_API_KEY

## Features a implementar a futuro

Por límite de tiempo para la realización de la prueba he priorizado las funcionalidades comentadas pero a continuación incluyo una breve lista de funcionalidades que aprovecharé para ir implementando en este repositorio con el tiempo y poder hacerlo más completo.

- Añadir icono
- Añadir splash
- Añadir localización de la app
- Añadir modos Dark/Light
- Añadir BBDD Isar o Back de Firebase para almacenar historial de conversaciones y ajustes de usuario
- Añadir la obtención de modelos de la api
- Añadir un efecto háptico en la escritura del chat
- Añadir posibilidad de introducir texto vía micrófono.