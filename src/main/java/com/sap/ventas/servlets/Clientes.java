/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.ventas.servlets;

import com.sap.conexion.Conexion;
import com.sap.gerencia.clases.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
@WebServlet(name = "Clientes",urlPatterns = {"/Clientes"})
public class Clientes extends HttpServlet {

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
        String nombre = request.getParameter("nombreClientes");
        String paterno = request.getParameter("apClientes");
        String materno = request.getParameter("amClientes");
        String direccion = request.getParameter("direccionClientes");
        String cp = request.getParameter("cpClientes");
        String municipio = request.getParameter("municipioClientes");
        String estado = request.getParameter("estadoClientes");
        String pais = request.getParameter("paisClientes");
        String rfc = request.getParameter("rfcClientes");
        String cuentabancaria = request.getParameter("cuentabancariaClientes");
        String razonsocial= request.getParameter("razonsocialClientes");
        HttpSession sesion = request.getSession(true);
        Conexion c = new Conexion();
        
        c.insertar("nombre,ape_pat,ape_mat,direccion,cp,municipio,edo,pais,rfc,"
                + "cuentabancaria,razon","cliente","'"+nombre+"','"+paterno+"','"+materno+"','"+direccion+"',"+cp+",'"+municipio+"','"+estado+"','"+pais+"','"+rfc+"',"+cuentabancaria+",'"+razonsocial+"'");
        
        
//        
        
        response.sendRedirect("Ventas/Clientes.jsp");
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
            Logger.getLogger(Clientes.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Clientes.class.getName()).log(Level.SEVERE, null, ex);
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
