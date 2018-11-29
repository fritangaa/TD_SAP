/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.ventas.servlets;

import com.sap.conexion.Conexion;
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
 * @author claudia
 */
@WebServlet(name = "OrdendeVenta", urlPatterns = {"/OrdendeVenta"})
public class OrdendeVenta extends HttpServlet {

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
       String clave = request.getParameter("claveOrdendeVenta");
        String fecha = request.getParameter("fechaOrdendeVenta");
        String direccion = request.getParameter("direccionOrdendeVenta");
        String cantidad = request.getParameter("cantidadOrdendeVenta");
        String descripcion = request.getParameter("descripcionOrdendeVenta");
        String vendedor = request.getParameter("vendedorOrdendeVenta");
        String preciounitario = request.getParameter("preciounitarioOrdendeVenta");
        String preciototal = request.getParameter("preciototalOrdendeVenta");
        String idCOV = request.getParameter("nombreclienteVenta");
        String idPOV = request.getParameter("claveproducto");
        HttpSession sesion = request.getSession(true);
        
        String campos="clave_ordenventa,fecha,direccion,cantidad,descripcion_venta,vendedor,idcliente,precio_total,precio_unitario,idproducto";
        int cant=Integer.parseInt(cantidad);
         c.insertardemastablas(campos,"orden_de_venta",
         "'"+clave+"','"+fecha+"','"+direccion+"',"+cantidad+",'"+descripcion+"','"+vendedor+"',"+idCOV+",p.precio_venta*"+cant+",p.precio_venta,p.id from producto p where p.clave='"+idPOV+"'");

         response.sendRedirect("Ventas/Orden de Venta.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OrdendeVenta.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OrdendeVenta.class.getName()).log(Level.SEVERE, null, ex);
        }
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
            Logger.getLogger(OrdendeVenta.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OrdendeVenta.class.getName()).log(Level.SEVERE, null, ex);
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
