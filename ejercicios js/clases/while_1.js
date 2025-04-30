// let f = 1;

// while ( f < 11){
//   document.write("vuelta numero: ", f);
//   document.write("<br>")
//   f++;
// }

// f = 10;

// while ( f >= 0){
//   document.write("vuelta numero: ", f);
//   document.write("<br>")
//   f--;
// }


  let f = 1;
  let suma = 0;
  let valor;

  while ( f <= 5){
    valor = parseInt(prompt("ingrese un valor..."));
    suma = suma + valor;
    f++;  
  }
  document.write("la suma es: ", suma, "<br>");

