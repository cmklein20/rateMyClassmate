<%-- 
    Document   : searchResults
    Created on : Nov 22, 2014, 12:32:34 PM
    Author     : cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Model.SearchForUser"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.html"/>
        <div class="col-sm-6 col-sm-offset-3 rmc-background">
            <c:forEach var="user" items="${userList}">
                <div class="row">
                    <span class="searchResultText">${user.getFirstName()} ${user.getLastName()}, ${user.getSchoolName()}</span>
                    <div class="pull-right searchResultLink"><a class="btn btn-default" href="SearchUserRatings?id=${user.getID()}">View Ratings</a></div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
