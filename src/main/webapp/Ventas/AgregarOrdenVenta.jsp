<%-- 
    Document   : Orden de Venta
    Created on : 12/10/2018, 1:44:05 AM
    Author     : asus
--%>

<%@page import="com.sap.ventas.clases.Cliente"%>
<%@page import="com.sap.ventas.clases.Proveedor"%>
<%@page import="com.sap.ventas.clases.Producto"%>
<%@page import="com.sap.ventas.clases.OrdenVenta"%>
<%@page import="com.sap.ventas.servlets.ConsultasGenerales"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sap Ventas</title>
<!--Enlace a estilos personalizados de COntabilidad-->
<link href="../Recursos/css/contabilidad.css" rel="stylesheet" type="text/css"/>
<!--Validacion de campos-->
<script src="../Recursos/js/Contabilidad.js" type="text/javascript"></script>
<script src="../Recursos/js/Ventas.js" type="text/javascript"></script>
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
            <a href="Ventas.jsp" class="navbar-brand text-white">Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conta_navbar" aria-controls="conta_navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="conta_navbar">
                <ul class="navbar-nav mr-auto">
                     <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Clientes</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Clientes.jsp">&nbsp;Cliente</a>
                        </div>
                    </li>                                   
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Atencion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                        <a class="nav-link text-white" href="Orden de Venta.jsp">&nbsp;Orden de Venta</a>
                                                             
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Salida de Ventas</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Factura.jsp">&nbsp;Factura</a>
                        </div>
                    </li> 
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Otro</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                            <a class="nav-link text-white" href="Devolucion.jsp">&nbsp;Devolucion</a>
                        </div>
                    </li> 
                     
                              
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../CerrarSesion">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    <br>
    <br>
    
    
<!--Contenedor principal de la pagina-->
<div class="container-fluid">
    <!--HAciendo una fila para dividir el contenedor en columnas-->
    <div class="row">
        <!--Columna de la izquierda-->
        <div class="col-xs-3 col-md-3 izquierda">            
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="container">
                    <form action="" method="post">
                        <div class="row">                        
                            <div class="col-xs-2">
                                <input id="clave" name="clave" class="form-control" type="text" placeholder="ingresa clave a buscar"/>
                            </div>
                        </div>
                        <div class="row">                        
                            <div class="col-xs-2">
                              <input type="submit" value="buscar"/>       
                            </div>
                        </div>                    
                    </form>
                </div>
                <hr/>
                <table class="tabla">
                    <tr>
                    	<td>
                    		<a href="AgregarOrdenVenta.jsp">Agregar Orden de venta</a>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<a href="ModificarOrdenVenta.jsp">Modificar Orden de Venta</a>
                        </td>
                    </tr>
                </table>
              </div>
            </div>            
        </div>
        <!--Columna Central-->
        <div class="col-xs-8 col-md-8 central table-responsive jumbotron">
        <h1 class="text-uppercase text-center">Agregar Orden de Venta</h1>
        <br>
        <form method="POST" autocomplete="off" action="../OrdendeVenta"  id="formFactura" name="for">
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <label for="clave">Clave Orden de Venta:</label>
                    <input type="text" class="form-control col-12" name="claveOrdendeVenta" id="claveOrdendeVenta" required="required">
                </div>
                <div class="col-xs-4 col-md-4">
                </div>
                 <div class="col-xs-4 col-md-4">
                    <label for="fecha">Fecha:</label>
                    <input type="date" class="form-control col-12" name="fechaOrdendeVenta" id="fechaOrdendeVenta" required="required">
                </div>
                <div class="col-xs-12 col-md-12">
                </div>
                <br>
                <div class="col-xs-12 col-md-12">
                    <h5 class="text-uppercase text-center">Datos del Cliente:</h5>
                </div>
                <br>
                <div class="col-xs-4 col-md-4">
                    <label for="nombreclienteVenta">ID del cliente:</label>
                    <Select  class="form-control" id="nombreclienteVenta" name="nombreclienteVenta" required="required">
                              <option value="x">Seleccione...</option>
                            <%
                                LinkedList<Cliente> h =ConsultasGenerales.opcionesCliente();
                                for (int i=0;i<h.size();i++)
                                {                                   
                                   out.println("<option value='"+h.get(i).getId()+"'>"+h.get(i).getId()+"</option>");                                   
                                }
                            %> 
                        </select>
                </div>
                <div class="col-xs-8 col-md-8">
                    <label for="clave">Dirección:</label>
                    <Select  class="form-control" id="direccionOrdendeVenta" name="direccionOrdendeVenta" required="required">
                              <option value="x">Seleccione...</option>
                            <%
                                LinkedList<Cliente> d =ConsultasGenerales.opcionesCliente();
                                for (int i=0;i<d.size();i++)
                                {                                   
                                   out.println("<option value='"+d.get(i).getDireccion()+"'>"+d.get(i).getDireccion()+"</option>");                                   
                                }
                            %> 
                        </select>
                </div>
                <div class="col-xs-12 col-md-12">
                </div>
                <br>
                <div class="col-xs-12 col-md-12">
                    <h5 class="text-uppercase text-center">Datos del Producto:</h5>
                </div>
                <br>
                <br>
                <div class="col-xs-4 col-md-4">
                    <label for="clave">Clave del producto:</label>
                    <Select  class="form-control" id="claveproducto" name="claveproducto" required="required">
                              <option value="x">Seleccione...</option>
                            <%
                                LinkedList<Producto> b =ConsultasGenerales.opcionesProducto();
                                for (int i=0;i<b.size();i++)
                                {                                   
                                   out.println("<option value='"+b.get(i).getId()+"'>"+b.get(i).getClave()+"</option>");                                   
                                }
                            %> 
                        </select>
                </div>
                <div class="col-xs-4 col-md-4">
                          <label for="proveedor">Nombre del Vendedor:</label>
                          <Select  class="form-control" id="vendedorOrdendeVenta" name="vendedorOrdendeVenta" required="required">
                              <option value="x">Seleccione...</option>
                               <%
                                    LinkedList<Proveedor> a =ConsultasGenerales.opcionesProveedor();
                                    for (int i=0;i<a.size();i++)
                                    {                                   
                                        out.println("<option value='"+a.get(i).getNombre()+"'>"+a.get(i).getNombre()+"</option>");                                   
                                    }
                                %>
                           </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <label for="cantidad">Cantidad:</label>
                    <input type="number" class="form-control col-12" name="cantidadOrdendeVenta" id="cantidadOrdendeVenta" required="required">
                </div>
                <div class="col-xs-2 col-md-2">
                </div>
               
                <div class="col-xs-12 col-md-12">
                    <label for="direccion">Descripción:</label>
                    <input type="text" class="form-control col-12" name="descripcionOrdendeVenta" id="direccionOrdendeVenta" required="required">
                </div>
                <br>
                <br>
                <div class="col-xs-12 col-md-12">
                    <br>
                    <center>
                    <div>
                    <input type="submit" value="Agregar Orden de venta" class="btn btn-primary"/>    
                    </div>
                    </center>  
                </div>
             </div>        
        </form>
        
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha table-responsive">
        </div>
    </div>
</div>
</body>
</html>
        

    
    
    
    
    
    
    
    
    
    
    