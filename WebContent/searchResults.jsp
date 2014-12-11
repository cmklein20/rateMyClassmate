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
        <div class="container">
            <h3 class="text-center">Search Results (${userList.size()})</h3>
            <div class="col-xs-12 col-md-8 col-md-offset-2 rmc-background" style="margin-bottom: 10px">
                <div class="col-xs-12">
                    <c:if test="${empty userList}"><h3 class="text-center">There are no reviews for students at this school</h3></c:if>
                    <c:forEach var="user" items="${userList}" varStatus="loop">

                        <div class="row">
                            <div class="col-xs-4" style="padding-top: 5px;">
                                <font class="searchResultText">${user.getFirstName()} ${user.getLastName()}</font>
                            </div>
                            <div class="col-xs-4" style="padding-top: 5px;">
                                <font class="searchResultText">${user.getSchoolName()}</font>
                            </div>
                            <div class="col-xs-4">
                                 <div class="pull-right searchResultLink">
                                     <a class="btn btn-default" href="SearchUserRatings?id=${user.getID()}">View Ratings</a>
                                </div>
                            </div>
                        </div>
                        <c:if test="${loop.index <= (userList.size() - 2)}">
                            <hr>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
