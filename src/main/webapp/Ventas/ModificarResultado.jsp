<%-- 
    Document   : ModificarResultado
    Created on : 12/10/2018, 2:30:05 AM
    Author     : asus
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList lista = (ArrayList) request.getSession().getAttribute("cliente");
%>
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
                            <a class="nav-link text-white" href="ModificarCliente.jsp">&nbsp;Modificar cliente</a>
                                                             
                        </div>
                    </li>                          
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Atencion</a>
                        <div class="dropdown-menu bg-primary" aria-labelledby="cuentas">
                 
                            <a class="nav-link text-white" href="Orden de Venta.jsp">&nbsp;Orden de Venta</a>
                                                             
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle text-white" id="cuentas" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Salida Ventas</a>
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
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>
    <br>
    <br>
    <div class="col-sm-9 central" style="width: auto; margin: auto auto;" >
        <div class="card" text-center>
            <div class="card-body">
    
    <div class="row"><!-- INICIO DE SECCION PRINCIPAL -->
                <div class="container-fluid">
                    <center>
                        <form method="POST" autocomplete="off" action="../ActualizarModificacionCliente" onsubmit="return valida();" id="formContratarEmp" name="formContratarEmp">
                            <table>
                                 <h1 class="text-uppercase text-center">Modificar Cliente</h1>
                                
                                <tr>
                                    <td>
                                        Id Cliente:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Ingresar clave" class="form-control col-12" name="idModificarCli" id="idModificarCli" value="<%= lista.get(0) %>" required="required" readonly="readonly">
                                    </td>
                                    <td>
                                        Estado:
                                    </td>
                                    <td>
                                      <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="estadoClientes" id="estadoClientes" value="<%= lista.get(7) %>" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Nombre:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Ingresar nombre" class="form-control col-12" name="nombreClientes" id="nombreClientes" value="<%= lista.get(1) %>"  required="required">
                                    </td>
                                    <td>
                                        Pais:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="paisClientes" id="paisClientes" value="<%= lista.get(8) %>" required="required"> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Apellido Paterno:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Apellido paterno" class="form-control col-12" name="apClientes" id="apClientes" value="<%= lista.get(2) %>"  required="required">
                                    </td>
                                    <td>
                                        RFC:
                                    </td>
                                    <td>
                                        <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="rfcClientes" id="rfcClientes" value="<%= lista.get(9) %>"required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Apellido Materno:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Apellido materno" class="form-control col-12" name="amClientes" id="amClientes" value="<%= lista.get(3) %>"  required="required">
                                    </td>
                                    <td>
                                        Cuenta Contable:
                                    </td>
                                    <td>
                                       <input type="number" placeholder="Escribe aqui" class="form-control col-12" name="cuentacontableClientes" id="cuentacontableClientes" value="<%= lista.get(10) %>" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Direccion:
                                    </td>
                                    <td>
                                       <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="direccionClientes" id="direccionClientes" value="<%= lista.get(4) %>" required="required">
                                    </td>
                                    <td>
                                        Cuenta Bancaria:
                                    </td>
                                    <td>
                                       <input type="number" placeholder="Escribe aqui" class="form-control col-12" name="cuentabancariaClientes" id="cuentabancariaClientes" value="<%= lista.get(11) %>" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        C.P:
                                    </td>
                                    <td>
                                       <input type="number" placeholder="Escribe aqui" class="form-control col-12"name="cpClientes" id="cpClientes" value="<%= lista.get(5) %>" required="required">
                                    </td>
                                    <td>
                                        Razon Social:
                                    </td>
                                    <td>
                                      <input type="text" placeholder="Escribe aqui" class="form-control col-12"name="razonsocialClientes" id="razonsocialClientes" value="<%= lista.get(12) %>" required="required">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Municipio:
                                    </td>
                                    <td>
                                      <input type="text" placeholder="Escribe aqui" class="form-control col-12" name="municipioClientes" id="municipioClientes" value="<%= lista.get(6) %>" required="required">
                                    </td>
                                    
                                </tr>
                                <br>
                                <tr>
                                    <br>
                                    <td colspan="8" align="center">
                                        <input type="submit" value="Modificar Cliente" class="btn btn-primary"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </center>
                </div>
            </div><!-- FIN DE SECCION PRINCIPAL -->
            </div>
        </div>
    </div>
 
    
    </body>
</html>
