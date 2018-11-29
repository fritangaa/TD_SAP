/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.ventas.clases;

/**
 *
 * @author asus
 */
public class Factura {
    
    int id;
    String clave;
    String fecha;
    String tipo;
    String nombre_cliente;
    String nombre_proveedor;
    String total;
    

    public int getId() {
        return id;
    }

    public String getClave() {
        return clave;
    }

    public String getFecha() {
        return fecha;
    }

    public String getTipo() {
        return tipo;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public String getNombre_proveedor() {
        return nombre_proveedor;
    }

    public String getTotal() {
        return total;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    public void setNombre_proveedor(String nombre_proveedor) {
        this.nombre_proveedor = nombre_proveedor;
    }

    public void setTotal(String total) {
        this.total = total;
    }
    
   

}
