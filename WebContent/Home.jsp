<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search User</title>
</head>
<body>
	<jsp:include page="header.html" />

	<div class="container">
		<div class="text-center">
			<h3>Search User</h3>
			<form action="SearchUserServlet">
				<div class="form-group">
					<input type="text" name="studentName" size="20px">
				</div>
				<div class="form-group">
					<input class="btn btn-primary" type="submit" value="Search">
				</div>
			</form>
		</div>
	</div>

</body>
</html>