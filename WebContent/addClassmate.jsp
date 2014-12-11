<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Classmate</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.html"/>
    
    <c:set var="now" value="<%=new java.util.Date().toString()%>" />
    
    <div class="container">
            <div class="row">
                <h1 class="text-center">Add Classmate</h1>
                <div class="col-sm-6 col-sm-offset-3 rmc-background">
                    <div class="text-center">
                        
                        <form class="form" action="AddNewUser" method="POST">
                            <div class="form-group">
                                <label for="firstName">First Name</label>
                                <input type="text" name="studentName" class="form-control" id="firstName" placeholder="First Name" required/>
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last Name</label>
                                <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name" required/>
                            <div class="form-group"><%---------------------------------------------------------------------------------------------------%>
                                <label for="userName"></label>
                                <input style="display: none" value="${now}" type="text" name="userName" class="form-control" id="userName"  required/>
                            <div class="form-group">
                                <label for="email"></label>
                                <input style="display: none" value="${now}" name="email" class="form-control" id="email"  required/>
                            <div class="form-group">
                                <label for="password"></label>
                                <input style="display: none" value="abc" type="password" name="password" class="form-control" id="password" required/>
                            <div class="form-group">
                                <label for="school" >School</label>
                                <select class="form-control" id="school" name="schoolName">
                                    <option>San Jose State University</option>
                                    <option>San Jose City College</option>
                                    <option>West Valley College</option>
                                    <option>Mission College</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-success">Add To Database</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>




        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    </body>

</html>