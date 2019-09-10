<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

    
<jsp:include page="/templates/header.jspf" />

<sql:setDataSource var="select4LatestBook" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />
<sql:query dataSource="${select4LatestBook}" var="result" >
    SELECT book_isbn, book_image FROM books ORDER BY book_isbn DESC
</sql:query>
    
    <p class="lead text-center text-muted">Latest Books</p>
    <div class="row">
        <reuse:forEach var="row" begin = "1" end = "4" items="${result.rows}">
      	<div class="col-md-3">
            <a href="book.jsp?bookisbn=<reuse:out value='${row.book_isbn}'/>">
                <img class="img-responsive img-thumbnail" src="./bootstrap/img/<reuse:out value='${row.book_image}'/>">
            </a>
        </div>
        </reuse:forEach>
    </div>
<jsp:include page="/templates/footer.jspf" />