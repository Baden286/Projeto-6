<%@page import="br.com.fatecpg.escola.Aluno"%>
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
                    <% for (Aluno a : Aluno.getAlunos()) {%>
                    <tr>
                        <td><%= a.getMatricula()%></td>
                        <td><%= a.getNome()%> </td>
                        <td><%= a.getCurso()%> </td>
                        <td><%= a.getPeriodo()%></td>
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
