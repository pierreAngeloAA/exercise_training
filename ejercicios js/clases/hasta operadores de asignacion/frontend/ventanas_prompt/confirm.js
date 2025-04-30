var respuesta = window.confirm("¿quieren suscibirse al canal de TOdoCode?");

alert("tu respuesta fue: " + respuesta)

if (respuesta){
  alert("eres el mejor")
}else{
  alert("suscribeteeeee!")
}

// var fecha_hoy = new Date();
// alert("lafecha de hoy es: " + fecha_hoy)
// var fecha_mi_cumple = new Date(1994, 02, 30);
// alert("lafecha de mi cumple es: " + fecha_mi_cumple)

var fecha = new Date ("05/25/2023")
alert("la fecha de hoy es: " + fecha)

// funciones especiales 

var dia = fecha.getDate();
var mes = fecha.getMonth();
var anio = fecha.getFullYear();

alert("dia:" + dia  + " mes: " + (mes + 1) +" año " + anio); 