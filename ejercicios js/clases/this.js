"use strict";
console.log(this);

function getName(){
  console.log(this);
  console.log(`Mi nombre es ${this.nick}`);
}

// window.nick = 'global-nick'

// getName();

var midudev = {
  nick: `midudev`,
  getName: getName
}

midudev.getName();
window.getName();


var nombre = "Laura";
console.log(this.nombre); // "Laura"



// En el contexto global
console.log(this); // window (en navegador)

// Como propiedad global
var edad = 30;
console.log(this.edad); // 30

// En modo estricto

function prueba() {
  console.log(this); // undefined
}
prueba();  // devuelve undefined por el mod estricto


