<%-- 
    Document   : Compras
    Created on : 25/09/2018, 07:40:03 PM
    Author     : Marifer y Erick
--%>

<%@page import="com.sap.Compras.Consultas"%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.sap.contabilidad.clases.Proveedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Recursos/css/compras.css" rel="stylesheet">
        <script src="../Recursos/js/compras.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Recursos/Bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/librerias/jquery-3.3.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.js"></script>

<link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <title>Compras</title>

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
        <div id="principal">
            <div class="container-fluid">
                <div class="row">
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <div class="row">
                    <div style="background-color:#F5F5F5;" class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-style-5"> <!-- Seccion izquierda -->
                        <form method="POST" >
                            <center><div id="titulo" class="col-12">
                                    <h3>Buscar&nbsp;Proveedor</h3>
                                </div></center>
                            <br>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                    Todos
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Por&nbsp;Clave
                                </label>
                            </div><br>
                            <center><input type="text" name="rfcprov" placeholder="Clave" class="form-control" id="codprod" required></center>
                            <div>
                                <br>
                            </div>
                            <center><input type="submit" value="Buscar" style="background-color:#3366FF" name="buscar" class="btn btn-primary"></center>
                            <br>
                        </form>

                        <form method="POST" action="Nuevo_prod.jsp"  >
                            <div>
                                <br>
                            </div>
                            <center><div id="titulo" class="col-12">
                                    <h3>Proveedor</h3>
                                </div></center><br>
                            <center><input type="submit" value="Agregar"  name="nuevo" class="btn btn-success"></center>      
                        </form><div><br></div>
                        <form method="POST" action="Eli_prod.jsp" >                                
                            <center><input type="submit" value="Eliminar"  name="eliminar" class="btn btn-success"></center>      
                        </form>
                        <br>
                        <form method="POST" action="Edit_prod.jsp" >                                
                            <center><input type="submit" value="Editar"  name="editar" class="btn btn-success"></center>      
                        </form>
                        <br>
                    </div>   

                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><!-- Seccion central --> 

                        <center><div>
                                <h3>Proveedores</h3>
                            </div></center>
                        <div class="table-responsive"><table class="table table-bordered">
                                <thead>
                                    <tr class="active">
                                        <th scope="col"><center>Id</center></th>
                                <th scope="col"><center>Nombre</center></th>
                                <th scope="col"><center>RFC</center></th>      
                                <th scope="col"><center>Direccion</center></th>
                                <th scope="col"><center>Codigo Postal</center></th>
                                <th scope="col"><center>Edo</center></th>
                                <th scope="col"><center>Razon</center></th>
                                <th scope="col"><center>Formulario</center></th>
                                </tr>
                                </thead>
                                <tbody>
                                    <%
                        LinkedList<Proveedor> lista =Consultas.consultaProveedor();
                        for (int i=0;i<lista.size();i++)
                        {
                           out.println("<tr>");                               
                           out.println("<td>"+lista.get(i).getId()+"</td>");
                           out.println("<td>"+lista.get(i).getNombre()+"</td>");
                           out.println("<td>"+lista.get(i).getRfc()+"</td>");
                           out.println("<td>"+lista.get(i).getDireccion()+"</td>");
                           out.println("<td>"+lista.get(i).getCodpos()+"</td>");
                           out.println("<td>"+lista.get(i).getEdo()+"</td>");
                           out.println("<td>"+lista.get(i).getRazon()+"</td>");
                           out.println("<td><a class='nav-link' href='Formulario.jsp' >Orden de compra</td>");
                           out.println("</tr>");
                        }
                    %>
                                </tbody>
                            </table></div>
                        <br>
                       
                    </div>
                </div>
                
            </div>            

        </div>

    </body>
</html>
