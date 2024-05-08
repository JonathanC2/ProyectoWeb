/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.time.LocalDateTime;



/**
 *
 * @author naely
 */
public class CitaMedica {

    private String nombreCompleto;
    private String telefono;
    private String correoElectronico;
    private LocalDateTime fechaHora;
    private String servicio;

    public CitaMedica(String nombreCompleto, String telefono, String correoElectronico, LocalDateTime fechaHora, String servicio) {
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

    public LocalDateTime getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(LocalDateTime fechaHora) {
        this.fechaHora = (LocalDateTime) fechaHora;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }
    
    
}
