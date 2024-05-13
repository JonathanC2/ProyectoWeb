/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Jonathan Cabrera
 */
public class ModeloServicio extends Conexion {

    public ArrayList<Servicio> getAllServicios() {
        ArrayList<Servicio> servicios = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM servicios";
            pst = getConexion().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                servicios.add(new Servicio(rs.getInt("id_servicio"), rs.getString("nombre"), rs.getString("descripcion"),
                        rs.getDouble("precio"), rs.getString("imagen")));

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

    public Servicio getServicio(int id) {
        Servicio servicio = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM servicios where id_servicio = ?";
            pst = getConexion().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();

            while (rs.next()) {
                servicio = new Servicio(rs.getInt("id_servicio"), rs.getString("nombre"), rs.getString("descripcion"),
                        rs.getDouble("precio"), rs.getString("imagen"));

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
        return servicio;
    }

    public Servicio actualizarCliente(Servicio servicio) {
        try (Connection conexion = getConexion(); PreparedStatement pst = conexion.prepareStatement("UPDATE `servicios` SET `nombre`=?, `descripcion`=?, `precio`=?, `img`=? WHERE `id_servicio`=?")) {

            pst.setString(1, servicio.getNombre());
            pst.setString(2, servicio.getDescripcion());
            pst.setDouble(3, servicio.getPrecio());
            pst.setString(4, servicio.getImg());
            pst.setInt(5, servicio.getId());

            pst.executeUpdate();

        } catch (Exception e) {
            System.out.println("Error en: " + e);
        }

        return servicio;
    }

    public void eliminarCliente(int id) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String delete = "delete from servicios where id_servicio=?";

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
