<%-- 
    Document   : date-with-expression
    Created on : 31 de ago de 2020, 23:24:02
    Author     : Nilson
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data com expression - JSP</title>
    </head>
    <body> 
        <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Pages</h1>
        <h2>Data/hora do Servidor com expression</h2>
        <h3>Agora, no servidor: <u><%= new Date() %></u></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
