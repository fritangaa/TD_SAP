<%-- 
    Document   : Formulario
    Created on : 4/12/2018, 02:53:51 PM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        
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
            <a href="Inventario.jsp" class="navbar-brand text-white">Compras</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#inv_navbar" aria-controls="inv_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="int_navbar">
                <ul class="navbar-nav mr-auto">
                                    
                    <li class="nav-item">
                        <a href="Compras.jsp" class="nav-link text-white">Proveedores</a>
                    </li>    
                    <li class="nav-item">
                        <a href="Productos.jsp" class="nav-link text-white">Productos</a>
                    </li> 
                    <li class="nav-item">
                            <a class="nav-link" href="OrdenCompra.jsp" style="color: white">Orden&nbsp;de&nbsp;compra</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="List_com.jsp" style="color: white">Lista&nbsp;de&nbsp;Compras</a>
                        </li>  
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
        <br>
        <div class="col-sm-5 central" style="width: auto; margin: auto auto;" >
        <div class="card" text-center>
            <div class="card-body">
                    <h4 class="titulo">Pedir Orden de Compra</h4>
                    <div class="container">
                        
                        <form  action="../AgregarProducto" method="post" >                                                                                               
                            <div class="form-group">
                                <label for="clave">Ingrese la fecha:</label><br>
                <input type="date" id="fecha" required="required" name="fecha" class="form-control form-control-sm" />
                            
                                <label for="nombre">Ingrese la direccion:</label><br>
                                <input type="text" id="dir" name="dir" maxlength="30" class="form-control" required="required" />    
                
                            <label for="cantidad">Ingrese la cantidad del producto</label>
                <input type="number" id="cantidad" name="cantidad" class="form-control " required="required" /> 
                               
                <label for="costo">Ingrese ID del producto:</label>
                <input type="number" id="producto" name="producto"  class="form-control "  />  
                
                <label for="costo">Ingrese el ID  del cliente:</label>
                <input type="number" id="cliente" name="cliente" class="form-control " required="required" /> 
                
                <label for="iva">Ingrese la descripcion de venta</label>
                <input type="text" id="descripcion" name="descripcion"  class="form-control" required="required" />       
                <br>
                <input type="reset" value="Cancelar" class="btn btn-default"/>                                                        
                                <input type="submit" value="Agregar" class="btn btn-default"/>
                            </div>                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <br>
        
    </body>
</html>
