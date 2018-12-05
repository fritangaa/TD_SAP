<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <script src="../Gerencia/validaciones/validacion.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" integrity="sha256-CfcERD4Ov4+lKbWbYqXD6aFM9M51gN4GUEtDhkWABMo=" crossorigin="anonymous"></script>
    </head>
    <body>
        <header class="sticky-top">
            <!--barra de navegacion creada con bootstrap-->
            <nav class="navbar navbar-expand-lg navbar-dark barra bg-primary" >
                <a class="navbar-brand text-white" href="../Gerencia/InicioGerencia.jsp"><h2>Informaci&oacute;n Gerencial</h2></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto">                    
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white" id="conf" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Configuracion</a>
                            <div class="dropdown-menu bg-primary" aria-labelledby="conf" >
                                <form  onsubmit="return validawebservice('nombre', 'ip', 'puerto');" action="" name="ws" method="post" autocomplete="off">
                                    <br>
                                    <label class="text-white">Nombre&nbsp;del&nbsp;servicio
                                        <input type="" name="nombre" id="nombre"  class="form-control">
                                    </label>
                                    <br>
                                    <label class="text-white">Ip&nbsp;del&nbsp;servicio
                                        <input type="" name="ip" id="ip" class="form-control">
                                    </label>
                                    <br>
                                    <label class="text-white">Puerto&nbsp;del&nbsp;servicio
                                        <input type="" name="puerto" id="puerto"  class="form-control">
                                    </label>
                                    <br>
                                    <input type="submit" class="btn btn-danger text-white" value="Guardar">
                                </form>                                 
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white" id="historial" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Historial</a>
                            <div class="dropdown-menu bg-primary" aria-labelledby="historial">
                                <form onsubmit="return validalog(fecha, area, horaInicio, horaFin);" action="../Consultalog" name="historial" method="post" autocomplete="off">
                                    <label class="text-white">Fecha
                                        <input type="date" name="fecha" id="fecha" max="3000-12-31"  min="1000-01-01" class="form-control">
                                    </label>
                                    <br>
                                    <p class="text-white">Area</p> 
                                    <select name="area" id="area">
                                        <option value="gerencia">Gerencia</option> 
                                        <option value="rh">Recursos Humanos</option> 
                                        <option value="contabilidad">Contabilidad</option>
                                        <option value="inventarios">Inventarios</option> 
                                        <option value="compras">Compras</option> 
                                        <option value="ventas">Ventas</option> 
                                    </select>
                                    <br>
                                    <br>
                                    <label class="text-white">Intervalo&nbsp;de&nbsp;tiempo</label>
                                    <div id="hora">
                                        <label class="text-white">De: <input id="horaInicio" for="example-time-input" type="time" name="horaInicio"  class="form-control"></label>
                                        <br>
                                        <label class="text-white">A:   <input id="horaFin" for="example-time-input" type="time" name="horaFin"  class="form-control"></label>  
                                    </div>
                                    <br>
                                    <input type="submit" class="btn btn-danger text-white" value="Generar">
                                </form>                                   
                            </div>
                        </li>
                    </ul>   
                </div>
            </nav>
        </header>
        <div id="principal">
            <div class="container-fluid" style="background-color: #EDEDED;"><!-- Seccion central (Visualizar tarea) -->
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div style="background-color: #fff; margin: 10px 2px;">
                            <a  href="../Contabilidad/Contabilidad.jsp">
                                <h2 style="color: black; margin-left: 20px;">Contabilidad</h2>
                                <div class="row justify-content-center" style="margin-left: 20px; margin-right: 20px;">
                                    <canvas id="gContabilidad" width="100%" height="60px"></canvas>
                                    <script type="text/javascript" src="../Gerencia/graficas/graficaContabilidad.js"></script>
                                </div>
                        </div>
                        </a>     
                    </div>  
                    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div style="background-color: #fff; margin: 10px 2px;">
                            <a  href="../Inventario/Inventario.jsp">
                                <h2 style="color: black; margin-left: 20px;">Inventarios</h2>
                                <div class="row justify-content-center" style="margin-left: 20px; margin-right: 20px;">
                                    <canvas id="gInventarios" width="100%" height="60px"></canvas>
                                    <script type="text/javascript" src="../Gerencia/graficas/graficaInventarios.js"></script>
                                </div>
                            </a>    
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                        <div style="background-color: #fff; margin: 10px 2px;">
                            <a href="../RH/rh_index.jsp">
                                <h2 style="color: black; margin-left: 20px;">Recursos Humanos</h2>
                                <div class="row justify-content-center" style="margin-left: 20px; margin-right: 20px;">
                                    <canvas id="gRH" width="100%" height="60px"></canvas>
                                    <script type="text/javascript" src="../Gerencia/graficas/graficaRH.js"></script>
                                </div>
                        </div>
                        </a>     
                    </div>
                </div>
                <div class="row">
                    <br>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div style="background-color: #fff; margin: 0px 2px;">
                            <a href="../Compras/Compras.jsp">
                                <h2 style="color: black; margin-left: 20px;">Compras</h2>
                                <div class="row justify-content-center" style="margin-left: 20px; margin-right: 20px;">                               
                                    <canvas id="gCompras" width="100%" height="40px"></canvas>
                                    <script type="text/javascript" src="../Gerencia/graficas/graficaCompras.js"></script>
                                </div>
                            </a>    
                        </div>     
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div style="background-color: #fff; margin: 0px 2px;">
                            <a href="../Ventas/Ventas.jsp">
                                <h2 style="color: black; margin-left: 20px;">Ventas</h2>
                                <div class="row justify-content-center" style="margin-left: 20px; margin-right: 20px;">                               
                                    <canvas id="gVentas" width="100%" height="40px"></canvas>
                                    <script type="text/javascript" src="../Gerencia/graficas/graficaVentas.js"></script>   
                                </div>        
                            </a>     
                        </div>                                                 
                    </div>
                </div>

            </div>

        </div>


        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div style="background-color: #fff; margin: 0px 10px 10px 10px;">
                    <br>
                    <form action="../GeneraReporte"  method="post">
                        <center>
                            <input class="btn btn-danger text-white" style="background-color: #000" type="submit" value="Generar Reporte" />
                        </center>
                    </form>
                </div>
            </div>
        </div>

    </div> 
</div>
</body>
</html>
