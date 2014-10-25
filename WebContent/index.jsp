<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, intial-scale=1">
<title>Rate My Classmate</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#rmc-navbar">
			<span class="sr-only">Toggle Navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Rate My Classmate</a>
	</div>

	<div class="collapse navbar-collapse" id="rmc-navbar">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Link 1</a>
			<li><a href="#">Link 2</a>
			<li><a href="#">Link 3</a>
		</ul>
		<div class="navbar-form navbar-right">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Username">
				<input type="text" class="form-control" placeholder="Password">
			</div>
			<button type="submit" class="btn btn-primary">Sign In</button>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="col-sm-6 col-sm-offset-3 rmc-background">
			<div class="row" style="padding: 10px;">
				<div class="text-center">
					<h1>Rate My Classmate</h1>
					<p>Welcome to Rate My Classmate. Please search for a classmate
						below.</p>
				</div>
				<div class="form">
					<div class="form-group">
						<input type="text" class="form-control main-form" placeholder="First Name"> 
						<input type="text" class="form-control main-form" placeholder="Last Name"> 
						<select class="form-control">
							<option>Select A School</option>
							<option>San Jose State University</option>
							<option>Mission College</option>
							<option>San Jose City College</option>
							<option>West Valley College</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary pull-right ">Search</button>
				</div>
			</div>

			<div class="row" style="padding: 10px;">
				<hr />
				<div class="text-center">
					<p>Having trouble finding a classmate?</p>
					<a class="btn btn-success btn-block">Add a Classmate to the
						Database</a>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

	<script src="js/bootstrap.min.js"></script>
</body>
</html>