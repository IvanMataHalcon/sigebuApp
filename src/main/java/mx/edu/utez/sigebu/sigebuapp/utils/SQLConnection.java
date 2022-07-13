package mx.edu.utez.sigebu.sigebuapp.utils;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLConnection {

    private static Connection conn = null;
    private static String login = "system";
    private static String pass = "02101998";
    private static String url = "jdbc:oracle:thin:@localhost:1521:XE";

    public  Connection getConnection(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, login, pass);
            conn.setAutoCommit(false);
            if(conn !=null){
                System.out.println("Connected");
            }else{
                System.out.println("error en la conexion");
            }
        }catch (ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, "Conexion erronea");

        }
        return conn;
    }
    public void deconectar(){
        try{
            conn.close();
        }catch (Exception e){
            System.out.println("Error al desconectar "+e.getMessage());
        }
    }

    public static void main(String[] args) {
        Connection conn = new SQLConnection().getConnection();
        if (conn != null){
            try {
                System.out.println("Conexion realizada");
                conn.close();
            }catch (SQLException e){

            }
        }
        else{
            System.out.println("Conexion fallida");
        }
    }
}


