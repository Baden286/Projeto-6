
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
           
         Aluno c = new Aluno();
         AlunoDAO cli = new AlunoDAO();

         if(request.getParameter("add")!= null){
       //  c.setConta(Integer.parseInt(request.getParameter("conta")));
         c.setNome(request.getParameter("nome"));
         c.setCurso(request.getParameter("curso"));
         c.setPeriodo(request.getParameter("periodo"));
         cli.create(c);
         response.sendRedirect("cadastroAluno.jsp");
         }            
        %>
      
        <div class="container">
            <h1>Gerenciamento de Alunos</h1>
            <fieldset>
                <legend>Consultar Aluno</legend>
                <form action="cadastroAluno.jsp">
                    Nome:<br/><input type="text" name ="nome"/> <br/>
                    Curso:<br/><input type="text" name ="curso"/> <br/>
                    Periodo:<br/><input type="text" name ="periodo"/> <br/>                                    
                    <br/><input type="submit" name="add" value="Adicionar" />
                </form>
              </fieldset>
        
        <table class="container" border="2">
            <tr>
                <th>Matricula</th> 
                <th>Nome</th>  
                <th>Curso</th> 
                <th>Periodo</th>  
                <th>Comandos</th>   

            </tr>
            
            <% for(int i = 0; i< AlunoDAO.read().size(); i++){  %>
             <tr>
             <th>100<%= AlunoDAO.read().get(i).getMatricula() %></th>
             <th><%= AlunoDAO.read().get(i).getNome() %> </th>
             <th><%= AlunoDAO.read().get(i).getCurso() %> </th>   
             <th><%= AlunoDAO.read().get(i).getPeriodo() %></th> 
             <th><button>Alterar</button><button>Excluir</button></th>    

            </tr>

               <% }%>
                
               <a href="login.jsp">volta</a>
            
        </table>
    </body>
</html>

          
