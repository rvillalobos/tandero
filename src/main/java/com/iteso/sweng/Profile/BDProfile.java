package com.iteso.sweng.Profile;
import com.iteso.sweng.Profile.Profile;
import java.sql.*;

/**
 * Created by Daniel on 12/10/14.
 */
public class BDProfile {

    public Connection conexion;
    public String userDb = "root";
    public String passDb = "";

    public void conectar() throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        conexion=DriverManager.getConnection("jdbc:mysql://127.0.0.1/tandero",userDb, passDb);
    }
    //Desconectar a la Base de datos
    public void desconectar() throws SQLException, ClassNotFoundException{
        conexion.close();
    }

    public Profile getContact(String email) throws SQLException{
        String sql = "SELECT * FROM user WHERE email='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            Profile contacto = new Profile();
            contacto.setNick(rs.getString("nick"));
            contacto.setName(rs.getString("name"));
            contacto.setLastname(rs.getString("lastname"));
            contacto.setEmail(rs.getString("email"));
            contacto.setAddress(rs.getString("address"));
            contacto.setPhome(rs.getString("phome"));
            contacto.setPoffice(rs.getString("poffice"));
            contacto.setPmobile(rs.getString("pmobile"));
            contacto.setStatus(rs.getBoolean("status"));
            return contacto;
        }

        return null;
    }


}
