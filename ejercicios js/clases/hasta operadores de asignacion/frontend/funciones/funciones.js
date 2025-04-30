// function  saludar(){
//   console.log("Hola Estoy En La Funcion");
// }

// saludar();

// function suma(a,b){
//   let resultado = a + b
//   return resultado
// }

// a = parseInt(window.prompt("escriba el numero de a"));
// b = parseInt(window.prompt("escriba el numero de b"));

// let resultado = suma(a,b);
// console.log(resultado);

// // array para los nombres
let nombresPkm = ["charmander","pikachu","bulvasaur","squirtle"]

// // matriz para sus habilidades

let habilidades = [
  [80,75,90], //charmander
  [65,55,95], // pikachu
  [80,1,65], //bulvasaur
  [85,90,70]  //squirtle
];

function calcularPromHab(habilidades){
  let promedios = [];

  for (let i=0;i<habilidades.length;i++){
    let fila = habilidades[i];
    let suma = fila.reduce((total,habilidad)=>total+habilidad,0)
    promedios[i] = suma/fila.length
  }
  return promedios;
}

function evaluarAptitud(nombresPkm,promedios){
  for (let i = 0; i < promedios.length; i++) {
    if (promedios[i] >= 70){
      console.log("el pokemon: " + nombresPkm[i] + " supera el promedio con: " + promedios[i])
    }
    else{
      console.log("el pokemon: " + nombresPkm[i] + " No supera el promedio con: " + promedios[i])
    }
    
  }
}

let  promedios = calcularPromHab(habilidades);
evaluarAptitud(nombresPkm,promedios);