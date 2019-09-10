<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify</title>
    </head>
    <body>
        <%
            String book_isbn = request.getParameter("book_isbn");
            String book_title = request.getParameter("book_title");
            String book_author = request.getParameter("book_author");
            String book_image = request.getParameter("book_image");
            String book_descr = request.getParameter("book_descr");
            String book_price = request.getParameter("book_price");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection myConn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/www_project", "root", "");
            String myString = "INSERT INTO books (book_isbn, book_title, book_author, book_image, book_descr, book_price) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement myStmt = myConn.prepareStatement(myString);
            
            myStmt.setString(1, book_isbn);
            myStmt.setString(2, book_title);
            myStmt.setString(3, book_author);
            myStmt.setString(4, book_image);
            myStmt.setString(5, book_descr);
            myStmt.setString(6, book_price);
            
            myStmt.execute();
            
            myConn.close();
            
            response.sendRedirect("admin_book.jsp");
        %>
        
    </body>
</html>
