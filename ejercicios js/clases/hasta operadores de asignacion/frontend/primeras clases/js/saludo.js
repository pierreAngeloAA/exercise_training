if (true){
  let nombre = "Pierre";
  console.log("nombre: " + nombre + " " + typeof nombre) 
}
if (true){
  var edad = 30;
}
var presenteONo = true;
const apellido = "algarin";
var estatura = 1.86;
var dni = true;

// apellido = "vigna"; no se puede cambiar el valor inicial por que es una constante


console.log("edad: " + edad  + " " + typeof edad)
console.log("presente: " + presenteONo + " " + typeof presenteONo)
console.log("apellido: " + apellido + " " + typeof apellido)
console.log("estatura: " + estatura + " " + typeof estatura)
console.log( edad == estatura)
console.log( edad != estatura)
console.log(apellido + " no esta presente? " + !presenteONo) //operador ! se utiliza para negar una variable
if (edad >= 18 && dni == true){
  console.log("si puedes entrar a lovumba")  
}else{
  console.log("este man no entra a lovumba")
}
// alert("hola mundo con JavaScript" + " " + nombre);