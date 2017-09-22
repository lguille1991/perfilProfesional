
package com.tecontrato.modelo;

import com.tecontrato.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;

/**
 *
 * @author Geofredo
 */
public class CrudHabilidad extends Conexion {
    
    public void insertarHabilidad(Habilidad hb) throws Exception
    {
        
        try {
            
            this.conectar();
            String sql="insert into habilidad values(?,?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            
            pre.setInt(1, hb.getIdHabilidad());
            pre.setString(2, hb.getNombreHabilidad());
            
            pre.executeUpdate();
            
        } catch (Exception e) {
            
            throw e;
        }
        finally
        {
//            this.desconectar();
        }
               
    }
    
    
    public void eliminarHabilidad(Habilidad hb) throws Exception
    {
        
        try {
            
            this.conectar();
            String sql="delete from habilidad where idhabilidad=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            
            pre.setInt(1, hb.getIdHabilidad());
            
            pre.executeUpdate();
            
        } catch (Exception e) {
        
            throw e;
        }
        finally
        {
//            this.desconectar();
        }
        
    }
    
    public void modificarHabilidad(Habilidad hb) throws Exception
    {
        try {
            this.conectar();
            String sql="update habilidad set nombrehabilidad=? where idhabilidad=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            
            pre.setString(1, hb.getNombreHabilidad());
            pre.setInt(2, hb.getIdHabilidad());
            
            pre.executeUpdate();
            
        } catch (Exception e) {
            
            throw e;
        }
        finally
        {
//            this.desconectar();
        }
    }
    
    public List<Habilidad>listahabilidades() throws Exception
    {
        ResultSet res;
        List<Habilidad>lst= new ArrayList();
        
        try {
            
            this.conectar();
            String sql="select * from habilidad";
            PreparedStatement pre = this.getCon().prepareCall(sql);
            
            res = pre.executeQuery();
            
            while(res.next())
            {
                Habilidad hb= new Habilidad();
                hb.setIdHabilidad(res.getInt("idhabilidad"));
                hb.setNombreHabilidad(res.getString("nombrehabilidad"));
                lst.add(hb);
            }
        } catch (Exception e) {
            throw e;
        }
        finally
        {
//            this.desconectar();
        }
        return lst;
    }   
}
