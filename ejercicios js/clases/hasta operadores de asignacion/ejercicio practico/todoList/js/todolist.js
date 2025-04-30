function agregarTarea(){
  //obtener el valor del campo de la tarea
  let nuevaTareaTexto = document.getElementById("nuevaTarea").value;

  //validamos que el valor no sea vacio
  if (nuevaTareaTexto === ""){
    alert("Una tarea no puede estar vacia");
    return;
  }

  //crear el elemento en la lista
  let nuevaTarea = document.createElement("li");
  nuevaTarea.textContent = nuevaTareaTexto + " ";

  //crear boton eliminar
  let botonEliminar = document.createElement("button");
  botonEliminar.textContent = "Eliminar";
  botonEliminar.onclick = function(){nuevaTarea.remove();}

  //Agregar boton de eliminar al elemento de la lista
  nuevaTarea.appendChild(botonEliminar);

  //Agregar la tarea a la lista
  document.getElementById("listaTareas").appendChild(nuevaTarea);

  //limpiar el cuadro de texto del nombre de la tarea
  document.getElementById("nuevaTarea").value = "";

}