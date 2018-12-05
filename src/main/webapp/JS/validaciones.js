function compras(){
var op1 = document.getElementById('ptionsRadios1').checked;
var op2 = document.getElementById('ptionsRadios2').checked;
var op3 = document.getElementById('ptionsRadios2').checked;

if(!op1 && !opt3 && !op3){
  alert(' seleccionado una opcion');
  return false;
}
    
}


function agr_prov(){
    
    var rfc = document.getElementById('rfc').value;
    if (rfc.length>14 || rfc==="") {
        alert('La longitud del RFC no puede ser mayor a 13 caracteres');
       return false;
    }
    
    var cont=0;
    for (var i = 0; i < rfc.length; i++) {
        
        if (rfc[i]=="-") {
            cont++;
        }
     }
    
    if (cont<3) {
         alert('RFC no valido \n Ejemplo: ASJ-140318-5L6');
       return false; 
    }
    
      var razon;
    razon=document.getElementById("social").value;
    if (razon==="") {
        alert("campo razon  vacio");
        return false;
    
    }
    
    var tel = document.getElementById('numpro').value;
    if (tel.length>10) {
        alert('La longitud del RFC no puede ser mayor a 13 caracteres');
        return false;
    }
    
     var dir = document.getElementById('dirprov').value;
    if (dir==="") {
        alert('Campo direccion vacio');
        return false;
    }
    
    //campo telefono
    var tel=document.getElementById('numprov').value;
    
     if (tel==="") {
     alert('El campo telefono se encuentra vacio');  
     return false;
    
    }
    
     //campo correo
    var correo;
    correo=document.getElementById('Correo').value;
     if (correo==="") {
     alert('el campo correo vacio');  
     return false;
    }
    
     //campo estado
    var estado=document.getElementById('agr_est').value;
    if(estado==="Ciudad/Estado"){
        alert('Debes elegir un estado');
         return false;
    }
    
    //campo cuenta contable
 var cuenta=document.getElementById('cuenta_agrprov').value;
   
     if (cuenta==="") {
     alert('El campo cuenta contable se encuentra vacio');  
       return false;
    }
    
    //campo limite de credito
 var limcred=document.getElementById('limcred_agrprov').value;
   
     if (limcred==="") {
     alert('El campo limite de creditp se encuentra vacio');  
       return false;
    }
    
     //campo dias de credito
 var daycred=document.getElementById('daycred_agr').value;
    
     if (daycred==="") {
     alert('El campo dias de credito se encuentra vacio');  
       return false;
    }
    //Campo banco
    var banco=document.getElementById('banco_agr').value;
   
     if (banco==="Banco") {
     alert('El campo banco vacio'); 
       return false;
     
    }
    //campo numero de cuenta
 var clave=document.getElementById('numcuen').value;
    
     if (clave==='') {
     alert('El campo numero de cuenta se encuentra vacio');  
     return false
    }
     //campo clave
 var clave=document.getElementById('clave_cue').value;
    
     if (clave==='') {
     alert('El campo clave cuenta se encuentra vacio');  
     return false
    }
    
    
    
}

function editar_prov(){
    var rfcedit = document.getElementById('rfcedit').value;
    if (rfcedit.length>14 || rfcedit==="") {
        alert('La longitud del RFC no puede ser mayor a 13 caracteres');
       return false;
    }
    
    var cont=0;
    for (var i = 0; i < rfcedit.length; i++) {
        
        if (rfcedit[i]=="-") {
            cont++;
        }
     }
    
    if (cont<3) {
         alert('RFC no valido \n Ejemplo: ASJ-140318-5L6');
       return false; 
    }
    
      var razonedit;
    razonedit=document.getElementById("razoned").value;
    if (razonedit==="") {
        alert("campo razon  vacio");
        return false;
    
    }
    
   
    
     var diredit = document.getElementById('diredit').value;
    if (diredit==="") {
        alert('Campo direccion vacio');
        return false;
    }
    
    //campo telefono
   var teledit = document.getElementById('teledit').value;
    
     if (teledit==="") {
     alert('El campo telefono se encuentra vacio');  
     return false;
    
    }
     
    if (teledit.length>10) {
        alert('La longitud del telefono no puede ser mayor a 10 caracteres');
        return false;
    }
    
     //campo correo
    var correoedit;
    correoedit=document.getElementById('correoedit').value;
     if (correoedit==="") {
     alert('el campo correo vacio');  
     return false;
    }
    
     //campo estado
    var estedit=document.getElementById('estedit').value;
    if(estedit==="Ciudad/Estado"){
        alert('Debes elegir un estado');
          return false;
       
    }
    
    //campo cuenta contable
 var contedit=document.getElementById('contedit').value;
   
     if (cuenta==="") {
     alert('El campo cuenta contable se encuentra vacio');  
       return false;
     
    }
    
    //campo limite de credito
 var limedit=document.getElementById('limedit').value;
   
     if (limcred==="") {
     alert('El campo limite de creditp se encuentra vacio'); 
       return false;
     
    }
    
     //campo dias de credito
 var diasedit=document.getElementById('diasedit').value;
    
     if (diasedit==="") {
     alert('El campo dias de credito se encuentra vacio');  
       return false;
     
    }
    //Campo banco
    var bancoedit=document.getElementById('bancoedit').value;
   
     if (bancoedit==="Banco") {
     alert('El campo banco vacio');  
       return false;
     
    }
    //campo numero de cuenta
 var numcuedit=document.getElementById('numcuedit').value;
    
     if (numcuedit==="") {
     alert('El campo numero de cuenta se encuentra vacio');  
     return false
    }
     //campo clave
 var clavecuedit=document.getElementById('clavecuedit').value;
    
     if (clavecuedit==='') {
     alert('El campo clave cuenta se encuentra vacio');  
     return false
    }
   
 
    
}

