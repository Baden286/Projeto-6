package br.com.fatecpg.escola;

import br.com.fatecpg.escola.DatabaseConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import br.com.fatecpg.escola.Aluno;

public class AlunoDAO {
    
    public void create(Aluno c){
        Connection con = DatabaseConnector.getConexao();
        PreparedStatement stmt = null;
       
        try {
            stmt = con.prepareStatement("insert into aluno (nome, curso, periodo) values(?,?,?)");
           
            stmt.setString(1, c.getNome());
            stmt.setString(2, c.getCurso());
            stmt.setString(3, c.getPeriodo());
            stmt.executeUpdate();
            

        } catch (SQLException ex) {
            throw new RuntimeException("erro AlunoDao" + ex);
        }
        
        
    }
     public static List<Aluno> read(){
                 
                Connection con = DatabaseConnector.getConexao();
                PreparedStatement stmt = null;
                ResultSet rs = null;
                
               ArrayList<Aluno> alunos = new ArrayList<>();
               
                
        try {
            stmt = con.prepareStatement("Select * From aluno");
            rs = stmt.executeQuery();
            
            while (rs.next()){
                Aluno p = new Aluno(rs.getInt("matricula"), rs.getString("nome"), rs.getString("curso"), rs.getString("periodo"));
                alunos.add(p);
            }
        } catch (SQLException ex) {
            throw new RuntimeException("erro read " + ex);          
        } 
         return alunos ;
         }
         }
    


    
    

