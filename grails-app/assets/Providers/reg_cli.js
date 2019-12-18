var idclientemod = 0;

$("#reg_cli").submit(function (e) {
    e.preventDefault();
    var params = {};

    params = formToJson(this);
    if (validar(params) != true) {
        return;
    }

    params.idcliente = idclientemod;
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

function salvar(params) {
    $.ajax({
        url: window.location+"/salvar",
        data:params,
        type: 'POST',
        success: function (response) {
            var json = JSON.parse(response);

            if (json.key){
                show_yes("Relizado",json.msj);
                idclientemod = 0;
                // ActualizarTabla();
            }
            else{
                show_no("Error",json.msj);
            }
        }
    });
}

function editar(idcliente) {

    show_loading_msg("Espere",1000);

    $.ajax({
        url: window.location+"/buscarclientebyid",
        data:{idcliente:idcliente},
        type: 'POST',
        success: function (response) {
            var json = eval(response);

            idclientemod = json.id;

            $("#idcedula").val(json.cedCli);
            $("#idnombre").val(json.nombreCli);
            $("#idapellido").val(json.apellido);
            $("#iddireccion").val(json.dirCli);
            $("#idcelular").val(json.celCli);
            $("#idtelefono").val(json.telefono);
        }
    });
}

function confirmarEliminar(idcliente) {
    show_confirm("Aviso!","Desea eliminar este registro",Elimiar,idcliente);
}

function Elimiar(idcliente) {
    $.ajax({
        url: window.location+"/eliminar",
        data:{idcliente:idcliente},
        type: 'POST',
        success: function (response) {
            var json = JSON.parse(response);

            if (json.key){
                show_yes("Relizado",json.msj);
            }
            else{
                show_no("Error",json.msj);
            }
        }
    });
}

function ActualizarTabla() {
    $.ajax({
        url: window.location+"/actualizarTala",
        type: 'POST',
        success: function (response) {
            var json = JSON.parse(response);

            console.log(json);
            // $("#contenedorTabla").html("");
            var html = "";
            
            for (var i=0; i < json.length; i++){
                html = html + ` <tr>
                                <th scope="row">${json[i].cedCli}</th>
                                <td>${json[i].nombreCli}</td>
                                <td>${json[i].celCli}</td>
                                <td>${json[i].dirCli}</td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Acción
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a onclick="editar('${json[i].id}')" class="dropdown-item" style="cursor: pointer;"><span
                                                    class=" fa fa-pencil"></span> Editar</a>
                                            <a  onclick="confirmarEliminar('${json[i].id}')"  class="dropdown-item" style="cursor: pointer;">
                                                <span class="fa fa-trash"></span> Eliminar</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>`
            }

            $("#contenedorTabla").html(html);
        }
    });
}
