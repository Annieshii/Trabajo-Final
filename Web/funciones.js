//Primero me guardo los values de los INPUT que tengo en mi html para ver que ingresa el usuario

let nombreUsu = document.getElementById("usuario_nuevo");
let contraseña = document.getElementById("contra_nueva");

function ingreso () {

    //Aca estoy diciendole al ingreso que nombre de usuario tiene que ser si o si Sofia Gomez, y a la vez
    //la contraseña debe ser AJJ2022. Asi recibira el saludo de bienvenida de lo contrario pasa al else
    if (nombreUsu.value == "Sofia Gomez" && contraseña.value == "AJJ2022") {
        alert("Bienvenida Sofia al Gourmet")
        
    }

    else {
        alert("Disculpe, Los datos ingresados no son correctos")
        //los prevenDefault evitan que un elemento realice una accion que tiene por default
        event.preventDefault();
    }
}

//le agrego al boton el evento "CLICK" a la vez le asigno la funcion que cree para que valide los datos del usuario
btn_ingreso.addEventListener("click",ingreso);

