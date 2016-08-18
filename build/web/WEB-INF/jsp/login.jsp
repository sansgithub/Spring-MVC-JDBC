<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${SITE_URL}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${SITE_URL}/static/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="${SITE_URL}/static/js/jquery-1.12.1.min.js" type="text/javascript"></script>
        <script src="${SITE_URL}/static/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <form class="form-horizontal">
                <fieldset>
                    <!-- Form Name -->
                    <legend>Login</legend>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="username">Username</label>  
                        <div class="col-md-4">
                            <input id="username" name="username" type="text" placeholder="username" class="form-control input-md" required="">

                        </div>
                    </div>
                    <!-- Password input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="password">Password</label>
                        <div class="col-md-4">
                            <input id="password" name="password" type="password" placeholder="password" class="form-control input-md" required="">

                        </div>
                    </div>
                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="button1id"></label>
                        <div class="col-md-8">
                            <button id="button1id" name="button1id" class="btn btn-success">Login</button>
                            <a href="${SITE_URL}/" class="btn btn-danger">Cancel</a>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>
