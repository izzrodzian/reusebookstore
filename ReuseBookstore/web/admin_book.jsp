<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Listing</title>
    </head>
    <body>
        <sql:setDataSource var="book_list" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />
        
        <sql:query dataSource="${book_list}" var="result" >
            SELECT * from books ORDER BY book_isbn;
        </sql:query>
            
        <jsp:include page="/templates/header.jspf" />
        
	<p class="lead"><a href="admin_add.jsp">Add new book</a></p>
	<a href="admin_signout.jsp" class="btn btn-primary">Sign out!</a>
	<table class="table" style="margin-top: 20px">
		<tr>
			<th>ISBN</th>
			<th>Title</th>
			<th>Author</th>
			<th>Image</th>
			<th>Description</th>
			<th>Price</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
		</tr>
                <reuse:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><reuse:out value="${row.book_isbn}" /></td>
			<td><reuse:out value="${row.book_title}" /></td>
			<td><reuse:out value="${row.book_author}" /></td>
			<td><reuse:out value="${row.book_image}" /></td>
			<td><reuse:out value="${row.book_descr}" /></td>
			<td><reuse:out value="${row.book_price}" /></td>
<!--			<td><?php echo getPubName($conn, $row['publisherid']); ?></td>-->
			<td><a href="admin_edit.jsp?bookisbn=<reuse:out value='${row.book_isbn}' />">Edit</a></td>
			<td><a href="admin_delete.jsp?bookisbn=<reuse:out value='${row.book_isbn}' />">Delete</a></td>
                    </tr>
                </reuse:forEach>
	</table>
        
        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
