# Clase 02

Libro de George Perec <https://www.libreriadelgam.cl/libro/lugares_129673>

Libro recomendado: el poder del arte <https://uniacc.primo.exlibrisgroup.com/discovery/fulldisplay?docid=alma99474037607686&context=L&vid=56UNIACC_INST:UNIACC&lang=es&search_scope=MyInst_and_CI&adaptor=Local%20Search%20Engine&tab=ALL&query=any,contains,el%20poder%20del%20arte&offset=0>

## Texto: De la información a la visualización

<https://uniacc.primo.exlibrisgroup.com/permalink/56UNIACC_INST/pe331d/alma99364425907686>

## Animacion temperatura processing poco eficiente

```processing

int tamano = 50;

//vamos a trabajar con la temperatura
//(ficticia) de los últimos 7 dias
//las temperaturas fueron
// 10, 40, 15, 17, 30, 28, 26

int t1 = 10;
int t2 = 40;
int t3 = 15;

void setup() {
  size(300, 300);
  //forzar que los fps vayan a 30
  frameRate(30);
}

void draw() {
  background(0);
  //puedo hacer que el tamaño dependa
  //de la temperatura asociada al frameCount
  
  //en el primer segundo me muestre t1
  //en el segundo segundo me muestre t2
  //en el tercer segundo me muestre t3
  if (frameCount < 30){
    tamano = t1;
  } 
  
  if (frameCount > 30){
    tamano = t2;
  }
  
  if (frameCount > 60){
    tamano = t3;
  }
  
  //tamano = frameCount;
  
  println(frameCount);
  fill(220,220,100);
  circle(150,150,tamano);
}


```

## Mi primer array en Procesing

```processing
int tamano = 50;
int i = 0; //para crear un índice que recorrerá la animación


//vamos a trabajar con la temperatura
//(ficticia) de los últimos 7 dias
//las temperaturas fueron
// 10, 40, 15, 17, 30, 28, 26

//lo implementamos en un array llamado temperatura
int[] temperatura = {10, 40, 15, 17, 30, 28, 26};
//estos elementos tienen un índice que parte en 0
// temperatura[0] sería 10
// temperatura[2] sería 15
// temperatura[5] sería 28

void setup() {
  size(300, 300);
  //forzar que los fps vayan a 30
  frameRate(1);
}

void draw() {
  background(0);
  //puedo hacer que el tamaño dependa
  //de la temperatura asociada al frameCount
  
  tamano = temperatura[i];
  
  //tamano = frameCount;
  
  print(frameCount);
  print(" - ");
  println(tamano);
  fill(220,220,100);
  circle(150,150,tamano);
  
  i = i + 1 ;
  if (i > 6){
    i = 0;
  }
}

```

## Encargo próxima clase

- Descargar aplicación Sensor Logger (iOS / Android)
- Traer una grabación de datos aplicados al sensor que quieran.
