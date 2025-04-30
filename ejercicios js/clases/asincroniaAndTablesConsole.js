 console.log("hola mundo");

let segundos = 3
 setTimeout(() => {
  console.log(`Ya pasaron ${segundos} segundos`);
 }, segundos * 1000)

 console.log(`esto se ejecuta al instante antes que pasen los ${segundos} segundos`);

console.table( setTimeout(() => {
  console.log(`Ya pasaron ${segundos} segundos`);
 }, segundos * 1000))

 let array_1 = [{d: 2},{d: 4},{d: true}, 2,3,4,5,6,7,8,9,23,[2,34,4,5,34,3,2,2,""]]
 console.table(array_1)

 function saludar() {
  console.log("Hola después de 10 segundo");
}
// teer en cuenta que si se le pasa una funcion a setTimeOut se le debe pasar sin los () ya que en caso dado se ejecutara de, => 
// inmediato y no en el tiempo indicado
setTimeout(saludar,10000)

const personas = [
  { nombre: "Ana", edad: 25, ciudad: "Bogotá" },
  { nombre: "Luis", edad: 30, ciudad: "Medellín" },
  { nombre: "Sofía", edad: 22, ciudad: "Cali" }
];
console.table(personas);

const inventario = {
  item1: { nombre: "Mouse", precio: 20 },
  item2: { nombre: "Teclado", precio: 50 },
  item3: { nombre: "Pantalla", precio: 200 }
};
console.table(inventario);

const matriz = [
  ["age","number","holas"],
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
console.table(matriz);