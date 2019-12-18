<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro de Clientes</title>
</head>

<body>

<form id="reg_cli" method="post">

    <div class="row">

        <div class="col">
            <div class="form-group">
                <label for="idcedula">Cédula</label>
                <input type="number" class="form-control" id="idcedula" name="idcedula" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
            <label for="idnombre">Nombre</label>
            <input type="text" class="form-control" id="idnombre" name="idnombre" >
            %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
        </div>

            <div class="form-group">
                <label for="idapellido">Apellido</label>
                <input type="text" class="form-control" id="idapellido" name="idapellido" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="row">

                <p>Agente:</p> &nbsp; &nbsp;
                <div>
                <select class="form-control" id="agente" name="agente">
                    <option value="0">Seleccionar</option>
                    <g:each in="${combos.agentes}">
                        <option value="${it.id}">${it.nombre}</option>

                    </g:each>
                </select>
                </div>
                &nbsp; &nbsp;

                <p>Cobrador:</p> &nbsp; &nbsp;
                <div >
                    <select class="form-control" id="cobrador" name="cobrador">
                        <option value="0">Seleccionar</option>
                        <g:each in="${combos.cobradores}">
                            <option value="${it.id}">${it.nombre}</option>

                        </g:each>

                    </select>
                </div>


            </div>




        </div>

        <div class="col">

            <div class="form-group">
                <label for="iddireccion">Dirección</label>
                <input type="text" class="form-control" id="iddireccion" name="iddireccion" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
                <label for="idcelular">Celular</label>
                <input type="tel" class="form-control" id="idcelular" name="idcelular" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
                <label for="idtelefono">Teléfono</label>
                <input type="tel" class="form-control" id="idtelefono" name="idtelefono" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="row">
                &nbsp; &nbsp;
                <p>Zona:</p> &nbsp; &nbsp;
                <div>
                    <select class="form-control" id="zona" name="zona" >
                        <option value="0">Seleccionar</option>
                        <g:each in="${combos.zonas}">
                            <option value="${it.id}">${it.nombre}</option>

                        </g:each>

                    </select>
                </div>
            </div>

        </div>

    </div>



    <div class="float-right">
        <button type="submit" class="btn btn-primary">Guardar</button>
        <button type="submit" class="btn btn-outline-danger">Eliminar</button>

    </div>


</form>
<br>
<br>
<br>
<br>
<br>
<br>

<h3>Listado de Clientes</h3>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Cédula</th>
        <th scope="col">Nombre</th>
        <th scope="col">Celular</th>
        <th scope="col">Dirección</th>
        <th scope="col">Agente</th>
        <th scope="col">Cobrador</th>
        <th scope="col">Zona</th>
        <th scope="col">Acción</th>
    </tr>
    </thead>
    <tbody id="contenedorTabla">

    <g:each in="${clienteList}">

        <tr>
            <th scope="row">${it.cedCli}</th>
            <td>${it.nombreCli}</td>
            <td>${it.celCli}</td>
            <td>${it.dirCli}</td>
            <td>${it.nagente}</td>
            <td>${it.ncobrador}</td>
            <td>${it.nzona}</td>

            <td>
                <div class="dropdown">
                    <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Acción
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a onclick="editar('${it.id}')" class="dropdown-item" style="cursor: pointer;"><span
                                class=" fa fa-pencil"></span> Editar</a>
                        <a  onclick="confirmarEliminar('${it.id}')"  class="dropdown-item" style="cursor: pointer;">
                            <span class="fa fa-trash"></span> Eliminar</a>
                    </div>
                </div>
            </td>
        </tr>

    </g:each>

    </tbody>
</table>

<br><br><br><br><br><br><br>



<asset:javascript src="reg_cli.js"/>
</body>

</html>