/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Controlador.Consultas;
import Modelo.CitaMedica;
import Modelo.ModeloCitas;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author naely
 */ 
@WebServlet("/ModificarCitaServicio")
public class ModificarCitaServicio extends HttpServlet {

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
//      String nombreCompleto = request.getParameter("full-name");
//        String telefono = request.getParameter("phone");
//       String correoElectronico = request.getParameter("email");
//       String fechaHoraStr = request.getParameter("fecha-hora");
//       String servicio = request.getParameter("servicio");
//       int servicioId = Integer.parseInt(servicio);
//         Consultas sql= new Consultas();
//         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");
//         LocalDateTime fecha = LocalDateTime.parse(fechaHoraStr, formatter);
//
//         if(sql.registrarCita(nombreCompleto, telefono, correoElectronico, fecha, servicioId)){
//             response.sendRedirect("menuServiciosCitas.jsp");
//         }
         response.sendRedirect("TablaCitas.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String idCitaStr = request.getParameter("id_cita");
        String fechaStr = request.getParameter("fecha_hora");
        String horaStr = request.getParameter("hora_cita");
        String servicio = request.getParameter("servicio");
        String fechaHoraStr = fechaStr + "T" + horaStr;

        // Validar los parámetros
        boolean isValid = true;
        List<String> errors = new ArrayList<>();
        
        // Validar el formato de la fecha y hora (puedes usar bibliotecas como java.time para una validación más precisa)
        if (fechaHoraStr == null || !fechaHoraStr.matches("\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}")) {
            isValid = false;
            errors.add("El formato de fecha y hora no es válido.");
        }
        
        if (servicio == null || servicio.length() <= 0) {
            isValid = false;
            errors.add("El servicio es invalido.");
        }
        
        ModeloCitas mc = new ModeloCitas();
        int idCita = Integer.parseInt(idCitaStr);
        CitaMedica cita = mc.getCita(idCita);
        if (cita == null){
            isValid = false;
            errors.add("La cita no existe.");
        }
        
        int servicioId = Integer.parseInt(servicio);

        if (isValid) {
            // Crear el objeto CitaMedica y guardarlo en la base de datos
            try {
                // Crear un objeto de tipo LocalDateTime a partir de la cadena de fecha y hora
               LocalDateTime fechaHora = LocalDateTime.parse(fechaHoraStr);
                
                // Crear el objeto CitaMedica con los datos validados
//                CitaMedica cita = new CitaMedica(nombreCompleto, telefono, correoElectronico, fechaHoraStr, servicioId);
                
                Consultas sql = new Consultas();
                sql.actualizarCita(idCita, fechaHora, servicioId);

//                sql.registrarCita(nombreCompleto, telefono, correoElectronico, fechaHora, servicioId);
                // Guardar la cita en la base de datos (usando JDBC, por ejemplo)
                
                // Redireccionar a una página de éxito o mostrar un mensaje de confirmación
                response.sendRedirect("TablaCitas.jsp");
            } catch (DateTimeParseException e) {
                errors.add("La fecha y hora proporcionadas no son válidas.");
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("Contacto.jsp").forward(request, response);
            }
        } else {
            // Mostrar mensajes de error y volver a cargar el formulario
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("Especialistas.jsp").forward(request, response);
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

   

