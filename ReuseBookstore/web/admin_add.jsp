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
        <sql:setDataSource var="book_add" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />
        
        
        
        <!-----------------HEADER----------------->
        <jsp:include page="/templates/header.jspf" />
        
        <form method="post" action="admin_add_verify.jsp">
            <table class="table">
                <tr>
                        <th>ISBN</th>
                        <td><input type="text" name="book_isbn"></td>
                </tr>
                <tr>
                        <th>Title</th>
                        <td><input type="text" name="book_title" required></td>
                </tr>
                <tr>
                        <th>Author</th>
                        <td><input type="text" name="book_author" required></td>
                </tr>
                <tr>
                        <th>Image</th>
                        <td><input type="file" name="book_image"></td>
                </tr>
                <tr>
                        <th>Description</th>
                        <td><textarea name="book_descr" cols="40" rows="5"></textarea></td>
                </tr>
                <tr>
                        <th>Price</th>
                        <td><input type="text" name="book_price" required></td>
                </tr>
<!--                <tr>
                        <th>Publisher</th>
                        <td><input type="text" name="publisher" required></td>
                </tr>-->
            </table>
            <input type="submit" name="add" value="Add New Book" class="btn btn-primary">
            <input type="reset" value="cancel" class="btn btn-default">
	</form>
        
        <!-----------------FOOTER----------------->
        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
