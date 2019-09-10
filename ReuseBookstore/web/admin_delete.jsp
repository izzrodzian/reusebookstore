<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<sql:setDataSource var="book_delete" 
                   driver="com.mysql.jdbc.Driver" 
                   url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                   user="root"
                   password="" />

<sql:update dataSource="${book_delete}" var="result" >
    DELETE FROM books WHERE book_isbn = '<%= request.getParameter("bookisbn") %>'
</sql:update>
            

<% response.sendRedirect("admin_book.jsp"); %>