console.log("1");

const miPromesa = new Promise((resolve, reject)=>{
  setTimeout(function(){
    console.log("2");
    resolve("Hola Pierre");
  }, 5000)
})


miPromesa.then((msj)=>{
  console.log("la promesa se resolvio de manera exita" + msj);
}).catch((msj)=>{
  console.log("Ocurrio un error" + msj)
})

console.log("3")

function buscarUsuario(id) {
  return new Promise((resolve, reject) => {
    const usuarios = {
      1: "Ana",
      2: "Luis",
      3: "Valeria"
    };

    setTimeout(() => {
      if (usuarios[id]) {
        resolve(usuarios[id]); // Usuario encontrado
      } else {
        reject("Usuario no encontrado");
      }
    }, 4000);
  });
}

// Consumimos la promesa
buscarUsuario(2)
  .then((nombre) => {
    console.log("Usuario encontrado:", nombre); // Luis
  })
  .catch((error) => {
    console.log("Error:", error);
  })
  .finally(() => {
    console.log("Búsqueda finalizada");
  });

