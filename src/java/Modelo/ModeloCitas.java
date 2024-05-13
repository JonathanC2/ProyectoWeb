/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;

/**
 *
 * @author Jonathan Cabrera
 */
public class ModeloCitas extends Conexion {

    public ArrayList<CitaMedica> getAllCitas() {
        ArrayList<CitaMedica> servicios = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM citas";
            pst = getConexion().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int servicioId = Integer.parseInt(rs.getString("id_servicio"));
                servicios.add(new CitaMedica(
                        rs.getInt("id_cita"), rs.getString("nombre_completo"), rs.getString("telefono"),
                        rs.getString("correo_electronico"), rs.getString("fecha_hora"), servicioId));

            }
        } catch (Exception e) {

        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (Exception e) {

            }
        }
        return servicios;
    }

    public CitaMedica getCita(int id) {
        CitaMedica cita = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM citas where id_cita = ?";
            pst = getConexion().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();

            while (rs.next()) {
                cita = new CitaMedica(rs.getInt("id_cita"), rs.getString("nombre_completo"), rs.getString("telefono"),
                        rs.getString("correo_electronico"), rs.getString("fecha_hora"), rs.getInt("id_servicio"));

            }
        } catch (Exception e) {

        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (Exception e) {

            }
        }
        return cita;
    }

    public void eliminarCita(int id) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String delete = "delete from citas where id_cita=?";

            pst = getConexion().prepareStatement(delete);
            pst.setInt(1, id);

            pst.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error en: " + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (Exception e) {
                System.out.println("Error en: " + e);
            }

        }
    }
    
    


}
