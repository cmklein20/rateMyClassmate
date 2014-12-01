<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reviews</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">

    </head>
    <body>
        <jsp:include page="header.html"/>

        <div class="container">
            <h1 class="text-center">${userRatings[0].getFirstName()} ${userRatings[0].getLastName()}</h1>
            <c:forEach var="userRatings" items="${userRatings}">

                <div class="col-sm-4 col-sm-offset-4 rmc-background">
                    Knowledge: ${userRatings.getKnowledge()}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                    Availability: ${userRatings.getAvailability()}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                            <span class="sr-only">100% Complete</span>
                        </div>
                    </div>
                    Friendliness: ${userRatings.getFriendlyness()}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                            <span class="sr-only">80% Complete</span>
                        </div>
                    </div>
                    Motivation: ${userRatings.getMotivation()}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                            <span class="sr-only">40% Complete</span>
                        </div>
                    </div>
                    Dependability: ${userRatings.getDependability()}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>



        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script src="js/bootstrap.min.js"></script>

    </body>


</html>