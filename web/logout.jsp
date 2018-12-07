<%@ include file="WEB-INF/jspf/autenticacao.jspf" %>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>