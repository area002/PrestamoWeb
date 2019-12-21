<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro de Cobradores</title>
</head>

<body>

<form id="reg_cob" method="post">

    <div class="row">

        <div class="col">
            <div class="form-group">
                <label for="idnombre">Nombre del Cobrador</label>
                <input type="text" class="form-control" id="idnombre" name="idnombre">
            </div>
        </div>
    </div>

    <div class="float-right">
        <button type="submit" class="btn btn-primary">Guardar</button>
        <button type="submit" class="btn btn-outline-danger">Eliminar</button>

    </div>
</form>

<br><br><br>

<h3>Lista de Cobradores</h3>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Nombre</th>
        <th scope="col">Accion</th>

    </tr>
    </thead>
    <tbody id="contenedorTabla">

    <g:each in="${cobradoreslist}">

        <tr>
            <th scope="row">${it.id}</th>
            <td>${it.nombre}</td>


            <td>
                <div class="dropdown">
                    <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Acción
                    </button>

                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a onclick="editar('${it.id}')" class="dropdown-item" style="cursor: pointer;"><span
                                class=" fa fa-pencil"></span> Editar</a>
                        <a onclick="confirmarEliminar('${it.id}')" class="dropdown-item" style="cursor: pointer;">
                            <span class="fa fa-trash"></span> Eliminar</a>
                    </div>
                </div>
            </td>
        </tr>

    </g:each>

    </tbody>
</table>

<asset:javascript src="reg_cob.js"/>
</body>
</html>