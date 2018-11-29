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
public class OrdenVenta {
    
    int idordenventa;
    String clave_ordenventa;
    String fecha;
    String direccion;
    String cantidad;
    String descripcion_venta;
    String vendedor;
    String precio_unitario;
    String precio_total;

    public int getIdordenventa() {
        return idordenventa;
    }

    public String getClave_ordenventa() {
        return clave_ordenventa;
    }

    public String getFecha() {
        return fecha;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getCantidad() {
        return cantidad;
    }

    public String getDescripcion_venta() {
        return descripcion_venta;
    }

    public String getVendedor() {
        return vendedor;
    }

    public String getPrecio_unitario() {
        return precio_unitario;
    }

    public String getPrecio_total() {
        return precio_total;
    }

    public void setIdordenventa(int idordenventa) {
        this.idordenventa = idordenventa;
    }

    public void setClave_ordenventa(String clave_ordenventa) {
        this.clave_ordenventa = clave_ordenventa;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public void setDescripcion_venta(String descripcion_venta) {
        this.descripcion_venta = descripcion_venta;
    }

    public void setVendedor(String vendedor) {
        this.vendedor = vendedor;
    }

    public void setPrecio_unitario(String precio_unitario) {
        this.precio_unitario = precio_unitario;
    }

    public void setPrecio_total(String precio_total) {
        this.precio_total = precio_total;
    }
    
    

   
    
   

  
}
