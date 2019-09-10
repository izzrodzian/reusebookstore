<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
           
            try{
                Class.forName("jdbc:mysql://localhost:3306/www_project");
                Connection myConn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/www_project", "root", "");
                Statement myStmt = myConn.createStatement();
                
                
            } catch(Exception e){
                
            }
        %>
        
        <reuse:set var="vname" value="<%= name %>"/>
        <reuse:set var="vpass" value="<%= pass %>"/>
        <reuse:if test="${(vname == 'admin') && (vpass == 'admin')}">
            <% response.sendRedirect("admin_book.jsp"); %>
        </reuse:if>
    </body>
</html>
