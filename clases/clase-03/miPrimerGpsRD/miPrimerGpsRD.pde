//vamos a extraer información de un .csv
// es necesario que esté en una subcarpeta
// con mi sketch de processing
// llamada "data"

// miPrimerGpsRomanDiaz
// |- miPrimerGpsRomanDiaz.pde
// |- data
//     |- posiciones.csv

//declaramos que existe la tabla
//que llamaremos gps
//donde guardaremos la lectura del archivo .csv
Table gps;

//podemos crear arrays para guardar la informacion
//de longitud y latitud
//puedo crear un array sin saber cuantos datos
//va a tener
//creamos arrays vacíos
float[] lats;
float[] lons;

//para guardar las posiciones de posX y posY
float posX=0;
float posY=0;

//con un indice puedo ir recorriendo las posiciones
int indice = 1;

//variable para conocer la cantidad de
//datos de la tabla
int totalDatos = 0;

void setup(){
  size(400,400);
  //vamos a llamar la función nueva que crearemos
  //que me permitirá cargar la tabla
  //llamada cargarDatos();
  cargarDatos();
}
void draw(){
  background(200);
  
  //busco la posicion de indice en el array
  //de las longitudes y latitudes
  //multiplico por 4 porque mi lienzo es 4
  //veces mayor que mi dato maximo (100)
  posX = lons[indice] * 4;
  //la posY está naturalmente invertida, 
  //para ajustarla, se la restamos a la altura
  posY = height - lats[indice] * 4;
  
  //dibujo el circulo en la posicion deseada
  ellipse(posX,posY,10,10);
  
  //incluyo un texto para saber que hace el codigo
  text("indice = " + indice + 
  "\n posX = " + posX, posX, posY+20); 
  text("posY = " + posY, posX, posY+45);
  
  
  
  //luego de dibujar, incremento en 1
  //el indice, para ir a buscar el siguiente 
  //a la proxima
  indice = indice + 1;
  
  //si es mas grande que el tamaño del array,
  //resetea
  if (indice >= totalDatos){
    indice = 1;
  }
}
void cargarDatos(){
  println("estoy cargando datos");
  
  //vamos a guardar los datos en gps desde el csv
  gps = loadTable("posiciones.csv");
  println("datos cargados");
  
  //veamos que hay en la fila 0
  //gps.getFloat(índiceFila, índiceColumna);
  //puedo obtener numeros enteros (getInt)
  //palabras con getString
  //y numeros con coma con Float
  print("latitud celda (1,1) es ");
  println(gps.getFloat(1,1));
  
  print("longitud celda (1,2) es ");
  println(gps.getFloat(1,2));
  
  print("latitud celda (2,1) es ");
  println(gps.getFloat(2,1));
  
  print("longitud celda (2,2) es ");
  println(gps.getFloat(2,2));
  
    //es necesario para trabajar con estas tablas
  //saber la cantidad de filas de mi tabla
  totalDatos = gps.getRowCount();
  println(totalDatos);
  
  //para llenar los arrays vacíos, primero
  //generaremos los espacios donde se llenarán
  lats = new float[totalDatos];
  lons = new float[totalDatos];
  
  //Hay una manera tediosa de llenar un array
  //lats[0] = gps.getFloat(1,1);
  //lons[0] = gps.getFloat(1,2);
  
  //lats[1] = gps.getFloat(2,1);
  //lons[1] = gps.getFloat(2,2);
  
  //lats[2] = gps.getFloat(3,1);
  //lons[2] = gps.getFloat(3,2);
  
  //este proceso se puede automatizar con 
  //un ciclo for
  for (int i = 1; i<= totalDatos - 1; i++){
    //genera una variable temporal
    //llamada i
    //que parte siendo 0
    //que crece de 1 en 1 (con i++)
    //y que deja de crecer cuando sea
    //mas grande que la cantidad de datos totales
    lats[i] = gps.getFloat(i,1);
    lons[i] = gps.getFloat(i,2);
  }
  
  
  

  
  //quiero saber que dato hay un el punto 0,0
  print ("lat 1 = ");
  println(lats[1]);
  
  print ("long 1 = ");
  println(lons[1]);
}
