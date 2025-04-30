// for (let f = 0; f <= 20; f++) {
//   document.write("veulta numero: (", f,")");
//   if (f == 15){
//     document.write(", esta es mi vuelta numero: (", f,")")
//   }
//   document.write("<br>");
// }
// document.write("Fin Del Bucle!!");

const frutas = ["pera", "manzana", "uva", "naranja"];

for (let f = 0; f < frutas.length; f++) {
  document.write("fruta numero :", f, " nombre de fruta: ", frutas[f]);
  document.write("<br>");
  
}

// el for_in solo funciona para valores que tienen una cantidad "n" de elemenos;
let palabra = "JavaScript";

for (let f in palabra) {
  document.write(f, " : (");
  document.write(palabra[f],")");
  document.write("<br>");
}

let animal = "poipoipoeipoipeoipoaiepoaieopieopiapoeipoaieopaipoeiopaieoaipoeiaopeiopaieopaiopaieopaioeiape";
let vocal = 0;

for(let f in animal){
  if(animal[f]=="a" || animal[f]=="e" || animal[f]=="i" || animal[f]=="o" || animal[f]=="u"){
    vocal++;
  }
  if (vocal == 15){
    document.write("esta es la vocal numero :", vocal, " (",animal[f],")" );
    document.write("<br>");
    break
  }
}
document.write("esta palabra tiene : ", vocal, " vocales")