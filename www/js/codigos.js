// Con esta función consigo que al pulsar el botón se abra la sección de comentarios
function mostrarOpiniones(){
    var ops = document.getElementById("contenedor-opiniones");
    ops.style.display = "block";
}

// Aquí declaro las palabras prohibidas en los comentarios
//var palabrasInvalidas = ['muerto' , 'discapacitado' , 'puta' , 'puto', 'maricon'] ;
var seccionOpiniones = document.getElementById('seccionOpiniones');
var palabras = JSON.parse(seccionOpiniones.textContent);

let palabrasInvalidas = [];

for(var i = 0; i < palabras.length; i++){
    palabrasInvalidas.push(palabras[i].nombre);
}

// Esta función va comprobando si alguna de las palabras escritas es una palabra prohibida y la remplaza por tantos * como letras tenga (gi: en todo el texto y no sensible mayus)
function palabrasProhi(event) {
    const regex = new RegExp(palabrasInvalidas.join('|'), 'gi');
    const textoCensurado = event.target.value.replace(regex, match => '*'.repeat(match.length));
    event.target.value = textoCensurado;
}

// Ejecuto la función palabrasProhibi cada vez que se produce un input en el textarea
comentario.addEventListener('input', palabrasProhi);

// Función que valida que el nombre tenga entre 1 y 50 caracteres.
function validarNombre(nombre){
    if (nombre.length > 0 && nombre.length < 50) {
        return true;
    }
    else{
        return false;
    }
}

// Función que valida que el correo tiene un formato válido.
function validarCorreo(correo) {
    var expresion = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return expresion.test(correo);
}

var form = document.getElementById("formulario");
form.addEventListener("submit", function(evento) {
    evento.preventDefault();


    // Obtener los valores de los campos de formulario
    var nombre = document.getElementById("nombre").value;
    var correo = document.getElementById("correo").value;
    var comentario = document.getElementById("comentario").value;

    // Obtener los valores de la fecha y la hora
    const fecha = new Date();
    const dia = fecha.getDate();
    const mes = fecha.getMonth();
    const anio = fecha.getFullYear();

    const hora = fecha.getHours();
    const minutos = fecha.getMinutes();

    // Hacer las comprobaciones de que los datos del formulario son correctos
    if (!validarNombre(nombre)) {
        alert('El nombre debe tener entre 1 y 50 caracteres.')
    }
    else if (!validarCorreo(correo)) {
        alert('Introduce un formato de correo válido.')
    }
    else{ // Crear un nuevo párrafo con formato con los datos especificados en el formulario
        const nuevoCom = `
        <p class ="opiniones">
            Autor: ${nombre}<br/>
            Fecha: ${dia}/${mes}/${anio}<br/>
            Hora: ${hora}:${minutos}<br/>
            ${comentario}<br/>
        </p>
        `;

        // Añadir el párrafo antes creado a su especio correspondiente
        document.getElementById("comentarios-nuevos").innerHTML += nuevoCom;
        form.reset();
    }

});
