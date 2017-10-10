package com.tecontrato.modelo;

import com.tecontrato.conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kevin López
 */
public class CrudUsuario extends Conexion{
    
    public void insertarUsuario(Usuario us) throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        try 
        {
            conexion = db.getConnection();
            String sql="insert into usuario(idrol,usuario,clave) values(?,?,?)";
            PreparedStatement pre = conexion.prepareStatement(sql);
            pre.setInt(1, us.getRol().getIdRol());
            pre.setString(2, us.getUsuario());
            pre.setString(3, us.getClave());
            pre.executeUpdate();
        } 
        catch (Exception e) 
        {
            throw e;
        }
    }
    
    public void modificarUsuario(Usuario us) throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        try 
        {
         conexion = db.getConnection();
         String sql="update usuario set idrol=?,usuario=?,clave=? where idusuario=?";
         PreparedStatement pre = conexion.prepareStatement(sql);
         pre.setInt(1, us.getRol().getIdRol());
         pre.setString(2, us.getUsuario());
         pre.setString(3, us.getClave());
         pre.setInt(4, us.getIdUsuario());
         pre.executeUpdate();   
        } 
        catch (Exception e) 
        {
            throw e;
        }
    }
    
    public void eliminarUsuario(Usuario us) throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        try 
        {
            conexion = db.getConnection();
            String sql="delete from usuario where idusuario=?";
            PreparedStatement pre = conexion.prepareStatement(sql);
            pre.setInt(1, us.getIdUsuario());
            pre.executeUpdate(); 
        } 
        catch (Exception e) 
        {
            throw e;
        }
    }
    
    public List<Usuario>mostrarUsuario() throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        ResultSet res;
        List<Usuario>lst=new ArrayList();
        try 
        {
            conexion = db.getConnection();
            String sql="select idusuario, rol.idrol, rol.nombrerol, usuario, clave from usuario "
                    + "inner join rol on usuario.idrol=rol.idrol";
            PreparedStatement pre = conexion.prepareCall(sql);
            res=pre.executeQuery();
            while(res.next())
            {
                Rol rol=new Rol();
                rol.setIdRol(res.getInt("idrol"));
                rol.setNombreRol(res.getString("nombre rol"));
                
                Usuario us=new Usuario(res.getInt("idusuario"),rol,res.getString("usuario"),
                        res.getString("clave"));
                lst.add(us);
            }
        } 
        catch (Exception e) 
        {
            throw e;
        }
        return lst;
    }
    
    public List<Rol>listaRol() throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        ResultSet res;
        List<Rol>lst=new ArrayList();
        try 
        {
            conexion = db.getConnection();
            String sql="select * from rol";
            PreparedStatement pre = conexion.prepareCall(sql);
            res=pre.executeQuery();
            while(res.next())
            {
                Rol rol=new Rol();
                rol.setIdRol(res.getInt("idrol"));
                rol.setNombreRol(res.getString("nombre rol"));
                lst.add(rol);
            }
        } 
        catch (Exception e) 
        {
            throw e;
        }
        return lst;
    }
    
    public int ultimoId() throws Exception{
        Conexion db = new Conexion();
        Connection conexion = null;
        ResultSet res;
        try{
            conexion = db.getConnection();
            String sql="SELECT MAX(idUsuario) AS id FROM usuario";
            PreparedStatement pre = conexion.prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                int id = res.getInt("id");
                return id;
            }
        }catch(Exception e){
            
        }
        return 0;
    }
}
