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
public class Producto {
    
    int id;
    String clave;
    String nombre;
    String tipo;
    String unidad;
    double costounitario;
    double precio_venta;
    double iva;
    int cantidad;
    double montototal;

    public void setId(int id) {
        this.id = id;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public void setCostounitario(double costounitario) {
        this.costounitario = costounitario;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public void setIva(double iva) {
        this.iva = iva;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public void setMontototal(double montototal) {
        this.montototal = montototal;
    }

    public int getId() {
        return id;
    }

    public String getClave() {
        return clave;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public String getUnidad() {
        return unidad;
    }

    public double getCostounitario() {
        return costounitario;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public double getIva() {
        return iva;
    }

    public int getCantidad() {
        return cantidad;
    }

    public double getMontototal() {
        return montototal;
    }
   
}
