/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.Compras;

import com.sap.contabilidad.clases.Proveedor;
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
     public static LinkedList consultaProveedor() throws SQLException,ClassNotFoundException{
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Proveedor> l=new LinkedList<Proveedor>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from proveedores");
        while (rs.next()) {
            Proveedor p=new Proveedor();
            p.setId(rs.getInt("id"));
            p.setNombre(rs.getString("nombre"));
            p.setRfc(rs.getString("rfc"));
            p.setDireccion(rs.getString("direccion"));
            p.setCodpos(rs.getString("codpos"));
            p.setEdo(rs.getString("edo"));
            p.setRazon(rs.getString("razon"));
            l.add(p);
        }
        conn.close();
        return l;
    }  
}
