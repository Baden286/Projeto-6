<%@page import="br.com.fatecpg.escola.Aluno"%>
<%
    if (request.getParameter("excluir") != null) {
        int matricula = Integer.parseInt(request.getParameter("matricula"));
        Aluno.remove(matricula);
        response.sendRedirect("listar.jsp");
    }
%>