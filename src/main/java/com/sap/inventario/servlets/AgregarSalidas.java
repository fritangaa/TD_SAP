/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import com.sap.conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author claudia
 */
@WebServlet(name = "AgregarSalidas", urlPatterns = {"/AgregarSalidas"})
public class AgregarSalidas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Conexion c = new Conexion();
        String clave = request.getParameter("clave");
        String cantidad = request.getParameter("cantidad");
        String fecha= request.getParameter("fecha");
        String campos="clave,existencia,fecha,operacion";
        String valores="'"+clave+"',"+cantidad+",'"+fecha+"','salida'";
        c.insertar(campos, "producto", valores);
        String camposa="producto set nombre=(select nombre from producto where operacion='entrada' and clave='CU1'),"
                + "tipo=(select tipo from producto where operacion='entrada' and clave='CU1'),"
                + "unidad=(select unidad from producto where operacion='entrada' and clave='CU1'),";
        /*update producto set nombre=(select nombre from producto where operacion='entrada' and clave='CU1'),
SAP-# 
SAP-# 
SAP-# costounitario=(select costounitario from producto where operacion='entrada' and clave='CU1');*/
        String referencia="";
    c.actualizar(camposa, "producto", referencia);
//         c.actualizar("existencia=existencia-"+cantidad
//                , "producto"
//                , "clave='"+clave+"' and operacion='entrada'");
//        
         response.sendRedirect("Inventario/InventarioIngresarSalida.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AgregarSalidas.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AgregarSalidas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
