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
import java.util.ArrayList;
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
@WebServlet(name = "ModificarFactura", urlPatterns = {"/ModificarFactura"})
public class ModificarFactura extends HttpServlet {

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
        String factura = request.getParameter("modificarIdFactura");
        Conexion c = new Conexion();
        HttpSession sesion = request.getSession(true);
        //usuario usu = new usuario();
         ArrayList lista = c.consulta("id,clave,fecha,nombrecliente,nombreproveedor,total"
                 ,"factura", "id = "+factura, 12);
        if(!lista.isEmpty()){
            request.getSession().setAttribute("factura",lista);
        //int i = c.insercionRegistro(usu.getId_emp(),  "rh", "Modifica empleado");
            response.sendRedirect("Ventas/ModificarResultadoFactura.jsp");
        }else{
            //int i = c.insercionRegistro(usu.getId_emp(),  "rh", "Intento modificar empleado");
            request.getSession().setAttribute("motivo", "El cliente no existe");
            response.sendRedirect("Ventas/ErrorCliente.jsp");
        }
       
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ModificarFactura.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ModificarFactura.class.getName()).log(Level.SEVERE, null, ex);
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
