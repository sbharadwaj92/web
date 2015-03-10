<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">

<script src="<%= request.getContextPath() %>/js/jquery-latest.min.js"></script>

<script	src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>

<script src="<%= request.getContextPath() %>/js/form.js"></script>

</head>
<body>


	<div class="col-md-4 col-md-offset-4" style="margin-top: 5%">
		<div class="panel panel-default">
		  <div class="panel-body">
		  
			<form name="loginform" action="home.html" onSubmit="return validateLoginForm()" method="post">
			  <div class="form-group">
			    <label for="username">Username</label>
			    <input type="text" class="form-control" id="username" name="username" placeholder="Enter username"><div id="errorusername"></div>
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" id="password" name="password" placeholder="Enter password"><div id="errorpassword"></div>
			  </div>
			  
			  <div id="errorlogin"></div>
			  
			  <div class="checkbox">
			    <label>
			      <input type="checkbox"> Remember Me
			    </label>
			  </div>
			  <div class="center">
			  	<button type="submit" class="btn btn-success">Login</button>
			  </div>
			</form>
		  </div>
		</div>
	</div>
	
	<div id="footer" class="container-fluid" style="padding: 0px; margin-top: 40.5%;">
		<nav class="navbar navbar-default" style="margin-bottom: 0px;">
			<p class="text-muted credit footp">Copyright @2015 TJA142_834002</p>
		</nav>
	</div>
</body>
</html>