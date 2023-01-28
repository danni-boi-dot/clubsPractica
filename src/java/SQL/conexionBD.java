/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

public class conexionBD {

    private static String url = "jdbc:mysql://localhost:3306/registrobd";
    private static String usuario = "root";
    private static String pass = "";

//    private static Connection conex;
//    private static PreparedStatement sentenciaPreparada;
//    private static ResultSet resultado;

    public static Connection conectar() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, pass);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("error:" + e);
        }
        return conexion;
    }

//    public static void main(String[] args) {
//        try {
//            conex = conectar();
//            String consulta = "INSERT INTO usuarios(user, nombre, apellidos, pass) VALUES('DAN','DANIEL','lolo', '123')";
//            sentenciaPreparada = conex.prepareStatement(consulta);
//            int i;
//            i = sentenciaPreparada.executeUpdate();
//
//            if (i > 0) {
//                System.out.println("se guardaron los datos");
//            } else {
//                System.out.println("no se guardaron ");
//            }
//            conex.close();
//        } catch (Exception e) {
//            System.out.println("error" + e);
//        }
//    }
}
