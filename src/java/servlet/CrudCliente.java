/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Modelo.Cliente;
import Modelo.ModeloCliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jonathan Cabrera
 */
public class CrudCliente extends HttpServlet {

    String consultar = "";
    String editar = "ClienteEditar.jsp";
    String nuevo = "";
    Cliente cliente;
    String eliminar = "";
    ModeloCliente modelC = new ModeloCliente();
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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CrudCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CrudCliente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
       String acceso = "";
        String action = request.getParameter("accion");
        System.out.println("Entro");
        if (action.equalsIgnoreCase("consultar")) {
            modelC.reconect();
            acceso = consultar;
        } else if (action.equalsIgnoreCase("editar")) {
            modelC.reconect();
            request.setAttribute("idper", request.getParameter("id"));
            acceso = editar;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            modelC.reconect();
            
            int id = Integer.parseInt(request.getParameter("idNuevo"));
            String nombre = request.getParameter("usuarioNuevo");
            String contra = request.getParameter("passNuevo");
            System.out.println("si sirve"+id+nombre+contra);
            cliente = new Cliente(id, nombre, contra);
            modelC.actualizarCliente(cliente);
            response.sendRedirect("TablaClientes.jsp");
            return;
        } else if (action.equalsIgnoreCase("Eliminar")) {
            modelC.reconect();
            int id = Integer.parseInt(request.getParameter("id"));
            cliente = new Cliente(id);
            modelC.eliminarCliente(id);
            response.sendRedirect("TablaClientes.jsp");
            return;
        } else if (action.equalsIgnoreCase("mostrarcreado")) {
            modelC.reconect();
            String usuario = request.getParameter("usuario");
            String pass = request.getParameter("pass");

            cliente = new Cliente(usuario, pass);
            modelC.insertarCliente(usuario, pass);
            
        } else if (action.equalsIgnoreCase("crear")) {
            acceso = nuevo;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
        processRequest(request, response);
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
