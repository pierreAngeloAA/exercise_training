function buscarNombre(listaNombres,nombreBuscar){
  return listaNombres.includes(nombreBuscar);
}

// lista de nombre fijas
let listaNombres = ["aldo", "lauren", "lipa", "bella"];

// Usuario que pueda ingresar un nombre por pantalla
let nombreBuscar = prompt("Ingresar el nombre a buscar").toLowerCase();

// busquemos si esta o no en la lista
let estaONo = buscarNombre(listaNombres,nombreBuscar);

//informar por pantalla si esta o no 
if (estaONo){
  console.log("el nombre: " + nombreBuscar + " esta en la lista");
}
else {
  console.log("el nombre: " + nombreBuscar + " No esta en la lista");
}

let persona = {nombre: "pierre", edad: 31};