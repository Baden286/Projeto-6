<%@page import="br.com.fatecpg.escola.Curso"%>
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
                    <%
                        Curso c = null;
                        for (Aluno a : Aluno.getAlunos()) {
                            c = Curso.getCurso(a.getCurso());
                    %>
                    <tr>
                        <td><%= a.getMatricula()%></td>
                        <td><%= a.getNome()%> </td>
                        <td><%= c.getNome()%> </td>
                        <td><%= a.getPeriodo()%></td>
                        <td>
                            <form action="editar.jsp">
                                <input type="hidden" name="matricula" value="<%= a.getMatricula() %>">
                                <button class="btn btn-warning" type="submit">Alterar</button>
                            </form>
                            <form action="excluir.jsp">
                                <input type="hidden" name="matricula" value="<%= a.getMatricula() %>">
                                <button class="btn btn-danger" name="excluir" type="submit">Excluir</button>
                            </form>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
    </body>
</html>
