<%@page import="br.com.fatecpg.escola.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
                        <link rel="stylesheet" href="../style/style.css" crossorigin="anonymous">

        <title>Listar Cursos</title>
    </head>
    <body>
        <%
            if (request.getParameter("adicionar") != null) {
                String nome = request.getParameter("nome");
                String sigla = request.getParameter("sigla");
                Curso.add(nome, sigla);
                response.sendRedirect("listar.jsp");
            }
        %>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1 class="display-4 mt-5 mb-3">Cadastrar Curso</h1>
            <form>
                <div class="form-group">
                    <label>Nome</label>
                    <input type="text" name="nome" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Sigla</label>
                    <input type="text" name="sigla" class="form-control" required>
                </div>
                <button type="reset" class="btn btn-signup">Limpar</button>
                <button type="submit" name="adicionar" class="btn btn-login">Salvar</button>
            </form>
        </div>
    </body>
</html>