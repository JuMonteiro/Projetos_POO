<%-- 
    Document   : numeros-aleatorios
    Created on : 1 de set de 2020, 00:08:41
    Author     : Nilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    int n;
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception ex) {
        n=0;
        if(request.getParameter("n") != null)
            erro = "Número inválido como parâmetro";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Aleatórios Parametrizados - JSP</title>
    </head>
        <body>
         <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Pages</h1>
        <h2>Números Aleatórios Parametrizados</h2>
        <div>
            <form>
                Quantidade:
                <input type="number" name="n"/>
                <input type="submit" name="Gerar"/>
            </form>
        </div>
        <hr/>
        <%if(request.getParameter("n") == null){%>
            <div>Entre com um número</div>
        <%}else if (erro != null){%>
            <div><%= erro %></div>
        <%}else {%>
        <table border="1">
                <tr>
                    <th>Seq</th>
                    <th>Número</th>
                </tr>
                <%for(int i = 1; i <=n; i++){ %>
                    <tr>
                        <td><%= i %></td>
                        <td><%= ((int)(Math.random() * 100))%></td>
                    </tr>
                <%}%>
            </table>
        <%}%><%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
