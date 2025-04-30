var aprobe = true;
if (aprobe){
  console.log("Puedo salir!!");
}else{
  console.log("Tengo que estudiar js");
}

// var color = prompt("Escribir un color primario")
var color = " ==== estoy frenado"

switch (color){
  case "rojo":
  console.log("es color rojo");
  break;

  case "azul":
  console.log("es color azul");
  break;

  case "verde":
  console.log("es color verde");
  break;

  default:
    console.log("el color ingresado no es valido " + color);

  break
}

// var num_1 = prompt("Escribir tu primer numero");
// var num_2 = prompt("Escribir tu segundo numero");
var num_1 = 0;
var num_2 = 2;
var resta = num_1 - num_2;

if (resta > 0){
  console.log("es mayor a 0")
  console.log("la resta de los dos numero es un numero par? " + (resta%2 == 0))
}else{
  console.log("es menor o igual a 0")
}

// bucles ciclos
var contador = 0;
while (contador < 10){
  console.log("vuelta while numero: " + contador);
  contador ++;
}

// ciclo for
//  inicializacion de la variable: se ejecuta una vez al inicio del ciclo var i=1;
//  condicion de fin de ciclo => se evalua esta exprecion al comienzo de cada iteracion i<10;
//  modificacion de la variable => se ejecuta al final de cada iteracion  i++
for (var i=1; i<10; i++){
  console.log("vuelta for numero: " + i)
}

// do while
var contador = 0;
do{
  console.log("vuelta do while numero: " + contador);
  contador ++;
}
while(contador <= 10);

for (var i=1; i<36; i++){
  console.log("vuelta for numero: " + i)
}

for (var i=10; i>=0; i--){
  console.log("vuelta for numero: " + i)
  if (i == 5){
    console.log("faltan 5 pa las 12")
    alert("faltan 5 pa las 12")
  }
}
alert ("feliz año nuevo!");