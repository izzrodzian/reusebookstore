<%-- 
    Document   : contact
    Created on : May 22, 2019, 4:44:34 PM
    Author     : GoGeek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
    </head>
    <body>
        <jsp:include page="/templates/header.jspf" />

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6 text-center">
                <form class="form-horizontal">
                    <fieldset>
                        <legend>Contact</legend>
                        <p class="lead">I?d love to hear from you! Complete the form to send me an email.</p>
                        <div class="form-group">
                            <label for="inputName" class="col-lg-2 control-label">Name</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputName" placeholder="Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputEmail" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                            <div class="col-lg-10">
                                <textarea class="form-control" rows="3" id="textArea"></textarea>
                                <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span></div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button type="reset" class="btn btn-default">Cancel</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>

        <jsp:include page="/templates/footer.jspf" />
    </body>
</html>