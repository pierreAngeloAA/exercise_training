let names = ['lauren', 'sam ', 'camila' , 'pierre'] ;

function modify (names, callback){
  console.log(names)
  names.push("midu");

  
  setTimeout(() => callback(names), 3000)
}

function saludar(names){
  names.forEach(name => {
    console.log(`Hola ${name}`);
  });
  console.log(names)
}

modify(names, saludar);

// nota: la funcion se cuando se le envia como callback se debe enviar sin parentesis 
// con el fin de indicar que no se ejecute al momento, sino que se envie como parametro.


// let value = 1;

// doSomething(() => {
//   value = 2;
// });

// console.log(value ); 

// fs.stat('tmp', () =>{
//   console.log(result)
// })
