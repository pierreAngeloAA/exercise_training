let nombre, edad;
nombre = prompt("Ingrese su nombre...");
edad = prompt("Ingrese su edad...");
edad = parseInt(edad);

document.write("Hola ", nombre);

document.write("<br>");

if (edad >= 18){
  document.write("Fantastico, puedes ingresar a lovumba");
}else{
  if (edad < 18){
    document.write("No esta permitido tu ingreso a la Disco");
  }else{
    document.write("No ingresaste datos")
  }
 
}