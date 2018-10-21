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
    <div class="row">
    <div class="col-sm-3 ">
        <div class="card" text-center>
            <div class="card-body">
                <label class="card-text">Buscar id de merma</label><br>
                <input type="text" id="bmerma" name="bmerma" class="form-control form-control-sm" />
                <input id="bomerma" type="submit" value="Buscar" class="btn btn-success"/><br><br>
                <p class="card-text">Eliminar producto de merma</p>
                <input type="text" id="emerma" name="emerma" class="form-control form-control-sm" />
                <input id="boemerma" type="submit" value="Eliminar" class="btn btn-success"/><br><br>
                <hr>
                <a href="InventarioMermaAgregar.jsp"><label class="card-text">Nuevo producto de merma</label></a>
                <a href="InventarioMermaModificar.jsp"><label class="card-text">Modificar producto de merma</label></a>
                <hr>
                <p class="card-text">Reporte</p>
                <input id="bogmerma" type="submit" value="Generar" class="btn btn-success"/>
            </div>
        </div>
    </div>
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
    </div>
    <!--/.Panel-->
</div>
    
    </body>
</html>