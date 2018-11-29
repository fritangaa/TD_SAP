<%-- 
    Document   : InventarioMermaAgregar
    Created on : 6/10/2018, 10:44:45 PM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario Merma Agregar</title>
<!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
    </head>
       <header class="sticky-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a href="Inventario.jsp" class="navbar-brand text-white">Inventario</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#inv_navbar" aria-controls="inv_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="int_navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a href="#InventarioProducto.jsp" class="nav-link dropdown-toggle text-white" id="producto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">General</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioProducto.jsp">Producto</a>
                            <a class="nav-link text-white" href="InventarioProductoAgregar.jsp">Agregar&nbsp;Producto</a>
                            <a class="nav-link text-white" href="InventarioProductoModificar.jsp">Modificar&nbsp;Producto</a>                                  
                        </div>                  
                    <li class="nav-item">
                        <a href="InventarioEntradas.jsp" class="nav-link text-white">Inventario&nbsp;Entradas</a>
                    </li>    
                    <li class="nav-item">
                        <a href="InventarioSalida.jsp" class="nav-link text-white">Inventario&nbsp;Salidas</a>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#InventarioMerma.jsp" class="nav-link dropdown-toggle text-white" id="merma" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Merma</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioMerma.jsp">Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaAgregar.jsp">Agregar&nbsp;Merma</a>
                            <a class="nav-link text-white" href="InventarioMermaModificar.jsp">Modificar&nbsp;Merma</a>                                  
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#InventarioRequisicion.jsp" class="nav-link dropdown-toggle text-white" id="req" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Requisicion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="inventario">
                            <a class="nav-link text-white" href="InventarioDetalleReq.jsp">Requisiciones</a>
                            <a class="nav-link text-white" href="InventarioRequisicion.jsp">Agregar&nbsp;Requisicion</a>                                  
                        </div>
                    </li>
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>      
    <br>
    <br>
    <!--Panel-->
    <div class="col-sm-5 central" style="width: auto; margin: auto auto;" >
        <div class="card" text-center>
            <div class="card-body">
                <form action="../AgregarMerma" method="post">
                <h3 class="card-title" >Agregar Producto en Merma</h3><br><br>
                <!--INICIO CUESTIONARIO-->
                <label class="card-text">Ingrese la clave de merma:</label><br>
                <input type="text" id="clavem" required="required"  minlength="2" maxlength="9" name="clavem" class="form-control form-control-sm" />
                <p class="card-text">Ingrese la clave del producto:</p>
                <input type="text" id="producto" required="required"  name="producto" class="form-control form-control-sm" />
                <label class="card-text">Ingrese la cantidad:</label><br>
                <input type="number" id="cantidad" required="required" name="cantidad" class="form-control form-control-sm" />
                <p class="card-text">Ingrese la motivo</p>
                <input type="text" id="descripcion" required="required" name="descripcion" class="form-control form-control-sm" />
                <p class="card-text">Ingrese la fecha</p>
                <input type="date" id="fecha" required="required" name="fecha" class="form-control form-control-sm" />
                <p class="card-text">Ingrese tipo de merma</p>
                
                
                <select id="tipo" name="tipo" class="form-control">
                                    <option value="x">Seleccione...</option>
                                    <option value="Vencimiento">Vencimiento</option>
                                    <option value="Hurtos detectados">Hurtos detectados</option>
                                    <option value="Errores en sistema">Errores en sistema</option>
                                    <option value="Hurtos y fraudes">Hurtos y fraudes</option>
                                </select><br><br>
                                <input id="boamerma" type="submit" value="Guardar" style="background:#0033ff" class="btn btn-success"/>
                </form>
            </div>
        </div>
    </div>
    <!--/.Panel-->
    

    
    </body>
</html>
