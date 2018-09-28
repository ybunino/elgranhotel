package Logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {
    public String db="elgranhotel";
    public String url="jdbc:mysql://127.0.0.1"+db;
    public String user="root";
    public String pass="";
    
    public Conexion() {
    
}
    
    public Connection conectar() throws ClassNotFoundException{
        Connection link=null;
        
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            link=DriverManager.getConnection(this.url,this.user,this.pass);
            
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return link;
}
}

