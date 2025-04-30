// funciones declaraticas

function saludar(nombre) {
  document.write("Hola! ", nombre);
  // alert("Hola Mundo!");
  document.write("<br>");
  despedir(nombre);
}

function despedir(nombre) {
  document.write("Adios! ", nombre);
  // alert("Adios A Todos!");
  document.write("<br>");
}

let nombre = "pierre";
saludar(nombre);

document.write("========");
// funciones con parametros

let resultado;

function suma(valor_1, valor_2) {
  resultado = valor_1 + valor_2;
  alert("resultado: (" + resultado + ")");
  document.write("<br>");
  return resultado;
}

suma(3,5);

document.write("la suma utilizando el retorno de la funcion :", suma(2,2) + 16);


