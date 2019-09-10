<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Catalog</title>
    </head>
    <body>
         <sql:setDataSource var="book_catalog" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />
         
        <jsp:include page="/templates/header.jspf" />
        
        <sql:query dataSource="${book_catalog}" var="result" >
            SELECT book_isbn, book_image FROM books
        </sql:query>
            
            <p class="lead text-center text-muted">Full Catalogs of Books</p>
            
            <reuse:forEach var="row" step="1" items="${result.rows}">
            <div class="row">
                <reuse:forEach var="row" begin="0" end="20" step="1" items="${result.rows}">
                <div class="col-md-3">
                    <a href="book.jsp?bookisbn=<reuse:out value='${row.book_isbn}'/>">
                        <img class="img-responsive img-thumbnail" src="./bootstrap/img/<reuse:out value='${row.book_image}'/>">
                    </a>
                </div>
                </reuse:forEach>
            </div>
            </reuse:forEach>

    <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
