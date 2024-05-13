/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.text.NumberFormat;
import java.time.LocalDateTime;



/**
 *
 * @author naely
 */
public class CitaMedica {

    private int id;
    private String nombreCompleto;
    private String telefono;
    private String correoElectronico;
    private String fechaHora;
    private int servicio;

       public CitaMedica(int id, String nombreCompleto, String telefono, String correoElectronico, String fechaHora, int servicio) {
        this.id = id;
        this.nombreCompleto = nombreCompleto;
        this.telefono = telefono;
        this.correoElectronico = correoElectronico;
        this.fechaHora = fechaHora;
        this.servicio = servicio;
    }
       
    public CitaMedica(String nombreCompleto, String telefono, String correoElectronico, String fechaHora, int servicio) {
        this.nombreCompleto = nombreCompleto;
        this.telefono = telefono;
        this.correoElectronico = correoElectronico;
        this.fechaHora = fechaHora;
        this.servicio = servicio;
    }

    // Getters y setters
    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(String fechaHora) {
        this.fechaHora = fechaHora;
    }

    public int getServicio() {
        return servicio;
    }

    public void setServicio(int servicio) {
        this.servicio = servicio;
    }
    
    public String getServicioTxt() {
        ModeloServicio ms = new ModeloServicio();
        Servicio servicioDb = ms.getServicio(servicio);
        if (servicioDb == null)
            return "???";
        return servicioDb.getNombre();
    }
    
    public String getPrecio() {
        ModeloServicio ms = new ModeloServicio();
        Servicio servicioDb = ms.getServicio(servicio);
        if (servicioDb == null)
            return "???";
        NumberFormat fmt = NumberFormat.getCurrencyInstance();
        return fmt.format(servicioDb.getPrecio());
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String printSelectedIfServicio(int servicioId){
        if (servicio == servicioId)
            return "selected";
        return "";
    }
    
    
    
    
}
