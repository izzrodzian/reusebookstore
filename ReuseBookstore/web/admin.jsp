<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administration</title>
    </head>
    <body>
        <jsp:include page="/templates/header.jspf" />
        
        <form class="form-horizontal" method="post" action="admin_verify.jsp">
            <div class="form-group">
                <label for="name" class="control-label col-md-4">Name</label>
                <div class="col-md-4">
                    <input type="text" name="name" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="pass" class="control-label col-md-4">Pass</label>
                <div class="col-md-4">
                    <input type="password" name="pass" class="form-control">
                </div>
            </div>
            <input type="submit" name="submit" class="btn btn-primary">
        </form>

        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>
