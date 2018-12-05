
<%@page import="modelo.bean.Aluno"%>
<%@page import="modelo.dao.AlunoDAO"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="modelo.dao.UsuarioDAO"%>
<%@page import="modelo.bean.Usuario"%>
<%@page import="modelo.bean.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%                     
         if(request.getParameter("logar")!= null){
         UsuarioDAO udao = new UsuarioDAO();
         Usuario user = new Usuario();
        
         user.setLogin(request.getParameter("login"));
         user.setSenha(request.getParameter("senha"));
         
        Usuario usuAutenticado = udao.checkLogin(user);
                     
        if(usuAutenticado != null){
        //response.sendRedirect("positva.html");
        request.getRequestDispatcher("positiva.html").forward(request,response);
        }else{
        response.sendRedirect("negativa.html");
        }         
        }            
           
         Usuario u = new Usuario();
         UsuarioDAO usu = new UsuarioDAO();
         if(request.getParameter("salvar")!= null){
         u.setLogin(request.getParameter("login"));
         u.setSenha(request.getParameter("senha"));
         usu.create(u);
         response.sendRedirect("confirmCadastro.jsp");
         }            
        %>
      
        <div class="container">
            <h1>Gerenciamento de ALunos</h1>
            <fieldset>
                <legend>Cadastrar Aluno</legend>
                <form >
                    Login:<br/><input type="text" name ="login"/> <br/>
                    Senha:<br/><input type="text" name ="senha"/> <br/>
               <br/><input type="submit" name="salvar" value="Salvar" />
                </form>
            </fieldset>        
            <a href="login.jsp">volta</a>
            
    </body>
</html>

          
