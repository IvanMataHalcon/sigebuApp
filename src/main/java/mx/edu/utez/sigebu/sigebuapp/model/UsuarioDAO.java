package mx.edu.utez.sigebu.sigebuapp.model;

import mx.edu.utez.sigebu.sigebuapp.utils.SQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO{
    Connection conn;
    SQLConnection cn = new SQLConnection();
    PreparedStatement ps;
    ResultSet rs;


    public int validarAlumno(UsuarioBean usuario){
        int r=0;
        String sql= "Select * from usuario where matricula=? and PASSWORD_USER=?";
        try{
            conn=cn.getConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, usuario.getMatricula());
            ps.setString(2, usuario.getPassword());
            rs= ps.executeQuery();
            while(rs.next()){
                r=r+1;
                usuario.setMatricula(rs.getString("matricula"));
                usuario.setPassword(rs.getString("PASSWORD_USER"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        }catch (Exception e){
            return 0;
        }
    }
}
