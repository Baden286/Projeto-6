<%@page import="br.com.fatecpg.escola.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
        <title>Listar Alunos</title>
    </head>
    <body>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <%
            AlunoDAO cli = new AlunoDAO();
        %>
        <div class="container">
            <h1>Listagem Alunos</h1>
            <a href="adicionar.jsp" class="btn btn-success">Cadastrar</a>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Matricula</th> 
                        <th>Nome</th>  
                        <th>Curso</th> 
                        <th>Periodo</th>  
                        <th>Comandos</th>   

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < AlunoDAO.read().size(); i++) {%>
                    <tr>
                        <td>100<%= AlunoDAO.read().get(i).getMatricula()%></td>
                        <td><%= AlunoDAO.read().get(i).getNome()%> </td>
                        <td><%= AlunoDAO.read().get(i).getCurso()%> </td>
                        <td><%= AlunoDAO.read().get(i).getPeriodo()%></td>
                        <td>
                            <button class="btn btn-warning">Alterar</button>
                            <button class="btn btn-danger">Excluir</button>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
    </body>
</html>
