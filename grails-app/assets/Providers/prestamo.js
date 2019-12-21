$("#reg_pre").submit(function (e) {
    e.preventDefault();
    var params = {};

    params = formToJson(this);
    if (validar(params) != true) {
        return;
    }

    GenerarTabla(params)
});

function validar(params) {

    if (params.idcliente <= 0){
        show_no("Alerta","El Nombre no puede estar en blanco");
        return false;
    }else if (params.idapellido == ""){
        show_no("Alerta","El Apellido no puede estar en blanco");
        return false;
    } else if (params.idcedula ==""){
        show_no("Alerta","la cedula no puede estar en blanco");
        return false
    }else if (params.idcelular == ""){
        show_no("Alerta","El celular no puede estar en blanco");
        return false;
    } else if (params.idtelefono == ""){
        show_no("Alerta","El teelfono no puede estar en blanco");
        return false;

    } else if (params.iddireccion == ""){
        show_no("Alerta","La direccion no puede estar en blanco");
        return false;
    }else if (params.zona <= 0){
        show_no("Alerta","No ha seleccionado ninguna Zona");
        return false;
    }else if (params.cobrador <= 0){
        show_no("Alerta","No ha seleccionado ningun cobrador");
        return false;
    }else if (params.agente <= 0){
        show_no("Alerta","No ha seleccionado ningun agente");
        return false;
    }
    return true
}

function GenerarTabla(params) {
    $.ajax({
        url: window.location+"/GenerarTabla",
        data:params,
        type: 'POST',
        success: function (response) {
            var json = JSON.parse(response);


        }
    });
}