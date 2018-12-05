<%-- 
    Document   : Factura
    Created on : 12/10/2018, 1:44:05 AM
    Author     : asus
--%>

<%@page import="com.sap.ventas.clases.Proveedor"%>
<%@page import="com.sap.ventas.clases.Cliente"%>
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
                            <a class="nav-link text-white" href="Subastas.jsp">&nbsp;Subastar</a>
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
                    		<a href="AgregarFactura.jsp">Agregar Factura</a>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<a href="ModificarFactura.jsp">Modificar Factura</a>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<a href="ImprimirFactura.jsp">Imprimir Factura</a>
                        </td>
                    </tr>
                </table>
              </div>
            </div>            
        </div>
        <!--Columna Central-->
        <div class="col-xs-8 col-md-8 central table-responsive jumbotron">
        <h1 class="text-uppercase text-center">Agregar Factura</h1>
        <br>
        <form method="POST" autocomplete="off" action="../Factura"  id="formFactura" name="formFactura">
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <label for="nombrecliente">Clave de Factura:</label>
                    <input type="text" class="form-control col-12" name="claveFactura" id="claveFactura" required="required">
                </div>
                <div class="col-xs-4 col-md-4">
                    <label for="fechaFactura">Fecha:</label>
                    <input type="date" class="form-control col-12" name="fechaFactura" id="fechaFactura" required="required">
                </div>
                <div class="col-xs-4 col-md-4">
                    <label for="tipoFcatura">Tipo:</label>
                    <input type="number" placeholder="0 cliente/1 proveedor" class="form-control col-12" name="tipoFactura" id="tipoFactura" required="required">
                </div>
            </div>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                          <label for="cliente">Seleccione cliente:</label>
                          <Select  class="form-control" id="cliente" name="cliente" required="required">
                              <option value="x">Seleccione...</option>
                            <%
                                LinkedList<Cliente> l =ConsultasGenerales.opcionesCliente();
                                for (int i=0;i<l.size();i++)
                                {                                   
                                   out.println("<option value='"+l.get(i).getId()+"'>"+l.get(i).getNombre()+""+" "+""+l.get(i).getApe_pat()+""+" "+""+l.get(i).getApe_mat()+"</option>");                                   
                                }
                            %> 
                          </select>
                </div>
                <div class="col-xs-4 col-md-4">
                          <label for="proveedor">Seleccione al Proveedor:</label>
                          <Select  class="form-control" id="proveedor" name="proveedor" required="required">
                              <option value="x">Seleccione...</option>
                               <%
                                    LinkedList<Proveedor> a =ConsultasGenerales.opcionesProveedor();
                                    for (int i=0;i<a.size();i++)
                                    {                                   
                                        out.println("<option value='"+a.get(i).getId()+"'>"+a.get(i).getNombre()+"</option>");                                   
                                    }
                                %>
                           </select>
                </div>
                <div class="col-xs-4 col-md-4">
                     <label for="tipoFcatura">Total:</label>
                     <input type="number" placeholder="Escribe aqui" class="form-control col-12" name="totalFactura" id="idordendeventaFactura" required="required">
                </div>
            </div>
                <br>
                <br>
                <center>
                <div>
                <input type="submit" value="Agregar factura" class="btn btn-primary"/>    
                </div>
                </center>
               
                
        </form>
        </div>
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha table-responsive">
        </div>
</div>
</body>
</html>
   
