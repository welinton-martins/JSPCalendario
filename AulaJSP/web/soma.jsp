<%-- 
    Document   : soma
    Created on : 21 de mar. de 2022, 14:28:51
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean hasParameters = request.getParameter("soma")!=null;
    String errorMessage = null;
    int n1=0, n2=0, soma=0;
    try {
        if(hasParameters){
            String p1 = request.getParameter("n1");
            n1 = Integer.parseInt(p1);
            String p2 = request.getParameter("n2");
            n2 = Integer.parseInt(p2);
            soma = n1+n2;
        }
    } catch(Exception err) {
        errorMessage = err.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma - JavaEE JSP</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Soma</h3>
        <%if(errorMessage!=null){%>
            <h4 style="color:red"><%=errorMessage%></h4>
        <%}%>
        <h4><%=n1%> + <%=n2%> = <u><%=soma%></u></h4>
        <hr>
        <form action="soma.jsp">
            <input type="number" name="n1" value="<%=n1%>">
            <input type="number" name="n2" value="<%=n2%>">
            <input type="submit" name="soma" value="=">
        </form>
    </body>
</html>
