/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Cliente;
import Modelo.ModeloCliente;

/**
 *
 * @author Jonathan Cabrera
 */
public class ControladorCliente {
     public String getClientesTabla() {
        ModeloCliente mc = new ModeloCliente();
        String htmlcode = "";
        for (Cliente cliente : mc.getAllClientes()) {
            htmlcode
                    += "<tr>"
                    + "<td>" + cliente.getId() + "</td>"
                    + "<td>" + cliente.getUsuario() + "</td>"
                    + "<td>" + cliente.getClave() + "</td>"
                    + "<td>" + "<a href=\"CrudCliente?accion=editar&id=" + cliente.getId() + "\" style=\"color: blue;\">Editar</a>" + "</td>"
                     + "<td>" + "<a href=\"#\" onclick=\"return confirmarEliminacion(" + cliente.getId() + ")\" style=\"color: blue;\">Eliminar</a>" + "</td>"
                    + "</tr>";
        }

        return htmlcode;
    }

    public Cliente getCliente(int id) {
        return new ModeloCliente().getCliente(id);
    }

    public String getClienteHtml(int id) {
        ModeloCliente mc = new ModeloCliente();
        String htmlcode = "";
        Cliente cliente = mc.getCliente(id);
        
        if (cliente != null) {
            htmlcode
                    += "<tr>"+"<td>"+
                    "<input type=\"text\" id=\"idNuevo\" name=\"idNuevo\" class=\"form-control\" value="+cliente.getId()+" required>"+
                    "</td>"
                    + "<td>" + "<input type=\"text\" id=\"usuarioNuevo\" name=\"usuarioNuevo\" class=\"form-control\" value="+cliente.getUsuario()+" required>" + "</td>"
                    + "<td>" + "<input type=\"text\" id=\"passNuevo\" name=\"passNuevo\" class=\"form-control\" value="+cliente.getClave()+" required>" + "</td>"
                    + "<td>" + "<a href=\"CrudCliente?accion=Actualizar&id=" + cliente.getId() + "\">Editar</a>" + "</td>"
                    + "</tr>";
        }
        System.out.println(htmlcode);
        return htmlcode;
    }
}
