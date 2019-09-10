<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Detail</title>
    </head>
    <body>
        <!-----------------HEADER----------------->
        <jsp:include page="/templates/header.jspf" />

        <%
            String url = request.getParameter("bookisbn");

            Class.forName("com.mysql.jdbc.Driver");
            Connection myConn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/www_project", "root", "");
            String myString = "SELECT * FROM books WHERE book_isbn = \'" . url . "\'";
            PreparedStatement myStmt = myConn.prepareStatement(myString);
        %>

        <!-----------------FOOTER----------------->
        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
