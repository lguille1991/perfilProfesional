
package com.tecontrato.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Nombre de la clase: Conexión
 * Versión: 1.0
 * Fecha: 21/09/2017
 * CopyRight: Programmer Group Services S.A de C.V
 * @author Alexis, Kevin, Luis, María José, Geofredo
 */
public class Conexion {    
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    public void conectar() throws Exception
    {
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdperfilprofesional?user=root&password=");
                        
        } catch (Exception e) {
            
            throw e;
        }
        
    }
    
    public void desconectar() throws Exception
    {
        try {
            if(con!=null)
            {
                if(con.isClosed()==false)
                {
                    con.close();
                }
            }
            
        } catch (Exception e) {
            throw e;
        }   
    } 
}
