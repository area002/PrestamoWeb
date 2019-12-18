<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        YNM SOLUCIONES S.R.L
        %{--<g:layoutTitle default="Grails"/>--}%
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    %{--<asset:stylesheet src="application.css"/>--}%

    <g:layoutHead/>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>

    <asset:javascript src="assets/vendor_components/vendor_components/popper/dist/popper.min.js"/>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!--alerts CSS -->
    <asset:stylesheet src="assets/vendor_components/vendor_components/sweetalert/sweetalert.css"/>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="./"> YNM SOLUCIONES S.R.L</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            %{--<li class="nav-item active">--}%
                %{--<a class="nav-link" href="./">Sobre Nosotros <span class="sr-only">(current)</span></a>--}%
            %{--</li>--}%
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="mantenimientos" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    Mantenimientos
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="./Registros_de_Clientes">Clientes</a>
                    <a class="dropdown-item" href="./Reg_cob">Cobradores</a>
                    <a class="dropdown-item" href="./Reg_zonas">Zonas</a>
                    <a class="dropdown-item" href="./Reg_age">Agente</a>

                </div>
            </li>


            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="movimientos" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    Movimientos
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="./Registro_de_Prestamos">Solcitar Prestamos</a>
                    <a class="dropdown-item" href="./Cal_cuota">Calcular Cuotas</a>
                    <a class="dropdown-item" href="./Cal_cuota">Recibo de Pago</a>


                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="Reportes" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    Reportes
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="./estado_cuenta">Estado de Cuenta</a>


                </div>
            </li>
            %{--<li class="nav-item">--}%
                %{--<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--}%
            %{--</li>--}%
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

%{--<div style="background: image('../../assets/images/imagenes/fondo.jpg')">--}%
<div class="container mt-3">
    <g:layoutBody/>

</div>

<asset:javascript src="utilidades.js"/>

<!-- Sweet-Alert  -->
<asset:javascript src="assets/vendor_components/vendor_components/sweetalert/sweetalert.min.js"/>
<asset:javascript src="assets/vendor_components/vendor_components/sweetalert/jquery.sweet-alert.custom.js"/>

</body>
</html>
