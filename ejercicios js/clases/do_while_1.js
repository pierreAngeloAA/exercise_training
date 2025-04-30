let valor;
let suma;

do{
  valor = parseInt(prompt("Ingrese un valor 1 para salir.."));
  document.write("Ingreso el numero: ", valor);
  suma = suma + valor;
  document.write("  La suma es : ", suma);

  document.write("<br>");

}while (valor != 1)