
package com.tecontrato.modelo;

import com.tecontrato.conexion.Conexion;
import com.tecontrato.utilidades.Utilidades;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Geofredo
 */
public class CrudCandidato extends Conexion {
    
    public void insertarCandidato(Candidato cd) throws Exception
    {
        
        Conexion db = new Conexion();
        Connection conexion = null;
        try {
            conexion = db.getConnection();
            String sql="insert into candidato(iddepto, idgenero, nombre, nacionalidad, fechanacimiento, direccion, foto) values(?,?,?,?,?,?,?)";
            PreparedStatement pre = conexion.prepareStatement(sql);           
            
            pre.setInt(1, cd.getDepto().getIdDepto());
            pre.setInt(2, cd.getGenero().getIdGenero());
            pre.setString(3, cd.getNombre());
            pre.setString(4, cd.getNacionalidad());
            pre.setDate(5, Utilidades.convertFromStrToSqlDate(cd.getFechaNacimiento(), "yyyy-MM-dd"));
            pre.setString(6, cd.getDireccion());
            pre.setString(7, cd.getFoto());
            
            pre.executeUpdate(); 
            
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }
    
    public void modificarCandidato(Candidato cd) throws Exception
    {
        
        Conexion db = new Conexion();
        Connection conexion = null;
        try {
            conexion = db.getConnection();
            String sql="update candidato set iddepto=?, idgenero=?, nombre=?, nacionalidad=?, fechanacimiento=?, direccion=?, foto=?  where idcandidato=?";
            PreparedStatement pre = conexion.prepareStatement(sql); 
            
            pre.setInt(1, cd.getDepto().getIdDepto());
            pre.setInt(2, cd.getGenero().getIdGenero());
            pre.setString(3, cd.getNombre());
            pre.setString(4, cd.getNacionalidad());
            pre.setString(5, cd.getFechaNacimiento());
            pre.setString(6, cd.getDireccion());
            pre.setString(7, cd.getFoto());
            pre.setInt(8, cd.getIdCandidato());
            
            
            pre.executeUpdate(); 
            
        } catch (Exception e) {
            
            throw e;
        }
    }
    
 
    public void eliminarCandidato(Candidato cd) throws Exception
    {
        
        Conexion db = new Conexion();
        Connection conexion = null;
        try {
            conexion = db.getConnection();
            String sql="delete from candidato where idcandidato=?";
            PreparedStatement pre = conexion.prepareStatement(sql);           
            
            pre.setInt(1, cd.getIdCandidato());
            
            pre.executeUpdate(); 
            
        } catch (Exception e) {
            
            throw e;
        }
    }
    
    
    public List<Candidato>mostrarCandidato() throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        ResultSet res;
        List<Candidato>lst= new ArrayList();
        try 
        {
            conexion = db.getConnection();
            String sql="select candidato.idcandidato, departamento.iddepto, departamento.nombredepto, genero.idgenero, genero.genero, nombre, nacionalidad, fechanacimiento,direccion, foto from candidato  "
                       +"inner join departamento on candidato.iddepto=departamento.iddepto"
                       +"inner join genero on candidato.idgenero=genero.idgenero";
            PreparedStatement pre = conexion.prepareCall(sql);
            res=pre.executeQuery();
            while(res.next())
            {
                
                Departamento depto=new Departamento();
                depto.setIdDepto(res.getInt("iddepto"));
                depto.setNombreDepto(res.getString("nombredepto"));
                
                Genero gen = new Genero();
                gen.setIdGenero(res.getInt("idgenero"));
                gen.setGenero(res.getString("genero"));
                
                Candidato can = new Candidato( res.getInt("idcandidato"),depto,gen, res.getString("nombre"),res.getString("nacionalidad"), res.getString("fechanacimiento"),res.getString("direccion"), res.getString("foto"));
                lst.add(can);
                
                
            }
        } 
        catch (Exception e) 
        {
            throw e;
        }
        return lst;
    }
    
    
    public List<Departamento>listaDepto() throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        ResultSet res;
        List<Departamento>lst= new ArrayList();
        try 
        {
            conexion = db.getConnection();
            String sql="select * from departamento";
            PreparedStatement pre = conexion.prepareCall(sql);
            res=pre.executeQuery();
            while(res.next())
            {               
                Departamento depto=new Departamento();
                depto.setIdDepto(res.getInt("iddepto"));
                depto.setNombreDepto(res.getString("nombredepto"));

                lst.add(depto);
            }
        } 
        catch (Exception e) 
        {
            throw e;
        }
        return lst;
    }
    
    public List<Genero>listaGenero() throws Exception
    {
        Conexion db = new Conexion();
        Connection conexion = null;
        ResultSet res;
        List<Genero>lst= new ArrayList();
        try 
        {
            conexion = db.getConnection();
            String sql="select * from genero";
            PreparedStatement pre = conexion.prepareCall(sql);
            res=pre.executeQuery();
            while(res.next())
            {               
                Genero ge=new Genero();
                ge.setIdGenero(res.getInt("idgenero"));
                ge.setGenero(res.getString("genero"));
                lst.add(ge);
            }
        } 
        catch (Exception e) 
        {
            throw e;
        }
        return lst;
    }
}
