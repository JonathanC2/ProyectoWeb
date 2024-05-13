/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.CitaMedica;
import Modelo.ModeloCitas;
import Modelo.ModeloServicio;
import Modelo.Servicio;
import java.util.List;

/**
 *
 * @author Jonathan Cabrera
 */
public class ControladorServicios {

    public String getServicios() {
        ModeloServicio mc = new ModeloServicio();
        String htmlcode = "";
        List<Servicio> list = mc.getAllServicios();
        for (int i = 0; i < list.size(); i++) {
            htmlcode += " <div class=\"col-lg-6 col-12\">\n"
                    + "                            <div class=\"services-thumb mb-lg-0\">\n"
                    + "                                <div class=\"row\">\n"
                    + "                                    <div class=\"col-lg-5 col-md-5 col-12\">\n"
                    + "                                        <div class=\"services-image-wrap\">\n"
                    + "                                            <a href=\"#" + list.get(i).getId() + "\">\n"
                    + "                                                <img src=\"" + list.get(i).getImg() + "\" class=\"services-image img-fluid\" alt=\"\">\n"
                    + "                                                \n"
                    + "\n"
                    + "                                                <div class=\"services-icon-wrap\">\n"
                    + "                                                    <div class=\"d-flex justify-content-between align-items-center\">\n"
                    + "                                                        <p class=\"text-black mb-0\">\n"
                    + "                                                            <i class=\"bi-cash me-2\"></i>\n"
                    + "                                                            <p><strong>" + list.get(i).getPrecio() + " MXN</strong><p>\n"
                    + "                                                        </p>\n"
                    + "                                                    </div>                                                    \n"
                    + "                                                </div>\n"
                    + "                                            </a>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "\n"
                    + "                                    <div class=\"col-lg-7 col-md-7 col-12 d-flex align-items-center\">\n"
                    + "                                        <div class=\"services-info mt-4 mt-lg-0 mt-md-0\">\n"
                    + "                                            <h4 class=\"services-title mb-1 mb-lg-2\">\n"
                    + "                                                <a class=\"services-title-link\" href=\"#" + list.get(i).getId() + "\">" + list.get(i).getNombre() + "</a>\n"
                    + "                                            </h4>\n"
                    + "\n"
                    + "                                            <p>" + list.get(i).getDescripcion() + "</p>\n"
                    + "\n"
                    + "                                            <div class=\"d-flex flex-wrap align-items-center\">\n"
                    + "                                                <div class=\"reviews-icons\">\n"
                    + "                                                    <i class=\"bi-star-fill\"></i>\n"
                    + "                                                    <i class=\"bi-star-fill\"></i>\n"
                    + "                                                    <i class=\"bi-star-fill\"></i>\n"
                    + "                                                    <i class=\"bi-star-fill\"></i>\n"
                    + "                                                    <i class=\"bi-star\"></i>\n"
                    + "                                                </div>\n"
                    + "\n"  
                    + "                                                <a href=\"menuServiciosCitas.jsp\" class=\"btn custom-btn custom-border-btn smoothscroll\"> \n"
                    + "                                                    <span>Agendar Cita</span>\n"
                    + "\n"
                                                                    
                    + "                                                </a>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>\n"
                    + "                        </div>";
        }
        return htmlcode;
    }
    
      public String getServiciosTabla() {
        ModeloServicio mc = new ModeloServicio();
        String htmlcode = "";
        for (Servicio servicio : mc.getAllServicios()) {
            htmlcode
                    += "<tr>"
                    + "<td>" + servicio.getId() + "</td>"
                    + "<td>" + servicio.getNombre()+ "</td>"
                    + "<td>" + servicio.getDescripcion()+ "</td>"
                    + "<td>" + servicio.getPrecio()+ "</td>"
                    + "<td>" + servicio.getImg()+ "</td>"
                    + "<td>" + "<a href=\"CrudServicio?accion=editar&id=" + servicio.getId() + "\" style=\"color: blue;\">Editar</a>" + "</td>"
                      + "<td>" + "<a href=\"#\" onclick=\"return confirmarEliminacion(" + servicio.getId() + ")\" style=\"color: blue;\">Eliminar</a>" + "</td>"
                    + "</tr>";
        }

        return htmlcode;
    }
      
      public String getCitasTabla() {
           ModeloCitas mc = new ModeloCitas();
        String htmlcode = "";
        for (CitaMedica cita : mc.getAllCitas()) {
            htmlcode
                    += "<tr>"
                    + "<td>" + cita.getId() + "</td>"
                    + "<td>" + cita.getNombreCompleto()+ "</td>"
                    + "<td>" + cita.getTelefono()+ "</td>"
                    + "<td>" + cita.getCorreoElectronico()+ "</td>"
                    + "<td>" + cita.getServicioTxt() + "</td>"
                    + "<td>" + cita.getFechaHora()+ "</td>"
                    + "<td>" + "<a href=\"modificarServicioCita.jsp?idcita=" + cita.getId() + "\" style=\"color: blue;\">Editar</a>" + "</td>"
                   + "<td>" + "<a href=\"#\" onclick=\"return confirmarEliminacion(" + cita.getId() + ")\" style=\"color: blue;\">Eliminar</a>" + "</td>"
                    + "</tr>";
        }

        return htmlcode;
      }
}
