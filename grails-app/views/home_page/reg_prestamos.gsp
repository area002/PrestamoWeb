<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Registros de Prestamos</title>
</head>

<body>
<form id="reg_pre" method="post">

    <div class="row">

        <div class="col">

            <div class="row">

                <p>Seleccionar Cliente:</p> &nbsp; &nbsp;
                <div>
                    <select class="form-control" id="idcliente" name="idcliente" >
                        <option value="0">Seleccionar</option>
                        <g:each in="${combos.clienteList}">
                            <option value="${it.id}">${it.nombreCli}</option>

                        </g:each>

                    </select>
                </div>

                &nbsp; &nbsp; &nbsp; &nbsp;
                <div class="form-group">
                    <label for="fecha">Fecha de Registro</label>
                    <input type="date" class="form-control" id="fecha" name="fecha" >
                    %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
                </div>
            </div>



             <div class="row">
                 &nbsp; &nbsp;
                 <p>Seleccionar Moneda:</p> &nbsp; &nbsp;
                 <div>
                     <select class="form-control" id="moneda" name="zona" >
                         <option value="0">Seleccionar</option>
                         <g:each in="${combos.monedas}">
                             <option value="${it.id}">${it.descri}</option>

                         </g:each>

                     </select>
                 </div>

                 &nbsp; &nbsp;
                 <p>Cantidad de Cuotas:</p> &nbsp; &nbsp;
                 <div>
                     <select class="form-control" id="cuotas" name="zona" >
                         <option value="0">Seleccionar</option>
                         <g:each in="${combos.cuotas}">
                             <option value="${it.id}">${it.decri}</option>

                         </g:each>

                     </select>
                 </div>

                 <div class="row">
                     &nbsp; &nbsp; &nbsp; &nbsp;
                     <p>Tipo de Pretamos:</p> &nbsp; &nbsp;
                     <div>
                         <select class="form-control" id="tip_pres" name="zona" >
                             <option value="0">Seleccionar</option>
                             <g:each in="${combos.tipos_prestamos}">
                                 <option value="${it.id}">${it.descri}</option>

                             </g:each>

                         </select>
                     </div>


             </div>


             </div>


            <br>






            </div>


        </div>



        <div class="col">
        <div class="row">
            <div class="form-group">
            <label for="idtaza">Tasa de Prestamo:</label>
            <input type="number" class="form-control" id="idtaza" name="idtaza" >
            %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
        </div>
            &nbsp; &nbsp; &nbsp; &nbsp;
            <div class="form-group">
                <label for="idmonto">Monto a Solicitar:</label>
                <input type="number" class="form-control" id="idmonto" name="idmonto" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>
        </div>






        </div>





    <div class="float-right">
        <button type="submit" class="btn btn-primary">Procesar</button>
        <button type="submit" class="btn btn-primary">Imprimir</button>
        <button type="submit" class="btn btn-outline-danger">Cancelar</button>

    </div>
    <br><br><br>

    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">No.Cuota</th>
            <th scope="col">Fechas de Pagos</th>
            <th scope="col">Interes</th>
            <th scope="col">Capital</th>
            <th scope="col">Monto Cuota Mensual</th>
        </tr>
        </thead>
        <tbody id="contenedorTabla">

        </tbody>

    </table>


</form>

<asset:javascript src="prestamo.js"/>
</body>
</html>