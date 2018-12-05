package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {
   private static final String DRIVER="org.apache.derby.jdbc.ClientDriver";
   private static final String URL = "jdbc:derby://localhost:1527/sample";
   private static final String USER="app";
   private static final String PASS="app";
   
    public static Connection getConexao(){
    
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (ClassNotFoundException | SQLException ex) {
            throw new RuntimeException ("Erro na conexão", ex);
        }
              
    }
}