function generar_Ord(){
    
    
    var folio=document.getElementById("fol_ord").value;    
    if(folio.length>6 ||folio.length!==6){
        alert('El folio debe contener 6 digitos');
        
        return false;
    }else{
        alert('llevando a cabo el proceso');
        //document.getElementById(id).value="";        
        return true;
    }
    
    var fech_ord=document.getElementById("fech_ord").value;
    if ( fech_ord== null || fech_ord==0 ){
        alert('No se ha indicado la fecha inicial');
        return false;
    } 
    
     var hoy= new Date();
    if (fech_ord>hoy){
        alert('la fecha inicial no puede mayor a la actual');
        document.getElementById('fechaini').value="";
        return false;
    }
    
    
    var fec_ent=document.getElementById("fec_ent").value;
    if ( fec_ent== null || fec_ent==0 ){
        alert('No se ha indicado la fecha final');
        return false;
    } 
    
   
    var fechaent=new Date(document.getElementById('fec_ent').value);    
    var hoy= new Date();
    if (fechaini>fechaent){
        alert('la fecha inicial no puede ser mayor a la fecha de entrega');
        document.getElementById('fechaini').value="";
        return false;
    }
   //campo clave
 var comp=document.getElementById('comp').value;
    
     if (comp==='') {
     alert('El campo comprador se encuentra vacio');  
     return false
    } 
    
    //campo producto
 var proda=document.getElementById('proda').value;
    
     if (proda==='') {
     alert('El campo producto se encuentra vacio');  
     return false
    } 
    
    //campo cantidad
 var cantagr=document.getElementById('cantagr').value;
    
     if (cantagr==='') {
     alert('El campo cantidad se encuentra vacio');  
     return false
    } 
    
    //Campo proveedor
    var provprod=document.getElementById('provprod').value;
   
     if (provprod==="Proveedor") {
     alert('El campo proveedor vacio');  
     
    }
   
    }
    
    function editar_Ord(){
    
    var foledit=document.getElementById("foledit").value;    
    if(foledit.length>6 ||foledit.length!==6){
        alert('El folio debe contener 6 digitos');
        
        return false;
    }
    
    var fechedit=document.getElementById("fechedit").value;
    if ( fechedit== null || fechedit==0 ){
        alert('No se ha indicado la fecha inicial');
        return false;
    } 
    
     var hoy= new Date();
    if (fechedit>hoy){
        alert('la fecha inicial no puede mayor a la actual');
        document.getElementById('fechaini').value="";
        return false;
    }
    
    
    var fecentedit=document.getElementById("fecentedit").value;
    if ( fecentedit== null || fecentedit==0 ){
        alert('No se ha indicado la fecha final');
        return false;
    } 
    
   
    var fechaent=new Date(document.getElementById('fec_ent').value);    
    var hoy= new Date();
    if (fechaini>fechaent){
        alert('la fecha inicial no puede ser mayor a la fecha de entrega');
        document.getElementById('fechaini').value="";
        return false;
    }
   //campo comprador
 var compedit=document.getElementById('compedit').value;
    
     if (compedit==='') {
     alert('El campo comprador se encuentra vacio');  
     return false
    } 
    
    //campo producto
 var prodedit=document.getElementById('prodedit').value;
    
     if (prodedit==='') {
     alert('El campo producto se encuentra vacio');  
     return false
    } 
    
    //campo cantidad
 var cantedit=document.getElementById('cantedit').value;
    
     if (cantedit==='') {
     alert('El campo cantidad se encuentra vacio');  
     return false
    } 
    
    //Campo proveedor
    var provedita=document.getElementById('provedita').value;
   
     if (provedita==="Proveedor") {
     alert('El campo proveedor vacio');  
     
    }
    
   
}


function agrProd(){
    //campo id
 var idprod=document.getElementById('idprod').value;
    
     if (idprod==="") {
     alert('El campo ID se encuentra vacio');  
     return false
    }
    
     //campo nombre
 var nomprod=document.getElementById('nomprod').value;
    
     if (nomprod==="") {
     alert('El campo nombre se encuentra vacio');  
     return false
    }
    
    //campo precio
 var precprod=document.getElementById('precprod').value;
    
     if (precprod==="") {
     alert('El campo precio se encuentra vacio');  
     return false
    }
    
    //campo precio venta
 var ventprod=document.getElementById('ventprod').value;
    
     if (ventprod==="") {
     alert('El campo precio venta se encuentra vacio');  
     return false
    }
    
     //campo proveedor
 var prov=document.getElementById('prov').value;
    
     if (prov==="") {
     alert('El campo proveedor se encuentra vacio');  
     return false
    }
    
}

function editProd(){
    
     //campo nombre
 var nomedit=document.getElementById('nomedit').value;
    
     if (nomedit==="") {
     alert('El campo nombre se encuentra vacio');  
     return false
    }
    
    //campo precio
 var precedit=document.getElementById('precedit').value;
    
     if (precedit==="") {
     alert('El campo precio se encuentra vacio');  
     return false
    }
    
    //campo precio venta
 var ventaedit=document.getElementById('ventaedit').value;
    
     if (ventaedit==="") {
     alert('El campo precio venta se encuentra vacio');  
     return false
    }
    
     //campo proveedor
 var provedit=document.getElementById('provedit').value;
    
     if (provedit==="") {
     alert('El campo proveedor se encuentra vacio');  
     return false
    }
    
}



function listCompra(){
   
   if(!document.getElementById('op1').checked && !document.getElementById('op2').checked && !document.getElementById('op3').checked && !document.getElementById('op4').checked){
alert('Debes seleccionar una opcion');
return false;
}
    
}
    
    
    

