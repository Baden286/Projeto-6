<%@page import="br.com.fatecpg.escola.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<link rel="stylesheet" href="../style/style.css" crossorigin="anonymous">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
         <link rel="stylesheet" href="style/style.css" crossorigin="anonymous">

        <title>Listar Usuários</title>
    </head>
    <body>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
              <h1 class="mt-5 mb-5">Listagem de Usuários</h1>
            <table class="table table-hover">
             <thead class="thead-dark">
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
                            <div class="row">
                            <form action="editar.jsp">
                                <input type="hidden" name="id" value="<%= u.getId() %>">
                                <button class="btn btn-warning left " type="submit">Alterar</button>
                            </form>
                            <form action="excluir.jsp">
                                <input type="hidden" name="id" value="<%= u.getId() %>">
                                <button class="btn btn-danger left" name="excluir" type="submit">Excluir</button>
                            </form>
                                </div>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
                            <a href="adicionar.jsp" class="btn btn-success">Cadastrar</a>

        </div>
    </body>
</html>