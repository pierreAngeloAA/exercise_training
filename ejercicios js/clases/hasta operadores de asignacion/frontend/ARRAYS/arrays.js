let miVector = [1,2,3,4,5];

console.log(miVector[0]);

let miMatriz = [[1,2,3],[4,5,6],[7,8,9]]

console.log(miMatriz[2][1])

// let paisesLatam = ["Argentina", "Mexico","Colombia", "Brasil"];

// for(let i=0; i< paisesLatam.length; i++) {
//   console.log(paisesLatam[i]);
// }

let paisesLatam = [["Argentina", "Mexico","Colombia", "Brasil"],
                    ["Chile", "Peru", "Venezuela", "Uruguay"],
                    ["Ecuador", "El salvador", "Bolivia", "Paraguay"]
                  ];

for (let f=0; f<paisesLatam.length; f++){
  for (let c=0; c<paisesLatam[f].length; c++){
    console.log(paisesLatam[f][c]);
  }
}

let frutas = ["naranja", "banana"];
frutas.push("manzana"); // agrega un elemento en la ultima posicion de una array
console.log(frutas);
frutas.pop(); // elimina el ultimo elemento de un array
console.log(frutas);
frutas.shift();  //elimina el primer elemento de un array
console.log(frutas);
frutas.unshift("sandia"); // agrega un elemento en la primera posicion de un array
console.log(frutas);

let frutasConA = frutas.filter(fruta => fruta.includes("s"));

console.log(frutasConA)

let = frutas_2 = ["Fresas", "kiwi"];

let todasLasFrutas = frutas.concat(frutas_2);   // para concatenar los elementos de dos arrays
console.log(todasLasFrutas);

todasLasFrutas.reverse();
console.log(todasLasFrutas);

todasLasFrutas.sort();
console.log(todasLasFrutas);