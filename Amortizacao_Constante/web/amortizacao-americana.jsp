<%-- 
    Document   : index
    Created on : 3 de set de 2020, 03:08:33
    Author     : Nilson
--%>
<%@page contentType="text/html" import="java.text.DecimalFormat" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    int p;
    float n;
    float t;
    try {
        n = Float.parseFloat(request.getParameter("n"));
        p = Integer.parseInt(request.getParameter("p"));
        t = Float.parseFloat(request.getParameter("t"));
    } catch (Exception ex) {
        n = 0;
        p = 0;
        t = 0;

        if ((request.getParameter("n") != null) || (request.getParameter("p") != null) || (request.getParameter("t") != null)) {
            erro = "Número inválido como parâmetro";
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Amortização Americana - WebSite</title>
    </head>
    <body> 
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container-fluid">
            <h1 style="color:lightslategray;">Sistema de Amortização Americano (SAA)</h1>
            <hr>
        </div>
        <div class="container">
            <br>
            <h3 style="color:lightslategray;">Como Funciona?</h3>
            <div>
                <br>
                <p>O SAA, é um sistema de amortização de dívidas onde os juros de um empréstimo são pagos periodicamente, porém <u>a quitação do empréstimo se dá por meio de uma única parcela</u> que deverá ser paga ao final do contrato.

Há também a opção dos juros serem capitalizados e pagos juntos com o valor principal no final do contrato. Porém, nesse caso é preciso que seja especificado isso em contrato, caso contrário entende-se que os juros deverão ser pagos mensalmente.</p>
                <p>Nesses sistema, só é pago o valor dos juros nas parcelas e na parcela final paga-se o valor total do empréstimo + juros.</p>
                <p><strong>Parcela = Juros</strong></p>
                <br>
                <p>Para entender melhor como esse sistema funciona, simule um empréstimo digitando os dados nos campos abaixo:</p>
                <hr>
                <form>
                    <p>Digite o valor do empréstimo:
                        <input type="number"  name="n"  step="0.01"/></p>
                    <p>Digite o número de parcelas:
                        <input type="number" name="p"/></p>
                    <p>Digite o valor da taxa a.m. :
                        <input type="number"  name="t" step="0.01"/></p> 
                    <input type="submit" name="Confirmar" value="Calcular"/>
                </form>
            </div>
            <%if ((request.getParameter("n") == null) || (request.getParameter("p") == null) || (request.getParameter("t") == null)) {%>
            <%} else if (erro != null) {%>
            <div><%= erro%></div>
            <%} else { DecimalFormat df = new DecimalFormat("#0.00");%>
            <hr>
            <table border="1">
                <tr style="background-color: #C0C0C0" align="center">
                    <th style="width: 100px">Mês</th>
                    <th style="width: 100px">Saldo Devedor</th>
                    <th style="width: 100px">Amortização</th>
                    <th style="width: 100px">Juros</th>
                    <th style="width: 100px">Prestação</th>
                </tr>
                
            </table>
            <%}%>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
