<%@ include file="WEB-INF/jspf/autenticacao.jspf" %>
<%
    session.invalidate();
    response.sendRedirect("http://localhost:8080/Web_Aluno/login.jsp");
%>