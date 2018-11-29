/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.inventario.servlets;

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

/**
 *
 * @author claudia
 */
@WebServlet(name = "ProductoEntrada", urlPatterns = {"/ProductoEntrada"})
public class ProductoEntrada extends HttpServlet {

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
//obtener conexion de clase conexion
        // variables para insertar en la base de datos
        String cadena=request.getParameter("clavep");  
        Conexion c=new Conexion();
        
        String campos="clave,nombre,tipo,unidad,costounitario,precio_venta,iva,cantidad,monto_total";
        
        ArrayList l=c.consultaVariosCamposUnaClave(cadena, campos, "producto", 9);
       try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */                  
            out.println("<h1 class='text-center'> Consulta Realizada</h1>");         
            out.println("<table class='tablas table'>");         
            out.println("<tr>");
            out.println("<th>clave</th>");
            out.println("<th>nombre</th>");
            out.println("<th>tipo</th>");
            out.println("<th>Unidad</th>");
            out.println("<th>Costo Unitario</th>");
            out.println("<th>precio_venta</th>");
            out.println("<th>iva</th>");
            out.println("<th>cantidad</th>");
            out.println("<th>monto_total</th>");
            out.println("</tr>");
            out.println("<tr>");                               
            out.println("<td>"+l.get(0)+"</td>");
            out.println("<td>"+l.get(1)+"</td>");
            out.println("<td>"+l.get(2)+"</td>");
            out.println("<td>"+l.get(3)+"</td>");
            out.println("<td>"+l.get(4)+"</td>");
            out.println("<td>"+l.get(5)+"</td>");
            out.println("<td>"+l.get(6)+"</td>");
            out.println("<td>"+l.get(7)+"</td>");
            out.println("<td>"+l.get(8)+"</td>");
            out.println("</tr>");            
            out.println("</table>");         
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
            Logger.getLogger(ProductoEntrada.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProductoEntrada.class.getName()).log(Level.SEVERE, null, ex);
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
