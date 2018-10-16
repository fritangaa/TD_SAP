<%-- 
    Document   : InventarioMerma
    Created on : 6/10/2018, 05:36:57 PM
    Author     : claudia
--%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.sap.inventario.clases.Consultas"%>
<%@page import="com.sap.inventario.clases.Merma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inventario Merma</title>
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
                </ul>   
               <form class="form-inline my-2 my-lg-0" action="../index.jsp">                
                    <button class="btn-outline-primary barra text-white my-2 my-sm-0" id="cerrarSesion" type="submit">Cerrar Sesi&oacute;n</button>
                </form>
            </div>
        </nav>
    </header>      
    <br/><br/>
    <!--/.Panel-->
    <!--Panel-->
    <div class="col-sm-9">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title">Merma</h3>
                <!--TABLA MERMA NORMAL  -->
                <div class="col-xs-12 col-md-12 central table-responsive">              
                        <table class="tablas table">
                            <tr>                                
                                <th>Clave merma</th>
                                <th>Clave producto</th>
                                <th>Cantidad</th>
                                <th>Descripcion</th>
                                <th>Fecha</th>
                                <th>Tipo merma</th>                               
                            </tr>
                            <%
                        LinkedList<Merma> lista =Consultas.consultaMerma();
                        for (int i=0;i<lista.size();i++)
                        {
                           out.println("<tr>");                               
                           out.println("<td>"+lista.get(i).getClavemerma()+"</td>");
                           out.println("<td>"+lista.get(i).getClavep()+"</td>");
                           out.println("<td>"+lista.get(i).getCantidad()+"</td>");
                           out.println("<td>"+lista.get(i).getDescripcion()+"</td>");
                           out.println("<td>"+lista.get(i).getFecha()+"</td>");
                           out.println("<td>"+lista.get(i).getTipoMerma()+"</td>");
                           out.println("</tr>");
                        }
                    %>
                        </table>               
            </div>
                <!--FIN TABLA MN-->
            </div>
        </div>
    </div>
    <!--/.Panel-->
</div>
    
    </body>
</html>