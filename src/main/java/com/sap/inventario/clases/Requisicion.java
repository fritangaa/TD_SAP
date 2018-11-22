/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.clases;

/**
 *
 * @author claudia
 */
public class Requisicion {
    String clave;
    String clavep;
    int cantidad;
    String Fechareq;
    String Fechaent;
    String comentarios;


    
    

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getClavep() {
        return clavep;
    }

    public void setClavep(String clavep) {
        this.clavep = clavep;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getFechareq() {
        return Fechareq;
    }

    public void setFechareq(String Fechareq) {
        this.Fechareq = Fechareq;
    }

    public String getFechaent() {
        return Fechaent;
    }

    public void setFechaent(String Fechaent) {
        this.Fechaent = Fechaent;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }
    
    
}
