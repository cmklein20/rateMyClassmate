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
        <c:set value="progress-bar-danger" var="colorBar0"></c:set>
        <c:if test="${averageRatings[1][0] > 1.67}"> 
            <c:set value="progress-bar-warning" var="colorBar0"></c:set>
        </c:if>
        <c:if test="${averageRatings[1][0] > 3.33}"> 
            <c:set value="progress-bar-success" var="colorBar0"></c:set>
        </c:if>

        <c:set value="progress-bar-danger" var="colorBar1"></c:set>
        <c:if test="${averageRatings[1][1] > 1.67}"> 
            <c:set value="progress-bar-warning" var="colorBar1"></c:set>
        </c:if>
        <c:if test="${averageRatings[1][1] > 3.33}"> 
            <c:set value="progress-bar-success" var="colorBar1"></c:set>
        </c:if>

        <c:set value="progress-bar-danger" var="colorBar2"></c:set>
        <c:if test="${averageRatings[1][2] > 1.67}"> 
            <c:set value="progress-bar-warning" var="colorBar2"></c:set>
        </c:if>
        <c:if test="${averageRatings[1][2] > 3.33}"> 
            <c:set value="progress-bar-success" var="colorBar2"></c:set>
        </c:if>

        <c:set value="progress-bar-danger" var="colorBar3"></c:set>
        <c:if test="${averageRatings[1][3] > 1.67}"> 
            <c:set value="progress-bar-warning" var="colorBar3"></c:set>
        </c:if>
        <c:if test="${averageRatings[1][3] > 3.33}"> 
            <c:set value="progress-bar-success" var="colorBar3"></c:set>
        </c:if>

        <c:set value="progress-bar-danger" var="colorBar4"></c:set>
        <c:if test="${averageRatings[1][4] > 1.67}"> 
            <c:set value="progress-bar-warning" var="colorBar4"></c:set>
        </c:if>
        <c:if test="${averageRatings[1][4] > 3.33}"> 
            <c:set value="progress-bar-success" var="colorBar4"></c:set>
        </c:if>

        <div class="container">

            <div class="row">
                <h1 class="text-center">${userInfo[0].getFirstName()} ${userInfo[0].getLastName()}</h1>
                <div class="col-xs-12">
                    <div class="text-center">
                        <a target="_blank" href="https://twitter.com/intent/tweet?text=Check%20Out%20This%20Guys%20Rating&url=http://www.rateMyClassmate.com/SearchUserRatings?id=${userInfo[0].getID()}"><img src="images/twitter.png"></a>
                        <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http://www.rateMyClassmate.com/SearchUserRatings?id=${userInfo[0].getID()}"><img src="images/facebook.png"></a>

                    </div>
                    <br>
                </div>
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
                        <div class="progress-bar progress-bar-striped active ${colorBar4}" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][4]}%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                    Availability: ${averageRatings[1][3]}
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active ${colorBar3}" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][3]}%;">
                            <span class="sr-only">100% Complete</span>
                        </div>
                    </div>
                    Friendliness: ${averageRatings[1][0]}
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active ${colorBar0}" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][0]}%;">
                            <span class="sr-only">80% Complete</span>
                        </div>
                    </div>
                    Motivation: ${averageRatings[1][2]}
                    <div class="progress">
                        <div class="progress-bar ${colorBar2} progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][2]}%;">
                            <span class="sr-only">40% Complete</span>
                        </div>
                    </div>
                    Dependability: ${averageRatings[1][1]}
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active ${colorBar1}" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${averageRatings[0][1]}%;">
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
                            <h5 class="text-center">Comment Date: ${userComments.getDate().toString()}</h5>
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
                            <form action="LeaveRating" method="POST">
                                <div class="form-group">
                                    <input style="display: none" value="${userInfo[0].getID()}" name="ratingFor">
                                    <p>Knowledge</p>
                                    <select class="form-control" name="knowledge">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option selected="selected">5</option>
                                    </select>
                                    <p>Availability</p>
                                    <select class="form-control" name="availability">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option selected="selected">5</option>
                                    </select>
                                    <p>Friendliness</p>
                                    <select class="form-control" name="friendliness">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option selected="selected">5</option>
                                    </select>
                                    <p>Motivation</p>
                                    <select class="form-control" name="motivation">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option selected="selected">5</option>
                                    </select>
                                    <p>Dependability</p>
                                    <select class="form-control" name="dependability">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option selected="selected">5</option>
                                    </select>
                                    
                                </div>
                                <button type="submit" class="btn btn-primary pull-right ">Leave A Rating</button>
                            </form>
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
                        <div class="modal-header">
                            <h4>Leave a Comment</h4>
                        </div>
                        <div class="modal-body">
                            <form action="WriteReview" method="POST">
                                <div class="form-group">
                                    <input style="display: none" value="${userInfo[0].getID()}" name="reviewFor">
                                    <input style="display: none" value="${userInfo[0].getSchoolName()}" name="schoolName">
                                    <label for="class">Class</label>
                                    <input name="class" id="class" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="reviewText">Comment</label>
                                    <textarea row="3" name="reviewText" id="reviewText" class="form-control"></textarea>
                                </div>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary pull-right ">Leave Comment</button>
                            </form>
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