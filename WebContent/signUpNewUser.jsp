<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up New User</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.html"/>

        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <div class="text-center">
                        <h1>Sign Up New User</h1>
                        <form class="form" action="AddNewUser" method="POST">
                            <div class="form-group">
                                <label for="firstName">First Name</label>
                                <input type="text" name="studentName" class="form-control" id="firstName" placeholder="First Name" required/>
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last Name</label>
                                <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name" required/>
                            </div>
                            <div class="form-group">
                                <label for="userName">User Name</label>
                                <input type="text" name="userName" class="form-control" id="userName" placeholder="User Name" required/>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" class="form-control" id="email" placeholder="Email" required/>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required/>
                            </div>
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