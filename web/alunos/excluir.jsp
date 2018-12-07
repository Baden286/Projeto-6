<%@page import="br.com.fatecpg.escola.Aluno"%>
<%@ include file="WEB-INF/jspf/autenticacao.jspf" %>
<%
    if (request.getParameter("excluir") != null) {
        int matricula = Integer.parseInt(request.getParameter("matricula"));
        Aluno.remove(matricula);
        response.sendRedirect("listar.jsp");
    }
%>