<%@page import="modelo.bean.Aluno"%>
<%@page import="modelo.dao.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
        <title>Listar Alunos</title>
    </head>
    <body>
        <%
            
            if (request.getParameter("adicionar") != null) {
                Aluno c = new Aluno();
                AlunoDAO cli = new AlunoDAO();
                c.setNome(request.getParameter("nome"));
                c.setCurso(request.getParameter("curso"));
                c.setPeriodo(request.getParameter("periodo"));
                cli.create(c);
                response.sendRedirect("listar.jsp");
            }
        %>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1>Cadastrar Aluno</h1>
            <form>
                <div class="form-group">
                    <label>Nome</label>
                    <input type="text" name="nome" class="form-control">
                </div>
                <div class="form-group">
                    <label>Curso</label>
                    <input type="text" name="curso" class="form-control">
                </div>
                <div class="form-group">
                    <label>Período</label>
                    <input type="text" name="periodo" class="form-control">
                </div>
                <button type="reset" class="btn btn-secondary">Limpar</button>
                <button type="submit" name="adicionar" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </body>
</html>
