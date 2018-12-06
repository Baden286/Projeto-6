<%@page import="modelo.bean.Usuario"%>
<%@page import="modelo.dao.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                UsuarioDAO udao = new UsuarioDAO();
                Usuario user = new Usuario();

                user.setLogin(request.getParameter("login"));
                user.setSenha(request.getParameter("senha"));

                Usuario usuAutenticado = udao.checkLogin(user);

                if (usuAutenticado != null) {
//                    request.getRequestDispatcher("positiva.html").forward(request, response);
                    session.setAttribute("user", usuAutenticado);
                    response.sendRedirect("painel.jsp");
                } else {
                    response.sendRedirect("login.jsp");
                }
            }
        %>
        
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
                <button type="submit" name="logar" class="btn btn-login mt-4">Logar</button>
                <a href="cadastroUsuario.jsp" class="btn btn-signup mt-4">Cadastre-se</a>
            </form>
      
       </div>
    </body>
</html>
