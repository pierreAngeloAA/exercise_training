var num_1 = parseInt(window.prompt("Escribir tu primer numero"));
var num_2 = parseInt(window.prompt("Escribir tu segundo numero"));

if (num_1 > num_2){
  alert(num_1 + ", es el mayor")
}else{
  alert(num_2 + ", es el mayor")
}


var fechaIngreso = prompt("Ingrese la fecha", "mm/dd/yyyy");
var fecha = new Date(fechaIngreso);

var dia = fecha.getDay();

var diasemana;

switch (dia){
  case 0:
  diasemana = "Domingo";
  break;

  case 1:
  diasemana = "lunes";
  break;

  case 2:
  diasemana = "Martes";
  break;

  case 3:
  diasemana = "Miercoles";
  break;

  case 4:
  diasemana = "Jueves";
  break;

  case 5:
    diasemana = "Viernes";
    break;

  case 6:
  diasemana = "Sabado";
  break;

  default:
  alert("ingrese un valor correcto");
  break
}


alert("El dia de la semana es: " + diasemana);