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
            <div class="form-group">
                <label for="idcedula">Cédula</label>
                <input type="number" class="form-control" id="idcedula" name="idcedula" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
                <label for="fecha">Fecha de Registro</label>
                <input type="date" class="form-control" id="fecha" name="fecha" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>
            <br>
             <div class="row">
                <p>Seleccionar moneda:</p> &nbsp; &nbsp;
                 <div id="moneda">
                     <select>
                         <option value="volvo">DOP</option>
                         <option value="saab">USD</option>
                         <option value="mercedes">EUR</option>

                     </select>
                 </div>

                 &nbsp; &nbsp;
                 <p>Cantidad de Cuotas:</p> &nbsp; &nbsp;
                 <div id="cuotas">
                     <select>
                         <option value="12">12</option>
                         <option value="24">24</option>
                         <option value="36">36</option>
                         <option value="48">48</option>
                         <option value="48">60</option>
                         <option value="48">72</option>

                     </select>
                 </div>
             </div>
            <br>

            <div class="row">
                <p>Tipo de Prestamos:</p> &nbsp; &nbsp;
                <div id="tippres">
                    <select>
                        <option value="p">Personales</option>
                        <option value="v">De vehículos </option>
                        <option value="c">Para Hogar</option>


                    </select>
                </div>

                &nbsp; &nbsp;
                <p>Garante</p> &nbsp; &nbsp;
                <div id="garante">
                    <select>
                        <option value="si">Si</option>
                        <option value="no">No</option>
                    </select>
                </div>

                &nbsp; &nbsp;
                <p>Garante</p> &nbsp; &nbsp;
                <div id="codeudor">
                    <select>
                        <option value="si">Si</option>
                        <option value="no">No</option>
                    </select>
                </div>


            </div>


        </div>



        <div class="col">

            <div class="form-group">
                <label for="idtaza">Tasa de Prestamo:</label>
                <input type="number" class="form-control" id="idtaza" name="idtaza" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
                <label for="idmonto">Monto a Solicitar:</label>
                <input type="number" class="form-control" id="idmonto" name="idmonto" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
                <label for="idgarante">Cédula Del Garante</label>
                <input type="number" class="form-control" id="idgarante" name="idgarante" >
                %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
            </div>

            <div class="form-group">
                <label for="idcodeudor">Cédula Del Codeudor</label>
                <input type="number" class="form-control" id="idcodeudor" name="idcodeudor" >
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
            <th scope="col">Fecha de Pago</th>
            <th scope="col">Monto</th>
            <th scope="col">Capital</th>
            <th scope="col">Interés</th>
        </tr>
        </thead>
        <tbody id="contenedorTabla">

        </tbody>

    </table>


</form>

</body>
</html>