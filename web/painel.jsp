<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/autenticacao.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="WEB-INF/jspf/css.jspf" %>
        <link rel="stylesheet" href="style/style.css" crossorigin="anonymous">

    </head>
    <body>
        <%@ include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <h1 class="display-4 text-center mt-5 mb-3">Home Page</h1>
            <div class="row mt-5">
                <div class="col-4">
                    <div class="cardsHome">
                        <a href="alunos/listar.jsp"><svg id="icon-card-aluno"></svg></a>
                        <h3 class="text-center">Alunos</h3>

                    </div>
                </div>
                  <div class="col-4">
                    <div class="cardsHome">
                        <a href="cursos/listar.jsp"><svg id="icon-card-cursos"></svg></a>
                       <h3 class="text-center">Cursos</h3>

                    </div>
                </div>
                  <div class="col-4">
                    <div class="cardsHome">
                        <a href="usuarios/listar.jsp"><svg id="icon-card-user"></svg></a>
                        <h3 class="text-center">Usuários</h3>

                    </div>
                </div>
            </div>

        </div>
    </body>
</html>