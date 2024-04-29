/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Modelo.CitaMedica;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author naely
 */
public class RegistrarCitaServicio extends HttpServlet {

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
            out.println("<title>Servlet RegistrarCitaServicio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarCitaServicio at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombreCompleto = request.getParameter("full-name");
        String telefono = request.getParameter("phone");
        String correoElectronico = request.getParameter("email");
        String fechaHoraStr = request.getParameter("fecha-hora");

        // Validar los parámetros
        boolean isValid = true;
        List<String> errors = new ArrayList<>();

        // Validar el nombre completo
        if (nombreCompleto == null || nombreCompleto.isEmpty()) {
            isValid = false;
            errors.add("El nombre completo es obligatorio.");
        }
        
        // Validar el formato del teléfono
        if (telefono == null || !telefono.matches("\\d{10}")) {
            isValid = false;
            errors.add("El teléfono debe tener 10 dígitos numéricos.");
        }
        
        // Validar el formato del correo electrónico
        if (correoElectronico == null || !correoElectronico.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
            isValid = false;
            errors.add("El correo electrónico no es válido.");
        }
        
        // Validar el formato de la fecha y hora (puedes usar bibliotecas como java.time para una validación más precisa)
        if (fechaHoraStr == null || !fechaHoraStr.matches("\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}")) {
            isValid = false;
            errors.add("El formato de fecha y hora no es válido.");
        }

        if (isValid) {
            // Crear el objeto CitaMedica y guardarlo en la base de datos
            try {
                // Crear un objeto de tipo LocalDateTime a partir de la cadena de fecha y hora
                LocalDateTime fechaHora = LocalDateTime.parse(fechaHoraStr);
                
                // Crear el objeto CitaMedica con los datos validados
                CitaMedica cita = new CitaMedica(nombreCompleto, telefono, correoElectronico, fechaHora);
                
                // Guardar la cita en la base de datos (usando JDBC, por ejemplo)
                
                // Redireccionar a una página de éxito o mostrar un mensaje de confirmación
                response.sendRedirect("confirmacion.jsp");
            } catch (DateTimeParseException e) {
                errors.add("La fecha y hora proporcionadas no son válidas.");
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("formulario.jsp").forward(request, response);
            }
        } else {
            // Mostrar mensajes de error y volver a cargar el formulario
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("formulario.jsp").forward(request, response);
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
        processRequest(request, response);
    }

 
    }

   

