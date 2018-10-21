/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

import com.sap.conexion.Conexion;
import com.sap.inventario.clases.Clave;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
@WebServlet(name = "AgregarMerma", urlPatterns = {"/AgregarMerma"})
public class AgregarMerma extends HttpServlet {

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
       ///obtener parametros
        String mclave = request.getParameter("clavem");
        String producto = request.getParameter("producto");
        String mcantidad = request.getParameter("cantidad");
        String mdescripcion = request.getParameter("descripcion");
        String mfecha = request.getParameter("fecha");
        String mtipo = request.getParameter("mermatipo");
        //campos de la base de datos merma
        String campos="clave_merma,cantidad,descripcion,fecha,tipo_merma";
        //guardar las variables obtenidas desde registro jsp
       String valores="'"+mclave+"',"+mcantidad+",'"+mdescripcion+"','"+mfecha+"','"+mtipo+"'";
       //insertar los datos en tabla merma
        c.insertar(campos, "merma", valores);
        //poner la restriccion para agregar el id en la merma insertada
        String referencia="clave_merma='"+mclave+"'";
        //
        c.actualizar("producto=(select id from producto where clave='"+producto+"')", "merma", referencia);
        c.actualizar("existencia=existencia-"+mcantidad
                , "producto"
                , "clave='"+producto+"' and operacion='entrada'");
        response.sendRedirect("Inventario/InventarioMermaAgregar.jsp");
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
            Logger.getLogger(AgregarMerma.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AgregarMerma.class.getName()).log(Level.SEVERE, null, ex);
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
