<%@page import="br.com.fatecpg.escola.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") != null) {
        response.sendRedirect("painel.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@ include file="WEB-INF/jspf/css.jspf" %>
        <%@ include file="WEB-INF/jspf/js.jspf" %>
        <link rel="stylesheet" href="style/style.css" crossorigin="anonymous">

    </head>
    <body>
        <%
            if (request.getParameter("logar") != null) {
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                Usuario permitido = Usuario.checkLogin(login, senha);

                if (permitido != null) {
                    session.setAttribute("user", permitido);
                    response.sendRedirect("painel.jsp");
                } else {
                    response.sendRedirect("login.jsp");
                }
            }
        %>
                <%@ include file="WEB-INF/jspf/menu.jspf" %>

        <div class="loginPainel">
            <form action="login.jsp">
                <h3 class="title">Seja Bem-Vindo!</h3>
                <div class="form-group mt-3">
                    <label class="font-weight-bold label">Login</label>
                    <input type="text"  name="login" class="form-control" placeholder="Digite seu Login.">
                </div>
                <div class="form-group">
                    <label class="font-weight-bold label">Senha</label>
                    <input type="pa ssword" name="senha" class="form-control" placeholder="Digite seu Senha.">
                </div>
                <button type="submit" name="logar" class="btn btn-login mt-5">Logar</button>
                <a href="cadastroUsuario.jsp" class="btn btn-signup mt-5">Cadastre-se</a>
            </form>
      
       </div>
    </body>
</html>
