# Clase 03

Aprendimos a trabajar con sensor logger y archivos .csv

Para visualizar gps rápidamente, cargamos el archivo .csv en <https://mymaps.google.com>

Se recomienda siempre remapear nuestros rangos de 0 a 100. Podemos ayudarnos de herramientas como Claude para esto, y que nos devuelva tablas con datos limpios.

![pizarra](./pizarra.png)

Aprendimos del tiempo EPOCH o UNIX

<https://es.wikipedia.org/wiki/Tiempo_Unix>


Con OPEN Meteo encontramos datos de temperaturas liberados. https://open-meteo.com/en/docs

## ¿De dónde podemos sacar datos?

- Data Loggers con Arduino
- Apps como Sensor Logger
- Repositorios de clima como Open Meteo
- Salud global en WHO GLobal Health Observatory
- Monitoreos de terremotos y volcanes
- Registros demográficos
- Flight Trackers
- Algunas son en tiempo real (APIs) a través de internet, aunque por ahora nos interesan los archivos históricos en .csv
- Ustedes también pueden construir sus propios archivos .csv con sus datos recogidos
 
## Sobre proyecto MVP

- Telón de proyectos hecho por ARQ-UNIACC
- Telón es un objeto muerto cuando no se usa
- Ocupar el telón como dispositivo museográfico
- Crearemos obras de sitio específico para este dispositivo museográfico

## Códigos trabajados en clase:

[miPrimerGpsRD](./miPrimerGpsRD/)

*Corregido el bug encontrado durante la sesión (el total de datos en la lista se encontraba después de intentar llenar el array)

[Gps Track generado por Claude](./GPSTrack-Claude/)

## Para próxima clase

- Traer un sketch hecho en processing con datos propios recogidos. Incluir estos datos en un archivo .csv en el github. Pueden ayudarse de IA

Nota: No he podido recuperar la grabación de la sesión