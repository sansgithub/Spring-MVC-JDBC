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
                <legend>Sign Up</legend>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">First name</label>  
                    <div class="col-md-4">
                        <input id="fname" name="fname" type="text" placeholder="first name" class="form-control input-md" required="">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="lname">Last name</label>  
                    <div class="col-md-4">
                        <input id="lname" name="lname" type="text" placeholder="last name" class="form-control input-md" required="">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Email</label>  
                    <div class="col-md-4">
                        <input id="email" name="email" type="text" placeholder="email" class="form-control input-md" required="">
                    </div>
                </div>
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="gendet">Gender</label>
                    <div class="col-md-4">
                        <select id="gendet" name="gendet" class="form-control">
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Other</option>
                        </select>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="contact">Contact</label>  
                    <div class="col-md-4">
                        <input id="contact" name="contact" type="text" placeholder="contact" class="form-control input-md" required="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="button1id"></label>
                    <div class="col-md-8">
                        <button id="button1id" name="button1id" class="btn btn-success">Register</button>
                        <a href="${SITE_URL}/" class="btn btn-danger">Cancel</a>
                    </div>
                </div>
            </fieldset>
        </form>
        </div>
    </body>
</html>
