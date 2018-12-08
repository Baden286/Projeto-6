<%@page import="br.com.fatecpg.escola.Aluno"%>
<%@page import="br.com.fatecpg.escola.Curso"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="../WEB-INF/jspf/css.jspf" %>
                <link rel="stylesheet" href="../style/style.css" crossorigin="anonymous">

        <title>Listar Alunos</title>
    </head>
    <body>
        <%
            int matricula = Integer.parseInt(request.getParameter("matricula"));
            Aluno a = Aluno.getAluno(matricula);
            if (request.getParameter("editar") != null) {
                String nome = request.getParameter("nome");
                int curso = Integer.parseInt(request.getParameter("curso"));
                String periodo = request.getParameter("periodo");
                Aluno.edit(matricula, nome, curso, periodo);
                response.sendRedirect("listar.jsp");
            }
        %>
        <%@ include file="../WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1 class="mt-5 mb-3">Editar Aluno</h1>
            <form>
                <input type="hidden" name="matricula" value="<%= a.getMatricula() %>">
                <div class="form-group">
                    <label>Nome</label>
                    <input type="text" name="nome" class="form-control" value="<%= a.getNome() %>" required>
                </div>
                <div class="form-group">
                    <label>Curso</label>
                    <select name="curso" class="form-control">
                        <%
                            for (Curso c : Curso.getCursos()) {
                        %>
                        <option value="<%= c.getId()%>" <% if (a.getCurso() == c.getId()) { %>selected<% } %> ><%= c.getNome()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <label>Período</label>
                    <input type="text" name="periodo" class="form-control" value="<%= a.getPeriodo() %>" required>
                </div>
                <button type="reset" class="btn btn-signup">Limpar</button>
                <button type="submit" name="editar" class="btn btn-login">Salvar</button>
            </form>
        </div>
    </body>
</html>
