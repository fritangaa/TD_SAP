package com.sap.ventas.servlets;

import com.sap.ventas.clases.Cliente;
import com.sap.ventas.clases.Proveedor;
import com.sap.ventas.clases.Factura;
import com.sap.ventas.clases.Devolucion;
import com.sap.ventas.clases.OrdenVenta;
import com.sap.ventas.clases.Producto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Properties;

/**
 *
 * @author asus
 */
public class ConsultasGenerales {
       
    /**
     * clase para mostrar como opciones en un combobox
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static LinkedList opcionesProveedor() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Proveedor> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT id, nombre FROM proveedores");
            while (rs.next()) {
                Proveedor p=new Proveedor();
                p.setId(rs.getInt("id"));             
                p.setNombre(rs.getString("nombre"));                
                l.add(p);
            }                    
        conn.close();
        return l;
    }
  
    /**
     * opciones para mostar en un combobox
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static LinkedList opcionesCliente() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
       LinkedList <Cliente> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT id, nombre, ape_pat, ape_mat, direccion FROM cliente");
            while (rs.next()) {
                Cliente p=new Cliente();
                p.setId(rs.getInt("id"));             
                p.setNombre(rs.getString("nombre"));
                p.setApe_pat(rs.getString("ape_pat"));
                p.setApe_mat(rs.getString("ape_mat"));
                p.setDireccion(rs.getString("direccion"));
                l.add(p);
            }                    
        conn.close();
        return l;
}
    
       public static LinkedList opcionesProducto() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
       LinkedList <Producto> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT id, clave, nombre, costounitario FROM Producto");
            while (rs.next()) {
                Producto p=new Producto();
                p.setId(rs.getInt("id"));             
                p.setNombre(rs.getString("nombre")); 
                p.setCostounitario(rs.getDouble("costounitario"));
                p.setClave(rs.getString("clave")); 
                l.add(p);
            }                    
        conn.close();
        return l;
}
       
          public static LinkedList opcionesOrdenVenta() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
       LinkedList <OrdenVenta> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT idordenventa,clave_ordenventa FROM orden_de_venta");
            while (rs.next()) {
                OrdenVenta j=new OrdenVenta();
                j.setIdordenventa(rs.getInt("idordenventa"));             
                j.setClave_ordenventa(rs.getString("clave_ordenventa")); 
                l.add(j);
            }
        conn.close();
        return l;
}
    public static LinkedList mostrarCliente() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Cliente> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT id, nombre, ape_pat, ape_mat, direccion, cp, municipio, edo, pais, rfc, cuentabancaria, razon FROM cliente");
            while (rs.next()) {
                Cliente p=new Cliente();
                p.setId(rs.getInt("id"));             
                p.setNombre(rs.getString("nombre"));
                p.setApe_pat(rs.getString("ape_pat"));
                p.setApe_mat(rs.getString("ape_mat"));       
                p.setDireccion(rs.getString("direccion"));
                p.setCodpos(rs.getString("cp"));
                p.setMunicipio(rs.getString("municipio"));
                p.setEdo(rs.getString("edo"));
                p.setPais(rs.getString("pais"));
                p.setRfc(rs.getString("rfc")); 
                p.setCuentabanco(rs.getString("cuentabancaria"));
                p.setRazon(rs.getString("razon"));
                l.add(p);
            }                    
        conn.close();
        return l;
    }
    public static LinkedList mostrarFactura() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Factura> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT id, clave, fecha, tipo, nombrecliente, nombreproveedor, total FROM factura");
            while (rs.next()) {
                Factura f=new Factura();
                f.setId(rs.getInt("id"));             
                f.setClave(rs.getString("clave"));
                f.setFecha(rs.getString("fecha"));
                f.setTipo(rs.getString("tipo"));       
                f.setNombre_cliente(rs.getString("nombrecliente"));
                f.setNombre_proveedor(rs.getString("nombreproveedor"));
                f.setTotal(rs.getString("total"));
                l.add(f);
            }                    
        conn.close();
        return l;
    }
     public static LinkedList mostrarDevolucion() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Devolucion> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT iddevolucion, clave_devolucion, fecha, motivo FROM devolucion");
            while (rs.next()) {
                Devolucion d=new Devolucion();
                d.setId(rs.getInt("iddevolucion"));             
                d.setClave_devolucion(rs.getString("clave_devolucion"));
                d.setFecha(rs.getString("fecha"));
                d.setMotivo(rs.getString("motivo"));       
                l.add(d);
            }                    
        conn.close();
        return l;
    }
     
      public static LinkedList mostrarOrdenVenta() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <OrdenVenta> l=new LinkedList<>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT idordenventa, clave_ordenventa, fecha, direccion, cantidad, descripcion_venta, vendedor, precio_unitario, precio_total FROM orden_de_venta");
            while (rs.next()) {
                OrdenVenta d=new OrdenVenta();
                d.setIdordenventa(rs.getInt("idordenventa"));             
                d.setClave_ordenventa(rs.getString("clave_ordenventa"));
                d.setFecha(rs.getString("fecha"));
                d.setDireccion(rs.getString("direccion"));
                d.setCantidad(rs.getString("cantidad"));
                d.setDescripcion_venta(rs.getString("descripcion_venta")); 
                d.setVendedor(rs.getString("vendedor"));
                d.setPrecio_unitario(rs.getString("precio_unitario")); 
                d.setPrecio_total(rs.getString("precio_total")); 
                l.add(d);
            }                    
        conn.close();
        return l;
    }
      
 
     
     
     

}