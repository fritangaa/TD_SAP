/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.servicios.banca;

import com.sap.conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maxim
 */
@WebServlet(name = "CompraMH", urlPatterns = {"/CompraMH"})
public class CompraMH extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Conexion c = new Conexion();
        
        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        
        //TransaccionService_Service ts = new TransaccionService_Service();
        //TransaccionService transaccion = ts.getTransaccionServicePort();
        
        
        String fecha  = request.getParameter("fecha");
        String direccion = request.getParameter("direccion");
        String cantidad = request.getParameter("cantidad");
        String precio = request.getParameter("precio");
        String desc = request.getParameter("desc");
        String idcliente = "101";
        String idprodicto = request.getParameter("idprodicto");
        
        String respuestaBanca="";
        String respuestaMH="";
        
        
        //respuestaBanca = transaccion.realizarTransaccion("4180222983523201", "512", "2020-12-21", "2004199733861120",precio, fecha, hourFormat.format(date));
        
        
        if (respuestaBanca.equals("TRANSACCION EXITOSA")) {
            respuestaMH=("fecha,direccion,cantidad,desc,101,idprodicto");
            if (respuestaMH.equals("1")) {
                request.getSession().setAttribute("resultado", "Compra realizada");
            }
        }
        
        response.sendRedirect("Compras/OrdenCompra.jsp");
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
            Logger.getLogger(CompraMH.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CompraMH.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(CompraMH.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CompraMH.class.getName()).log(Level.SEVERE, null, ex);
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
