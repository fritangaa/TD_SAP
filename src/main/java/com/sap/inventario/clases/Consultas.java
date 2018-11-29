/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.clases;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Properties;

/**
 *
 * @author claudia
 */
public class Consultas {
    public static LinkedList consultaProducto() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from producto");
        while (rs.next()) {
            Producto p=new Producto();
            p.setClave(rs.getString("clave"));
            p.setNombre(rs.getString("nombre"));
            p.setTipo(rs.getString("tipo"));
            p.setUnidad(rs.getString("unidad"));
            p.setCostounitario(rs.getDouble("costounitario"));
            p.setCostototal(rs.getDouble("precio_venta"));
            p.setIva(rs.getDouble("iva"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setMontototal(rs.getDouble("monto_total"));
            l.add(p);
        }
        conn.close();
        return l;
    }  
    public static LinkedList consultaSalidas() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select p.clave,p.nombre,d.cantidad,d.precio_unitario,d.precio_total from producto p, detalle_ordendeventa d where d.idproducto=p.id");
        while (rs.next()) {
           Producto p=new Producto();
            p.setClave(rs.getString("clave"));
            p.setNombre(rs.getString("nombre"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setCostounitario(rs.getDouble("precio_unitario"));
            p.setCostototal(rs.getDouble("precio_total"));
            l.add(p);
        }
        conn.close();
        return l;
    }  
    public static LinkedList consultaEntradas() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select p.clave,p.nombre,d.cantidad,p.costounitario,p.iva,p.precio_venta"
                + " from producto p,detallecompra d where p.id=d.id_producto;");
       
        while (rs.next()) {
            Producto p=new Producto();
            p.setClave(rs.getString("clave"));
            p.setNombre(rs.getString("nombre"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setCostounitario(rs.getDouble("costounitario"));
        p.setCostototal(rs.getDouble("precio_venta"));
            p.setIva(rs.getDouble("iva"));
          l.add(p);
        }
        conn.close();
        return l;
    }
    public static LinkedList consultaMerma() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
         LinkedList <Merma> l=new LinkedList<Merma>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("select * from merma");
        while (rs.next()) {
            Merma p=new Merma();
            p.setClavemerma(rs.getString("clave_merma"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setDescripcion(rs.getString("motivo"));
            p.setFecha(rs.getString("fecha"));
            p.setTipoMerma(rs.getString("tipo_merma"));
            p.setClavep(rs.getString("producto"));
            l.add(p);
        }
        conn.close();
        return l;
    
    }
    public static LinkedList consultaReq() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
         LinkedList <Requisicion> l=new LinkedList<Requisicion>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(" select p.clave,r.clave,r.cantidad,"
                 + "r.fecha_req,r.fecha_ent,r.comentarios from requisicion r,producto p where p.id=r.producto");
        while (rs.next()) {
            Requisicion p=new Requisicion();
            p.setClavep(rs.getString("clave"));
            p.setClave(rs.getString("clave"));
            p.setCantidad(rs.getInt("cantidad"));
            p.setFechareq(rs.getString("fecha_req"));
            p.setFechaent(rs.getString("fecha_ent"));
            p.setComentarios(rs.getString("comentarios"));
            l.add(p);
        }
        conn.close();
        return l;
    
    }
    public static void Existencia() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Producto> l=new LinkedList<Producto>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select clave from producto");
        int count = 0;

        /*
        
while (rs.next()) {
    ++count;
}


        */
        while (rs.next()) {
        ++count;
        }
        if (count != 0) {
        
        }
        conn.close();
    }
}
    