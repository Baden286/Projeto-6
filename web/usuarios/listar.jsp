<%@page import="br.com.fatecpg.escola.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
        <title>Listar Usuários</title>
    </head>
    <body>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1>Listagem de Usuários</h1>
            <a href="adicionar.jsp" class="btn btn-success">Cadastrar</a>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Login</th>
                        <th>Comandos</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Usuario u : Usuario.getUsuarios()) {%>
                    <tr>
                        <td><%= u.getId()%></td>
                        <td><%= u.getLogin()%> </td>
                        <td>
                            <form action="editar.jsp">
                                <input type="hidden" name="id" value="<%= u.getId() %>">
                                <button class="btn btn-warning" type="submit">Alterar</button>
                            </form>
                            <form action="excluir.jsp">
                                <input type="hidden" name="id" value="<%= u.getId() %>">
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