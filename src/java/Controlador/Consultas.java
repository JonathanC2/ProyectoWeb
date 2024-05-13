/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.CitaMedica;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

/**
 *
 * @author Jonathan Cabrera
 */
public class Consultas extends Conexion {

    public Consultas() {

    }

    public boolean autenticacion(String usuario, String clave) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "SELECT * FROM clientes WHERE nombre=? AND pass=?";
            System.out.println("Consultas es " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error en " + e.getMessage());

        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }

                if (pst != null) {
                    pst.close();
                }

                if (rs != null) {
                    rs.close();
                }

            } catch (SQLException e) {
                System.out.println("Error en " + e.getMessage());
            }
        }
        return false;
    }

    public boolean autenticacionAdmin(String usuario, String clave) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from admin where nombre=? and pass=?";
            System.out.println("Consulta es;" + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();
            if (rs.next()) {
                return true;
            }
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
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
                System.out.println("Error en: " + e);
            }

        }
        return false;
    }

    public boolean registrar(String usuario, String clave) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into clientes (nombre,pass) values(?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException ex) {
            System.out.println("Error en " + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException e) {
                System.out.println("Error en " + e);
            }

        }
        return false;
    }

   


    


      

    public boolean registrarCita(String nombre_completo, String telefono, String correo_electronico, LocalDateTime fecha, int servicio) {

        PreparedStatement pst = null;

        try {

            String consulta = "INSERT INTO `citas`(`nombre_completo`, `telefono`, `correo_electronico`, `fecha_hora`, id_servicio) VALUES "
                    + "(?,?,?,?,?)";

            System.out.println("Consulta es;" + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre_completo);
            pst.setString(2, telefono);
            pst.setString(3, correo_electronico);
            pst.setTimestamp(4, java.sql.Timestamp.valueOf(fecha));
            pst.setInt(5, servicio);
            if (pst.executeUpdate() == 1) {
                return true;
            }
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
        return false;
    }
    
      public boolean actualizarCita(int idCita, LocalDateTime fecha, int servicio) {

        PreparedStatement pst = null;

        try {

            String consulta = "UPDATE `citas` SET `fecha_hora`=?,`id_servicio`=? WHERE id_cita=?";

            System.out.println("Consulta es;" + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setTimestamp(1, java.sql.Timestamp.valueOf(fecha));
            pst.setInt(2, servicio);
            pst.setInt(3, idCita);
            if (pst.executeUpdate() == 1) {
                return true;
            }
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
        return false;
    }
    
    

    public boolean registrarServicio(String nombre, String descripcion, double precio, String Image) {
        PreparedStatement pst = null;

        try {
            String consulta = "INSERT INTO `servicio`(`nombre`, `descripcion`, `precio`, `img`) VALUES "
                    + "(?,?,?,?)";
            System.out.println("Consulta es;" + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre);
            pst.setString(2, descripcion);
            pst.setDouble(3, precio);
            pst.setString(4, Image);

            if (pst.executeUpdate() == 1) {
                return true;
            }
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
        return false;
    }
    
    public int getLastCitaId() {
        PreparedStatement pst = null;
        ResultSet rs = null;

        int idCita = 0;
        try {
            String sql = "SELECT id_cita FROM citas WHERE 1 ORDER BY id_cita DESC LIMIT 1";
            pst = getConexion().prepareCall(sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                idCita = rs.getInt("id_cita");
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
        return idCita;
    }
}
