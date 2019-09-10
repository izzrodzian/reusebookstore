<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Book</title>
    </head>
    <body>
        <sql:setDataSource var="book_list" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />
        
        <sql:update dataSource="${book_edit}" var="result" >
            UPDATE books 
        </sql:query>
        
        <!-----------------HEADER----------------->
        <jsp:include page="/templates/header.jspf" />
        
        <form method="post" action="edit_book.jsp" enctype="multipart/form-data">
            <table class="table">
                    <tr>
                            <th>ISBN</th>
                            <td><input type="text" name="isbn" value="<reuse:out value="${row.book_isbn}" />" readOnly="true"></td>
                    </tr>
                    <tr>
                            <th>Title</th>
                            <td><input type="text" name="title" value="<reuse:out value="${row.book_isbn}" />" required></td>
                    </tr>
                    <tr>
                            <th>Author</th>
                            <td><input type="text" name="author" value="<reuse:out value="${row.book_isbn}" />" required></td>
                    </tr>
                    <tr>
                            <th>Image</th>
                            <td><input type="file" name="image"></td>
                    </tr>
                    <tr>
                            <th>Description</th>
                            <td><textarea name="descr" cols="40" rows="5"><reuse:out value="${row.book_isbn}" /></textarea>
                    </tr>
                    <tr>
                            <th>Price</th>
                            <td><input type="text" name="price" value="<reuse:out value="${row.book_isbn}" />" required></td>
                    </tr>
                    <tr>
                            <th>Publisher</th>
                            <td><input type="text" name="publisher" value="<?php echo getPubName($conn, $row['publisherid']); ?>" required></td>
                    </tr>
            </table>
            <input type="submit" name="save_change" value="Change" class="btn btn-primary">
            <input type="reset" value="cancel" class="btn btn-default">
	</form>
	<br/>
	<a href="admin_book.jsp" class="btn btn-success">Confirm</a>
        
        <!-----------------FOOTER----------------->
        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
