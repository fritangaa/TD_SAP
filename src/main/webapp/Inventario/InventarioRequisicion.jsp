<%-- 
    Document   : Requisicion_compra
    Created on : 3/11/2018, 08:05:02 AM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario Requisicion</title>
        <!----BOOSTRAP---------------------------->
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
    <!---------------BARRA DE LA IZQUIERDA----------------->
<div class="container-fluid">
 
    <div class="row">
    <div class="col-sm-3 ">
        <div class="card" text-center>
            <div class="card-body">
                <h4>Requisicion</h4>
                 <div class="col-xs-offset-1 col-md-offset-1 central">
                  <!---BARRA DE LA IZQUIERDA---------------------------------------------------------->
                </div>
                    <div class="col-xs-10 col-md-10 central">
                        
                     <a href="InventarioRequisicion.jsp"><label>Agregar Requisicion</label></a>
                     <a href="InventarioDetalleReq.jsp"><label>Mostrar Requisiciones</label></a>
                     <h4>Reporte</h4>
                    
                <input id="generar" type="submit" value="Generar" class="btn btn-success"/><br><br>
                    </div>
            </div>
        </div>
    </div>
                <!--FIN DE BARRA-------------------------------------------------------------------->
                <!--INICIO CUESTIONARIO-->
        <!--Columna Central-->
        <div class="col-sm-5 central" style="width: auto; margin: auto auto;"  >
        <div class="card" text-center>
            <div class="card-body">
                
                        <form  action="../Requisicion" method="post">
                <h3 class="card-title" >Requisicion </h3><br><br>
                <!--INICIO CUESTIONARIO-->
                <label class="card-text">Ingrese clave de requisicion:</label><br>
                <input type="text" id="clave" name="clave" minlength="2" maxlength="9" class="form-control form-control-sm" required="required"  />
                <label class="card-text">Ingrese la clave del producto: </label>
                <input type="text" id="producto" minlength="2" maxlength="9" name="producto" required="required"  class="form-control form-control-sm" /><br>
                <label class="card-text">Ingrese la fecha de entrega: </label>
                <input type="date" id="fechae" name="fechae" required="required"  class="form-control form-control-sm" /><br>
                <label class="card-text">Ingrese la cantidad a pedir: </label>
                <input type="number" id="cantidadp" name="cantidadp" required="required"   class="form-control form-control-sm" /><br>
                <label class="card-text">Comentarios: </label>
                <input type="text" id="comentario" maxlength="120"   name="comentario"  class="form-control form-control-sm" /><br>
                <input id="btn" type="submit" value="Guardar" class="btn btn-success" style="width: 330px;background: #0066cc; margin: auto auto;"/>
                        </form>
            </div>
        </div>
    </div>
    
        <!--columna de la derecha-->
    </div>
</div>

</body>
</html>