// toUpperCase and toLowerCase - change the case of all characters
// trim - remove whitespace at the beginning and end
// includes, startsWith and endsWith - determine whether another string is part of the given string
// slice - extract a section of the string
// const texto = "Hola   ";
// console.log(texto.trimEnd()); // 👉 "Hola"
// const texto = "   Hola";
// console.log(texto.trimStart()); // 👉 "Hola"

function frontDoorResponse(poem){
  return poem.charAt(0)
}

function frontDoorPassword(word){
  return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
}

function backDoorResponse(poem){
  let cleanpoem = poem.trim()
  return cleanpoem.charAt(cleanpoem.length - 1)
}

function backDoorPassword(word){
  return frontDoorPassword(word) + ", please"
}


console.log(frontDoorResponse("hola mundo"));
console.log(frontDoorResponse("hola mundo"));
console.log(backDoorResponse("   asdasdasd   asdasd   asdr    "))

console.log(backDoorPassword("horse"));