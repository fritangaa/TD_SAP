
<%@page import="com.sap.inventario.clases.Producto"%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.sap.inventario.clases.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario Producto</title>
    <!-- Bootstrap -->
    
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
    <!--Panel-->
    <div class="row">
    <div class="col-sm-3 ">
        <div class="card" text-center>
            <div class="card-body">
                <h4>Consulta</h4>
                 <div class="col-xs-offset-1 col-md-offset-1 central">
                  <!---BARRA DE LA DERECHA---------------------------------------------------------->
                </div>
                    <div class="col-xs-10 col-md-10 central">
                        <form action="../BuscarPorIDProducto" method="post" >
                        <h5>Buscar ID de producto</h5>
                        <input  name="clave" id="clave" type="text" placeholder="ID producto"/><br><br> 
                <input id="buscar" type="button" value="Buscar" class="btn btn-success"/><br><br>
                </form>
                <!--FIN DE BARRA-------------------------------------------------------------------->
            <!----TABLA INICIO------------------------------------------------------------------------->        
                
              </div>
            </div>
        </div>
    </div>
    <div class="col-sm-9" id="tabla" >
        <div class="card">
            <div class="card-body">
      <div class="col-xs-offset-6 col-md-offset-6 central">
              <div class="container">
                <h4>Productos</h4>
              </div>
            </div>
                <div class="table-striped table table-bordered table-hover">
    <table class="tablap">
      <tr>
        <th>
          clave Producto
        </th>
        <th>
          Nombre Producto
        </th>
        <th>
          tipo
        </th>
        <th>
          Unidad
        </th>
       <th>
          Costo de producto
        </th>
       <th>
          Costo de venta
        </th>
        <th>
          iva 
        </th>
      <th>
          Cantidad
        </th>
       <th>
          Monto Total
        </th>
        <th>
          Subastar
        </th>
      </tr>
      <%
                        LinkedList<Producto> lista =Consultas.consultaProducto();
                        for (int i=0;i<lista.size();i++)
                        {
                           out.println("<tr>");                               
                           out.println("<td>"+lista.get(i).getClave()+"</td>");
                           out.println("<td>"+lista.get(i).getNombre()+"</td>");
                           out.println("<td>"+lista.get(i).getTipo()+"</td>");
                           out.println("<td>"+lista.get(i).getUnidad()+"</td>");
                           out.println("<td>"+lista.get(i).getCostounitario()+"</td>");
                           out.println("<td>"+lista.get(i).getCostototal()+"</td>");
                           out.println("<td>"+lista.get(i).getIva()+"</td>");
                           out.println("<td>"+lista.get(i).getCantidad()+"</td>");
                           out.println("<td>"+lista.get(i).getMontototal()+"</td>");
                           out.println("<td> "
                                   + "<form action=../BuscarPorIDProducto method=post >"
                                   + "<input id=subastar type=button value=Subastar class=btn btn-success/><br>"
                                   + "</form>"
                                   + "<br>"
                                   + "</td>");
                           out.println("</tr>");
                        }
                    %>
    </table>
                </div>
       </div>
        </div>
    </div>     
    
    </div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jQuery.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>
