$("#frm").submit(function (e) {
    e.preventDefault();
    var params = {};

    params = formToJson(this);
    if (validar(params) != true) {
        return;
    }
    salvar(params)
});




function validar(params) {

    if (params.idnombre == ""){
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

}
    return true
}

function salvar(params) {
    $.ajax({
        url: window.location+"/salvar",
        data:params,
        type: 'POST',
        success: function (response) {
            var json = eval(response);

        }
    })
}
