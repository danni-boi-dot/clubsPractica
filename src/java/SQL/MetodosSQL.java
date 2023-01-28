package SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MetodosSQL {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada;
    private ResultSet resultado;

    public boolean registroUser(String user, String nombre, String apellidos, String pass) {
        boolean registro = false;

        try {
            conexion = conexionBD.conectar();
            String consulta = "INSERT INTO usuarios (user, nombre, apellidos, pass) VALUES (?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, user);
            sentenciaPreparada.setString(2, nombre);
            sentenciaPreparada.setString(3, apellidos);
            sentenciaPreparada.setString(4, pass);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true; // EL usuario se ah registrado
                System.out.println("Se registro el usuario");
            } else {
                registro = false; // EL usuario NO se ah registrado
                System.out.println("NO se registro el usuario");
            }

            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + registro);
        return registro;
    }

    public boolean buscarUser(String user, String pass) {
        boolean iniciarSesion = false;

        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT user,pass FROM usuarios WHERE user = ? AND pass = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, user);
            sentenciaPreparada.setString(2, pass);
            resultado = sentenciaPreparada.executeQuery();
            if (resultado.next()) {
                iniciarSesion = true;//El usuario puede iniciar Sesion por que esta registrado en la BD
            } else {
                iniciarSesion = false;//El usuario NO puede iniciar sesion por que no esta registrado en la BD
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("El valor de iniciarSesion en el metodo es: " + iniciarSesion);
        return iniciarSesion;
    }

    public String buscarNombre(String usuario) {
        String nombre = null;
        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT nombre FROM usuarios WHERE user = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            resultado = sentenciaPreparada.executeQuery();
            if (resultado.next()) {// El usuario fue encontrado y obtenemos el nombre 
                nombre = resultado.getString("nombre");
            } else {
                nombre = null; //EL usuario no fue encontrado y NO obtenemos el nombre
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("El valor del nombre en los Metodos SQL es : " + nombre);
        return nombre;
    }
    
    public String consClub(String nombre) {
        String club = null;
        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT club FROM club WHERE nombre = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, nombre);
            resultado = sentenciaPreparada.executeQuery();
            if (resultado.next()) {// El usuario fue encontrado y obtenemos el nombre 
                club = resultado.getString("club");
            } else {
                club = null; //EL usuario no fue encontrado y NO obtenemos el nombre
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("El valor del nombre en los Metodos SQL es : " + club);
        return club;
    }

    public boolean regIns(String club, String nombre, String apellidos, String email, String telefono, String fechaNaci, String direccion, String ciudad, String delegacion) {
        boolean reg = false;

        try {
            conexion = conexionBD.conectar();
            String cons = "INSERT INTO club (club, nombre, apellidos, email, telefono, fechaNaci, direccion, ciudad, delegacion) VALUES (?,?,?,?,?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(cons);
            sentenciaPreparada.setString(1, club);
            sentenciaPreparada.setString(2, nombre);
            sentenciaPreparada.setString(3, apellidos);
            sentenciaPreparada.setString(4, email);
            sentenciaPreparada.setString(5, telefono);
            sentenciaPreparada.setString(6, fechaNaci);
            sentenciaPreparada.setString(7, direccion);
            sentenciaPreparada.setString(8, ciudad);
            sentenciaPreparada.setString(9, delegacion);

            int result = sentenciaPreparada.executeUpdate();

            if (result > -10) {
                reg = true;
                System.out.println("Se registro el club con exito");
            } else {
                reg = false;
                System.out.println("NO se registro el club");
            }

            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + reg);
        return reg;
    }

}
