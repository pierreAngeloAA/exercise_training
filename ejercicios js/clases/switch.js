// let valor;
// valor = parseInt(prompt("Ingrese un valor entre 1 y 3"));

// switch (valor) {
//   case 1:
//     document.write("ingreso el numero 1");
//     break;
//   case 2:
//     document.write("ingreso el numero 2");
//     break;
//   case 3:
//     document.write("ingreso el numero 3");
//     break;
//   default:
//     document.write("No ingreso un numero valido");
//     break;
// }

let color;
color = prompt("ingrese un color").toLowerCase();

switch (color) {
  case "rojo":
    document.write("Es rojo");
    break;
  case "verde":
    document.write("Es  verde");
    break;
  case "azul":
    document.write("Es azul");
    break;
  default:
    document.write("no ingreso el color");
    break;
}
