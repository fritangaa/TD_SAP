<%-- 
    Document   : Detalles_req
    Created on : 3/11/2018, 08:04:48 AM
    Author     : claudia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Inventario</title>
    <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="index.jsp">Compras</a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="defaultNavbar1">
      <ul class="nav navbar-nav">
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Proveedores<span class="caret"></span></a>
        	<ul class="dropdown-menu" role="menu">
            	<li><a href="Catalogo_prov.jsp">Catalogo proveedores</a></li>
                <li><a href="Agr_Prov.jsp">Agregar proveedor</a></li>
                 <li><a href="Edit_prov.jsp">Editar proveedor</a></li>
                 <li><a href="Dev_prov.jsp">Devolucion proveedores</a></li>
            </ul>
        </li>
        
         <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Orden de compras<span class="caret"></span></a>
        	<ul class="dropdown-menu" role="menu">
            	<li><a href="Orden_compra.jsp">Generar orden compra</a></li>
                
            </ul>
        </li>
        
       
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Requisiciones<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="Requisicion_compra.jsp">Generar requisicion</a></li>
            
          </ul>
        </li>        
      </ul>
        
<!--      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>-->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Contabilidad.jsp">Cerrar Sesi&oacute;n</a></li>       
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<!--Contenedor principal de la pagina-->
<div class="container-fluid">
    <!--HAciendo una fila para dividir el contenedor en columnas-->
    <div class="row">
        <!--Columna de la izquierda-->
        <div class="col-xs-3 col-md-3 izquierda">            
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="container">
                   
                </div>
                <hr/>
                
                <table class="tabla">
                	<tr>
                    	<td>
                    		<a href="Requisicion_compra.jsp">Encabezado</a>
                        </td>
                    </tr>
                	<tr>
                    	<td>
                    		<a href="Cap_prod_req.jsp">Captura productos</a>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		<a href="Detalles_req.jsp">Detalles</a>
                        </td>
                    </tr>
                    
                </table>
              </div>
            </div>            
        </div>
        
        <!--Columna Central-->
       
          <br>
        <div class="col-xs-8 col-md-8central">
           
            <center> <h4>Detalles</h4>  </center>    
                              
                        <table class="table table-hover table-bordered" id="catalog">
  <thead>
    <tr>
      <th scope="col">Clave</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Cantidad</th>
      <th scope="col">Um</th>
       <th scope="col">Precio</th>
       <th scope="col">Impuesto</th>
       <th scope="col">Importe</th>
       
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>tornillos</td>
     <td>45</td>
    <td>pz</td>
     <td>$54 </td>
     <td>$2.45</td>
     <td>$45.67</td>
     
    </tr>
    <tr>
        
      <th scope="row">2</th>
       <td>tuercas</td>
     <td>45</td>
    <td>pz</td>
     <td>$54 </td>
     <td>$2.45</td>
     <td>$45.67</td>
     
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>arandelas</td>
     <td>45</td>
    <td>pz</td>
     <td>$54 </td>
     <td>$2.45</td>
     <td>$45.67</td>
     
    </tr>
  </tbody>
</table>
        </div>  
          
          <div class="row">       
                                <br/>
                               	
                                <div class="col-xs-3">      
                                    <input type="submit" value="Generar" class="btn-lg"/>
                                </div>
                                
                                
                            </div> 
    
        </div>
        
        </div>
                
      
        <!--columna de la derecha-->
        <div class="col-xs-3 col-md-3 derecha table-responsive">
        </div>
    </div>
  
</div>
</body>
</html>

