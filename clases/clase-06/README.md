# Clase 06

 Acá puedo anotar cosas

 Aprendimos a entrar en el editor de GitHub utilizando el punto (.)

 También se puede ingresar si cambiamos el .com por .dev en nuestro repositorio.

 ## Estructura de repositorios

Para meter bloques de código, o que respete la estructura de saltos de línea, es bueno usar comillas (```). Hay que encerrar nuestro bloque entre ambas estructuras.

```
 clase-00
 |- imagenes/      (ESTO ES UNA CARPETA)
 |- README.md

 
 clase-01
 |- imagenes/      (ESTO ES UNA CARPETA)
 |- README.md

entregas-01
|- imagenes/
|- códigos/
|- docs/
|- README.md
```

### Soy un título con 3 hashtags

Para cargar imágenes, usamos esta estrucutra

```
 ![texto alternativo](./imagenes/violetaparra.jpg)
```

 ![Violeta Parra con una máquina de escribir](./imagenes/violetaparra.jpg)

 Para cargar una imagen que está en otra carpeta, debo primero subir una jerarquía de archivo, lo que se hace con `../`. Esto se llama ruta relativa

 ![gif de prueba](../clase-01/gif-test.gif)

 ## Como agregar códigos de processing

Para que los bloques de código tengan estilo, después de las primeras comillas escribo el lenguaje de programación

 ` ```processing `

 ```processing
 /**
 * Mouse 2D. 
 * 
 * Moving the mouse changes the position and size of each box. 
 */
 
void setup() {
  size(640, 360); 
  noStroke();
  rectMode(CENTER);
}
 ```