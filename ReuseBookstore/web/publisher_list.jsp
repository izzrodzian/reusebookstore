<%@page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="reuse" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Listing</title>
    </head>
    <body>
        <sql:setDataSource var="publisher_list" 
                           driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/www_project?zeroDateTimeBehavior=convertToNull"
                           user="root"
                           password="" />
        
        <sql:query dataSource="${publisher_list}" var="result" >
            SELECT * from publisher ORDER BY publisherid;
        </sql:query>
        
        <jsp:include page="/templates/header.jspf" />
        
	<p class="lead">List of Publisher</p>
        
            <ul>
	<?php 
		while($row = mysqli_fetch_assoc($result)){
			$count = 0; 
			$query = "SELECT publisherid FROM books";
			$result2 = mysqli_query($conn, $query);
			if(!$result2){
				echo "Can't retrieve data " . mysqli_error($conn);
				exit;
			}
			while ($pubInBook = mysqli_fetch_assoc($result2)){
				if($pubInBook['publisherid'] == $row['publisherid']){
					$count++;
				}
			}
	?>
        <reuse:forEach var="row" items="${result.rows}">
            <li>
                <span class="badge"><?php echo $count; ?></span>
                <a href="bookPerPub.php?pubid=<?php echo $row['publisherid']; ?>"><reuse:out value="${row.publisher_name}" /></a>
            </li>
        </reuse:forEach>
            <li>
                <a href="books.jsp">List full of books</a>
            </li>
	</ul>
        

    <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
