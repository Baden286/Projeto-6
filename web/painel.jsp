<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="WEB-INF/jspf/css.jspf" %>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1>Hello World!</h1>
            <a href="alunos/listar.jsp" class="btn btn-primary">Alunos</a>
            <a href="cursos/listar.jsp" class="btn btn-primary">Cursos</a>
            <a href="usuarios/listar.jsp" class="btn btn-primary">Usuários</a>
        </div>
    </body>
</html>