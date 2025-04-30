let numeros = [];
numeros = [15,80,45,23,24,6543,2,8];
document.write("Elementos: ", numeros );

document.write("<br>");
document.write("primer elemento : ", numeros[3])

document.write("<br>");
numeros[3] = 53;
document.write("primer elemento : ", numeros[3])

document.write("<br>");
let frutas = ["manzanas","peras", "uvas", "naranja"]
document.write("mis frutas: ", frutas)
document.write("<br>");
document.write("cantidad de frutas: ", frutas.length);


document.write("en string: ", numeros.toString());
document.write("<br>");

let letras = ["a","b","c"];
let numeros2 = [1,2,3];
document.write("Alfanumerico: ",letras.concat(numeros2) );
document.write("<br>");

//borrar mi ultimo elemento de un array
numeros.pop();
document.write(numeros);
document.write("<br>");

//agregar elementos a un array se pueden agregar cuantos elementos se le pase a la funcion
numeros.push(999);
document.write(numeros);
document.write("<br>");

//eliminar primer elemento
numeros.shift();
document.write(numeros);
document.write("<br>");

//insertar elementos al inicio
numeros.unshift(777);
document.write(numeros);
document.write("<br>");

//eliminar elementos a partir de un punto
numeros.splice(2,5);
document.write(numeros);
document.write("<br>");

//ordenar aflabeticamente el array
document.write(frutas.sort());
document.write("<br>");
document.write(frutas.reverse());
