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
public class Devolucion {
    
    int iddevolucion;
    String clave_devolucion;
    String fecha;
    String motivo; 

    public int getId() {
        return iddevolucion;
    }

    public String getClave_devolucion() {
        return clave_devolucion;
    }

    public String getFecha() {
        return fecha;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setId(int id) {
        this.iddevolucion = id;
    }

    public void setClave_devolucion(String clave_devolucion) {
        this.clave_devolucion = clave_devolucion;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }
    
     
}
