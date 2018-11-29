/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 $(document).ready(function() {
                $('#buscar').click(function(event) {
                        var clavebuscar = $('#clave').val();        
                        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                        $.post('../BuscarPorIDProducto', {
                                clavep : clavebuscar
                        }, function(responseText) {                            
                                $('#tabla').html(responseText);
                        });
                });
        });
        $(document).ready(function() {
                $('#buscarentrada').click(function(event) {
                        var clavebuscar = $('#clave').val();        
                        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                        $.post('../Pentrada', {
                                clavep : clavebuscar
                        }, function(responseText) {                            
                                $('#tablas').html(responseText);
                        });
                });
        });