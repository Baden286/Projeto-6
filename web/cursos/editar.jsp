<%@page import="br.com.fatecpg.escola.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
        <link rel="stylesheet" href="style/style.css" crossorigin="anonymous">

        <title>Listar Cursos</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Curso c = Curso.getCurso(id);
            if (request.getParameter("editar") != null) {
                String nome = request.getParameter("nome");
                String sigla = request.getParameter("sigla");
                System.out.println(nome);
                System.out.println(sigla);
                Curso.edit(id, nome, sigla);
                response.sendRedirect("listar.jsp");
            }
        %>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1>Editar Curso</h1>
            <form>
                <input type="hidden" name="id" value="<%= c.getId() %>">
                <div class="form-group">
                    <label>Nome</label>
                    <input type="text" name="nome" class="form-control" value="<%= c.getNome() %>">
                </div>
                <div class="form-group">
                    <label>Sigla</label>
                    <input type="text" name="sigla" class="form-control" value="<%= c.getSigla() %>">
                </div>
                <button type="reset" class="btn btn-secondary">Limpar</button>
                <button type="submit" name="editar" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </body>
</html>