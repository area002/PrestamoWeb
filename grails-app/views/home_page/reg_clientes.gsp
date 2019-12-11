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

<form id="reg_cli">

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

        </div>
    </div>



    <div class="float-right">
        <button type="submit" class="btn btn-primary">Guardar</button>
        <button type="submit" class="btn btn-outline-danger">Eliminar</button>

    </div>


</form>


</body>
</html>