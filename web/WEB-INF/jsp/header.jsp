<%-- 
    Document   : header
    Created on : Aug 18, 2016, 5:12:42 PM
    Author     : Lenovo
--%>

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

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="${SITE_URL}/">SpringMVC</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="${SITE_URL}/">Home</a></li>
                        <li><a href="${SITE_URL}/about">About</a></li>
                        <li><a href="${SITE_URL}/contact">Contact</a></li>
                        <li><a href="${SITE_URL}/portfolio">Portfolio</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="${SITE_URL}/signin"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="${SITE_URL}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">