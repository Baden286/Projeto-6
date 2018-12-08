<%@page import="br.com.fatecpg.escola.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
        <title>Adicionar Usuario</title>
    </head>
    <body>
        <%
            if (request.getParameter("adicionar") != null) {
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                Usuario.add(login, senha);
                response.sendRedirect("listar.jsp");
            }
        %>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
                        <link rel="stylesheet" href="../style/style.css" crossorigin="anonymous">

        <div class="container">
            <h1 class="display-4 mt-5 mb-3">Cadastrar Usuario</h1>
            <form>
                <div class="form-group">
                    <label>Nome</label>
                    <input type="text" name="login" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Senha</label>
                    <input type="password" name="senha" class="form-control" required>
                </div>
                <button type="reset" class="btn btn-signup">Limpar</button>
                <button type="submit" name="adicionar" class="btn btn-login">Salvar</button>
            </form>
        </div>
    </body>
</html>