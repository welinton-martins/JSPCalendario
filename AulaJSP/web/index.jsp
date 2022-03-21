<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 13:44:09
    Author     : Fatec
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JavaEE JSP</title>
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Inicio</h3>
        <h4>
            <a href="datahora.jsp">Data/hora do servidor</a>
        </h4>
        <h4>Soma</h4>
        <form action="soma.jsp">
            <input type="number" name="n1" value="1">
            <input type="number" name="n2" value="1">
            <input type="submit" name="soma" value="=">
        </form>
        <h4>Numeros aleatorios</h4>
        <form action="aleatorios.jsp">
            <input type="number" name="n">
            <input type="submit" name="gerar" value="Gerar">
        </form>
        <h4>Tabuada</h4>
        <form action="tabuada.jsp">
            <input type="number" name="n">
            <input type="submit" name="gerar" value="Gerar">
        </form>
        <h4>Calendario</h4>
        <form action="calendario.jsp">
            <input type="number" name="ano" value="2022">
            <input type="number" name="mes" value="3">
            <input type="submit" name="gerar" value="Gerar">
        </form>
    </body>
</html>
