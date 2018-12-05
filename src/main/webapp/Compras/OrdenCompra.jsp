<%-- 
    Document   : OrdenCompra
    Created on : 11/10/2018, 07:55:53 PM
    Author     : Marii y Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <link href="../Recursos/Bootstrap/css/estilos.css" rel="stylesheet">
        <script src="../js/validaciones.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Recursos/Bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/librerias/jquery-3.3.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.js"></script>
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
        <br>
        <br>
        <!--------BARRA-->
    <div class="row">
    <div class="col-sm-3">
        <div class="card" text-center>
              <form method="POST" >
                            <center>
                                <label>Buscar&nbsp;Orden&nbsp;de&nbsp;Compra</label>
                                
                           <br>
                           <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                    Todas
                            </label>
                           </div>
                           <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Por&nbsp;Folio
                            </label>
                           </div><br>
                           <input type="text" name="rfcprov" placeholder="Folio" class="form-control" id="codprod" required>
                            <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Por&nbsp;Fecha
                            </label>
                           </div><br>
                           <input type="date" name="rfcprov" placeholder="Fecha" class="form-control" id="codprod" required><div>
                                <br>
                            </div>
                            <input type="submit" value="Buscar" style="background-color:#3366FF" name="buscar" class="btn btn-primary">
                            <br>
                            </center>
                        </form>
            <hr>
            
         <form method="POST" action="Nuevo_orden.jsp"  >
             <center>
                            <div id="titulo" class="col-12">
                                <h3>Orden de compra</h3>
                                </div><br>
                            <input type="submit" value="Agregar"  name="nuevo" class="btn btn-success">    
                             </form><div><br></div>
                            <form method="POST" action="Eli_orden.jsp" >                                
                            <input type="submit" value="Eliminar"  name="eliminar" class="btn btn-success">      
                        </form><div><br></div>
                            <form method="POST" action="Edit_orden.jsp" >                                
                            <input type="submit" value="Editar"  name="editar" class="btn btn-success">  
                        </form>
</center>
                        <br>
                    </div>         
            </div>
       
        <!-- Seccion central --> 
              <div class="col-sm-8">
        <div class="card">
            <div class="card-body">
      <div class="col-xs-offset-6 col-md-offset-6 central">
                            <center><div>
                                    <h3>Ordenes de Compra</h3>
                            </div></center>
                         <div class="table-responsive">
                             <form method="POST" action=".../Edit_orden.jsp">
                             <table class="table table-bordered">
                                    <thead>
                                        <tr class="active">
                                            <th scope="col">Folio</th>
                                            <th scope="col">Proovedor</th>
                                            <th scope="col">Fecha Orden</th>
                                            <th scope="col">Fecha Entrega</th>
                                            <th scope="col">Detalle</th>
                                        </tr>
                                    </thead>                                    
                                    <tbody>                                       
                                        <tr id="modalInter">
                                        <td scope="col">0001</td>
                                            <td scope="col">José Perez</td>
                                            <td scope="col">15/09/18</td>
                                            <td scope="col">18/09/18</td>
                                            <td><div class="checkbox">
                                                <label>
                                        <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                                </label>
                                        </div></td>
                                        </tr>  
                                        <tr id="modalInter">
                                        <td scope="col">0002</td>
                                            <td scope="col">José Perez</td>
                                            <td scope="col">20/10/18</td>
                                            <td scope="col">21/10/18</td>
                                            <td><div class="checkbox">
                                                <label>
                                        <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                                </label>
                                        </div></td>
                                        </tr> 
                                        <tr id="modalInter">
                                        <td scope="col">0003</td>
                                            <td scope="col">José Perez</td>
                                            <td scope="col">30/09/18</td>
                                            <td scope="col">15/10/18</td>
                                            <td><div class="checkbox">
                                                <label>
                                        <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                                </label>
                                        </div></td>
                                        </tr> 
                                    </tbody>
                                    
                                </table>
                                 </form>
                         </div>
                    </div>
                </div>
            </div>            
              </div>
        
          </div>
    </body>
</html>
