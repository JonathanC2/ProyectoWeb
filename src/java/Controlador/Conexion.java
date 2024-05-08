/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jonathan Cabrera
 */
public class Conexion {
      private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "sistema";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
<<<<<<< HEAD
    String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE;
    private static Connection con;
    
    public Conexion(){
        this.conectar();
    }
=======
    private String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE;
    private Connection con;
>>>>>>> 81595ee6758821a8b4c16a32b2178a96a9d21d9a

    public Connection conectar() {
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("Error en:" + e);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return con;

    }

    public Connection getConexion() {
        if (Conexion.con == null){
            return this.conectar();
        }
        return Conexion.con;

    }
    public void reconect() {
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);

        } catch (ClassNotFoundException e) {
            System.out.println("Error en:" + e);
        } catch (SQLException e) {
            System.out.println("Error en: " + e);
        }
    }
}
