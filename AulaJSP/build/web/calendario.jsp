<%-- 
    Document   : soma
    Created on : 21 de mar. de 2022, 14:28:51
    Author     : Fatec
--%>
<%@page import="java.time.DayOfWeek" %>
<%@page import="java.time.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean hasParameters = request.getParameter("gerar")!=null;
    String errorMessage = null;
    int ano=0,mes=0, dia = 1, d=1,f=0;
    try {
        if(hasParameters){
            String p1 = request.getParameter("ano");
            String p2 = request.getParameter("mes");
            ano = Integer.parseInt(p1);
            mes = Integer.parseInt(p2);
        }
    } catch(Exception err) {
        errorMessage = err.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendario - JavaEE JSP</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Calendario</h3>
        <form action="calendario.jsp">
            <input type="number" name="ano" value="<%=ano%>">
            <input type="number" name="mes" value="<%=mes%>">
            <input type="submit" name="gerar" value="Gerar">
        </form>
        <%if(errorMessage!=null){%>
            <h4 style="color:red"><%=errorMessage%></h4>
        <%}else if(hasParameters){%>
            <%
                LocalDate localDate = LocalDate.of(ano,mes,1);
                DayOfWeek dayOfWeek = DayOfWeek.from(localDate);
            %>
            <hr>
            <table border="1">
                <tr>
                    <td>Domingo</td>
                    <td>Segunda</td>
                    <td>Terca</td>
                    <td>Quarta</td>
                    <td>Quinta</td>
                    <td>Sexta</td>
                    <td>Sabado</td>
                </tr>
                <%for(int i=1; i<=5; i++){%>
                    <tr>
                    <%
                        for(int j=dia; j<=(dia+6); j++){
                            if(j>=31) break;
                            if(j>dayOfWeek.getValue()){%>      
                        <td><%=d++%></td>
                    <%}else{f++;%>
                        <td></td>
                    <%}}%>
                        
                    </tr>
                <%dia = dia + 7;}%>
            </table>
        <%}%>
    </body>
</html>
