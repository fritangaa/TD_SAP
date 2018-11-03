package com.sap.Compras;

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

/**
 *
 * @author Marii
 */
@WebServlet(name = "Modificar_proveedor", urlPatterns = {"/Modificar_proveedor"})
public class Modificar_proveedor extends HttpServlet {

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
        
        String clave_prov= request.getParameter("editprov");
        String rfc_prov = request.getParameter("rfc_edi");
        String razo_prov = request.getParameter("razoned");
        String dir_prov = request.getParameter("diredit");
        String tel_prov = request.getParameter("teledit");
        String correo_prov = request.getParameter("correoedit");
        String agr_est = request.getParameter("estadoedit");
        String cuent_cont = request.getParameter("cuentaconedit");
        String lim_cred = request.getParameter("limcrededit");
        String dias_cred = request.getParameter("diascrededit");
        String agr_bnco = request.getParameter("bancoedit");
        String num_cuenta = request.getParameter("numcuentaedit");
        String clave_cuenta = request.getParameter("clvcuentaedit");
        
        Conexion c = new Conexion();
      /*  String campos="'"+request.getParameter("razoned")+"',"+request.getParameter("rfc_edi")+",'"+ request.getParameter("diredit")+"',"+request.getParameter("estadoedit")+",'"+request.getParameter("teledit")+"','"+request.getParameter("correoedit")+"',"+request.getParameter("cuentaconedit")+","+request.getParameter("numcuentaedit")+","+request.getParameter("bancoedit")+",'"+request.getParameter("diascrededit")+"',"+request.getParameter("limcrededit")+"";
        System.out.println("cadena:"+campos); 
        */
        
       
        c.actualizar("'"+rfc_prov+"','"+dir_prov+"','"+agr_est+"''"+razo_prov+"',"+num_cuenta+","+clave_cuenta+","+tel_prov+",'"+correo_prov
                +"',"+cuent_cont+","+lim_cred+","+dias_cred+",'"+agr_bnco+"'", "Proveedor", "clave= "+clave_prov);
        
        response.sendRedirect("Compras/Edit_prod.jsp");

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
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Modificar_proveedor.class.getName()).log(Level.SEVERE, null, ex);
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

