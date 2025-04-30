let frase = "Lauren Llego Del Gym!.";
console.log(frase);
console.log(frase.length);

let fragmento = frase.slice(17,frase.length);
console.log(fragmento);

let listaCompras = "naranja, manzanas, lechuga, tomate";
console.log(listaCompras.split(",")); //metodo split convierte un string en un array pasandole un argumento como separador

let frasemayuscula = frase.toUpperCase();
let fraseminuscula = frase.toLowerCase();
console.log(frasemayuscula);
console.log(fraseminuscula);

let frase_2 = " no, ella esta en su casa"

let mensajeFinal = frase.concat(frase_2);
console.log(mensajeFinal);

let posicion = frase.indexOf(" Gym!"); // indexOf devuelve la posicion de la palabra 
console.log("posicion: " + posicion)
console.log(frase.slice(0,posicion + 4));


let incluye  =  frase.includes("Lauren");
console.log("se incluye la palabra Lauren en la frase: " + incluye); // indexOf devuelve si la palabra se encuentra o no dentro del string
