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
            <div class="row">
                <h1 class="text-center">${userInfo[0].getFirstName()} ${userInfo[0].getLastName()}</h1>
                <div class="col-sm-4 col-sm-offset-4 rmc-background">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>Overall Rating</h4>
                        </div>
                        <div class="col-sm-6">
                            <div class="pull-right">
                                <a class="btn btn-default" data-toggle="modal" data-target="#ratingModal">Leave Rating</a>
                            </div>
                        </div>
                    </div>
                    Knowledge: ${averageRatings[1][4]}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][4]}%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                    Availability: ${averageRatings[1][3]}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][3]}%;">
                            <span class="sr-only">100% Complete</span>
                        </div>
                    </div>
                    Friendliness: ${averageRatings[1][0]}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][0]}%;">
                            <span class="sr-only">80% Complete</span>
                        </div>
                    </div>
                    Motivation: ${averageRatings[1][2]}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][2]}%;">
                            <span class="sr-only">40% Complete</span>
                        </div>
                    </div>
                    Dependability: ${averageRatings[1][1]}
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][1]}%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <h2 class="text-center">What people are saying about ${userInfo[0].getFirstName()} ${userInfo[0].getLastName()}</h3>
                    <div class="col-sm-4 col-sm-offset-4 rmc-background">
                        <div class="text-center">
                            <a class="btn btn-default" data-toggle="modal" data-target="#commentModal">Leave a Comment</a>
                        </div>
                        <hr>
                        <c:forEach var="userComments" items="${userComments}">
                            <p class="text-center">${userComments.getComment()}</p>
                            <hr>
                        </c:forEach>
                    </div>
            </div>

            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="ratingModal" aria-hidden="true" id="ratingModal">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4>Leave a Rating</h4>
                        </div>
                        <div class="modal-body">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="commentModal" aria-hidden="true" id="commentModal">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header"<>
                            <h4>Leave a Comment</h4>
                        </div>
                        <div class="modal-body">
                            <form action="WriteReview" method="POST">
                                <div class="form-group">
                                    <input style="display: none" value="${userInfo[0].getID()}" name="reviewFor">
                                    <input style="display: none" value="${userInfo[0].getSchoolName()}" name="schoolName">
                                    <input name="class">
                                    <textarea row="3" name="reviewText"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary pull-right ">Leave Comment</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script src="js/bootstrap.min.js"></script>

    </body>


</html>