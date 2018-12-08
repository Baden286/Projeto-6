<%@page import="br.com.fatecpg.escola.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
      
        <link rel="stylesheet" href="../style/style.css" crossorigin="anonymous">

        <title>Editar Usuário</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Usuario u = Usuario.getUsuario(id);
            if (request.getParameter("editar") != null) {
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                Usuario.edit(id, login, senha);
                response.sendRedirect("listar.jsp");
            }
        %>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1>Editar Usuario</h1>
            <form>
                <input type="hidden" name="id" value="<%= u.getId() %>">
                <div class="form-group">
                    <label>Login</label>
                    <input type="text" name="login" class="form-control" value="<%= u.getLogin() %>">
                </div>
                <div class="form-group">
                    <label>Senha</label>
                    <input type="password" name="senha" class="form-control" value="<%= u.getSenha() %>">
                </div>
                <button type="reset" class="btn btn-signup">Limpar</button>
                <button type="submit" name="editar" class="btn btn-login">Salvar</button>
            </form>
        </div>
    </body>
</html>