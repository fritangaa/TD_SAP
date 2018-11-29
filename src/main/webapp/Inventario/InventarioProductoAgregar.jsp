<%-- 
    Document   : InventarioProductoAgregar
    Created on : 13/10/2018, 12:20:09 AM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario agregar producto</title>
    <!-- Bootstrap -->
<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>

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
    <div class="col-xs-6 col-md-6 central" id="tabla">
            <div class="jumbotron">
                <div class="container">
                    <h4 class="titulo">Agregar Nuevo Producto </h4>
                    <div class="container">
                        <form  action="../AgregarProducto" method="post" >                                                                                               
                            <div class="form-group">
                                <label for="clave">Ingrese la clave de producto:</label><br>
                                <input type="text" id="clave" minlength="2" maxlength="9" name="clave" class="form-control" required="required" />
                            
                                <label for="nombre">Ingrese el nombre del producto:</label><br>
                                <input type="text" id="nombre" name="nombre" maxlength="30" class="form-control" required="required" />    
                                
                                <label for="tipo">Ingrese tipo de producto</label>
                                 <select id="tipo" name="tipo" class="form-control">
                                    <option value="x">Seleccione...</option>
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
                <input type="number" id="costo" name="costo" step="0.01" class="form-control "  />  
                
                <label for="costo">Ingrese el costo de venta:</label>
                <input type="number" id="costov" name="costov" step="0.01" class="form-control " required="required" /> 
                
                <label for="iva">Ingrese el iva del producto</label>
                <input type="text" id="iva" name="iva" step="0.01" class="form-control" required="required" />       
                
                <label for="cantidad">Ingrese la cantidad del producto</label>
                <input type="number" id="cantidad" name="cantidad" class="form-control " required="required" /> 
               <input type="reset" value="Cancelar" class="btn btn-default"/>                                                        
                                <input type="submit" value="Agregar" class="btn btn-default"/>
                            </div>                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    
   
</body>
</html>