<%@page import="br.com.fatecpg.escola.Curso"%>
<%
    if (request.getParameter("excluir") != null) {
        int id = Integer.parseInt(request.getParameter("id"));
        Curso.remove(id);
        response.sendRedirect("listar.jsp");
    }
%>