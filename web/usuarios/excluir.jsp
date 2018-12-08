<%@page import="br.com.fatecpg.escola.Usuario"%>
<%@ include file="../WEB-INF/jspf/autenticacao.jspf" %>
<%
    if (request.getParameter("excluir") != null) {
        int id = Integer.parseInt(request.getParameter("id"));
        Usuario.remove(id);
        response.sendRedirect("listar.jsp");
    }
%>