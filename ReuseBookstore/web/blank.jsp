<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-----------------HEADER----------------->
        <jsp:include page="/templates/header.jspf" />
        
        
        <!-----------------FOOTER----------------->
        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>

 <sql:setDataSource var="book_detail" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />

        <sql:query dataSource="${book_detail}" var="result" >
            SELECT * from books WHERE book_isbn = '<%= request.getParameter("bookisbn")%>';
        </sql:query>

        