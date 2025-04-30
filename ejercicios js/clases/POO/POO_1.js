var Auto = {
  marca: "Toyota",
  modelo: "corola",
  anio: 2023,
  color: "Rojo",
  tipo: "sedan",
  radio: ["FM", "MP4", "USB"]
}
document.write("marca: ", Auto.marca, "<br>", "modelo: ", Auto.modelo, "<br>", "año: ", Auto.anio, "<br>","tipo: ", Auto.tipo,"<br>","Radio: ", Auto.radio );
document.write("<br>");

// Clases
class Persona {
  nombre = 'Homero';
  apellido = 'Simpson';
  direccion = 'aven. simprella';
  telefono = 3234234234;
  email = 'anda@gmail.com';

  trabajar() {
    return "Trabaja en la planta nuclear";
  }

  estudiar() {
    return "Escuela primaria de Springfield";
  }
}

document.write("<br>");
const homero = new Persona()
document.write("nombre: ", homero.nombre,"<br>", "Apellido: ", homero.apellido );
document.write("<br>")
document.write(homero.trabajar)