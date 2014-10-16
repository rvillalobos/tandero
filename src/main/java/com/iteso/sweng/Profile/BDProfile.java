package com.iteso.sweng.Profile;
<<<<<<< HEAD
import com.iteso.sweng.Profile.Profile;
=======
import com.iteso.sweng.RecoveryPass.SendEmail;

>>>>>>> developdaniel
import java.sql.*;

/**
 * Created by Daniel on 12/10/14.
 */
public class BDProfile {

    public Connection conexion;
    public String userDb = "root";
    public String passDb = "root";

    public void conectar() throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/tandero",userDb, passDb);
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
            contacto.setImage(rs.getString("image"));
            return contacto;
        }

        return null;
    }

<<<<<<< HEAD
=======
    public Boolean ifExistAccount(String email) throws SQLException{
        String sql = "SELECT * FROM user WHERE email='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            return true;
        }
        return false;
    }

    public Boolean ifExistCode(String email) throws SQLException{
        String sql = "SELECT * FROM recoveryPass WHERE email='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            return true;
        }
        return false;
    }

    public Boolean ifCodeIsCorrect(String code, String email) throws SQLException{
        String sql = "SELECT * FROM recoveryPass WHERE code='"+code+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            if(rs.getString("email").equals(email))
                return true;
        }
        return false;
    }

    public String getNameByEmail(String email) throws SQLException{
        String sql = "SELECT * FROM user WHERE email='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            return rs.getString("name");
        }

        return null;
    }

    public void changePass(String email, String pass) throws SQLException{
        String sql2 = "UPDATE user" + " SET password ='"+pass+"'" + "WHERE email = '" +email+"'" ;
        PreparedStatement ps2 = conexion.prepareStatement(sql2);
        ps2.executeUpdate();

        String sql = "DELETE FROM recoveryPass WHERE email = '" +email+"'" ;
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.executeUpdate();
    }

    public void generateCode(String email) throws SQLException{

        //Se genera el codigo de verificacion
        String base = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@!#$";
        String code = "";
        int id=1;
        int longitud = base.length();

        for(int i=0; i<10;i++){ //1
            int numero = (int)(Math.random()*(longitud)); //2
            String caracter=base.substring(numero, numero+1); //3
            code=code+caracter; //4
        }

        //Si ya tiene un codigo de verificacion
        if(!ifExistCode(email)) {
            //Si no existe un codigo de verificacion
            String sql2 = "INSERT INTO recoveryPass VALUES ('" + code + "','" + email + "')";
            PreparedStatement ps2 = conexion.prepareStatement(sql2);
            ps2.executeUpdate();
        }
        else
        {
            //Existe un codigo de verificacion (Reemplazarlo)
            String sql2 = "UPDATE recoveryPass" + " SET code ='"+code+"'" + "WHERE email = '" +email+"'" ;
            PreparedStatement ps2 = conexion.prepareStatement(sql2);
            ps2.executeUpdate();
        }

        SendEmail b = new SendEmail();
        b.EmailSend(email,getNameByEmail(email), code);

    }


>>>>>>> developdaniel

}
