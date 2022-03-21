<%-- 
    Document   : datahora.jsp
    Created on : 21 de mar. de 2022, 14:21:59
    Author     : Fatec
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Date agora = new Date(); %>
        <h1>JavaEE</h1>
        <h4>Data/Hora do servidor</h4>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h4>Mostrando server date com scriptlet</h4>
        <div>
            <%
                out.print(agora);
            %>
        </div>
        <h4>Mostrando server date com expression</h4>
        <div><%= agora %></div>
    </body>
</html>
