<%-- 
    Document   : ModificarProducto
    Created on : 13/10/2018, 10:58:59 PM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Producto</title>
        <!------BOOSTRAP------->
        <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
<!--Validacion de campos-->
<script src="../Recursos/js/Inventario.js" type="text/javascript"></script>    
    </head>
    <body>
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
                        
    <div class="col-sm-5 central" style="width: auto; margin: auto auto;" id="tabla" >
        <div class="card" text-center>
            <div class="card-body">
                
                <h3 class="card-title" >Modificar Producto</h3><br><br>
                <!--INICIO CUESTIONARIO-->
                
                <form role="form" action="../BuscarProductoM" method="post">
                <label class="card-text">Ingrese la clave anterior:</label><br>

                <%out.println("<input id='clavep' name='clavep' class='form-control' required='required' type='text' value="+request.getSession().getAttribute("clave")+">");%>
                     <input type="submit" value="buscar" class="btn btn-default"/>
                </form>
             <form  action="../ModificarProducto" method="post" >
                                 <hr>
                                <label for="clave">Ingrese la clave de producto:</label><br>
                         <%out.println("<input id='clave' name='clave' class='form-control' readonly='readonly' type='text' value="+request.getSession().getAttribute("clave")+">");%>
                               <label for="nombre">Ingrese el nombre del producto:</label><br>
               <%out.println("<input id='nombre' name='nombre' class='form-control' type='text' required='required' value="+request.getSession().getAttribute("nombre")+">");%>
                               <label for="tipo">Ingrese tipo de producto</label>
                                 <select id="tipo" name="tipo" class="form-control" required='required'>
                                    <option value="x">Seleccione...</option>
                                    <%out.println("<option value="+request.getSession().getAttribute("tipo")+">");%>
                                    <option value="Ropa">Ropa</option>
                                    <option value="Accesorios">Accesorios</option>
                                    <option value="Herramienta">Herramienta</option>
                                    <option value="Hogar">Hogar</option>
                                    <option value="Joyeria">Joyeria</option>
                                    <option value="Electronicos">Electronicos</option>
                                    <option value="Calzado">Calzado</option>
                                </select>
                                
                                <label for="unidad">Ingrese la unidad del producto:</label><br>
                                <select id="unidad" name="unidad" class="form-control">
                                    <%out.println("<option value="+request.getSession().getAttribute("unidad")+">");%>
                                    <option value="x">Seleccione...</option>
                                    <option value="pieza">pieza</option>
                                    <option value="paquete">paquete</option>
                                    <option value="caja">caja</option>
                                    <option value="elemento">elemento</option>
                                    <option value="kit">kit</option>
                                    <option value="equipo">equipo</option>
                                    <option value="par">par</option>
                                    <option value="lote">lote</option>
                                 </select>
                <label for="costo">Ingrese el costo del producto:</label>  
                <%out.println("<input type='number' id='costo' name='costo' step='0.01' class='form-control' required='required' value="+request.getSession().getAttribute("costounitario")+">");%>
          
                <label for="costo">Ingrese el costo de venta:</label>
                <%out.println("<input type='number' id='costov' name='costov' step='0.01' class='form-control' required='required' value="+request.getSession().getAttribute("precio_venta")+">");%>
                 <label for="iva">Ingrese el iva del producto</label>
                 <%out.println("<input type='number' id='iva' name='iva' step='0.01' class='form-control' required='required' value="+request.getSession().getAttribute("iva")+">");%>
                 <label for="cantidad">Ingrese la cantidad del producto</label>
                 <%out.println("<input type='number' id='cantidad' name='cantidad'  class='form-control' required='required' value="+request.getSession().getAttribute("cantidad")+">");%>
                
                                <input type="reset" value="Cancelar" class="btn btn-default"/>                                                        
                                <input type="submit" value="Agregar" class="btn btn-default"/>
                 </form>
            </div>
        </div>
    </div>
    <!--/.Panel-->
    
</div>
    
    </body>
</html>
