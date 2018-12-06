package br.com.fatecpg.escola;

import br.com.fatecpg.escola.DatabaseConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import br.com.fatecpg.escola.Usuario; 


public class UsuarioDAO {
    
    public Usuario checkLogin(Usuario usuario){
                 
                Connection con = DatabaseConnector.getConexao();
                PreparedStatement stmt = null;
                ResultSet rs = null;               
                Usuario usuRetorno = null;               
                
              ArrayList<Usuario> usuarios = new ArrayList<>();
                
        try {
            stmt = con.prepareStatement("SELECT * FROM usuario Where login = ? and senha = ? ");
            stmt.setString(1, usuario.getLogin());
            stmt.setString(2, usuario.getSenha());
            rs = stmt.executeQuery();          
        
            if (rs.next()){
              usuRetorno = new Usuario();
              usuRetorno.setId(rs.getInt("id")); 
              usuRetorno.setLogin(rs.getString("login")); 
              usuRetorno.setSenha(rs.getString("senha")); 
            }
        } catch (SQLException ex) {
            throw new RuntimeException ("Erro login ", ex);
        }
        return usuRetorno ;
        
        
        }
        public void create(Usuario u){
        Connection con = DatabaseConnector.getConexao();
        PreparedStatement stmt = null;
       
        try {
            stmt = con.prepareStatement("insert into USUARIO (login, senha) values(?,?)");
           
            stmt.setString(1, u.getLogin());
            stmt.setString(2, u.getSenha());
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            throw new RuntimeException("erro UsuarioDao" + ex);
        }
        
        
        }
        public static List<Usuario> read(){
                  
                Connection con = DatabaseConnector.getConexao();
                PreparedStatement stmt = null;
                ResultSet rs = null;
                
               ArrayList<Usuario> usuarios = new ArrayList<>();
               
                
        try {
            stmt = con.prepareStatement("Select * From usuario");
            rs = stmt.executeQuery();
            
            while (rs.next()){
                Usuario u = new Usuario();
                
                u.setId(rs.getInt("id"));                
                u.setLogin(rs.getString("login"));
                u.setSenha(rs.getString("senha"));
                usuarios.add(u);                           
                
               
            }
        } catch (SQLException ex) {
            throw new RuntimeException("erro readUsuario " + ex);          
        } 
         return usuarios ;
         }}