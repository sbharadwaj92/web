<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Any Queries</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<script src="<%= request.getContextPath() %>/js/jquery-latest.min.js"></script>
<script	src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>
<script src="<%= request.getContextPath() %>/js/form.js"></script>
</head>
<body>
<jsp:include page="/jsp/includes/header.jsp" />
<jsp:include page="/jsp/includes/topPanel.jsp" />
	<div class="container-fluid">
	<jsp:include page="/jsp/includes/leftPanel.jsp" />
				<div class="col-md-9 col-md-offset-1" style="padding: 0px; padding-right:1%;">
			<h4 style="text-align: right;">Welcome Admin</h4>

			<div class="col-md-6 col-md-offset-1" style="margin-top: 4%">
				<div class="panel panel-default">
				  <div class="panel-body">
				  
					<form name="queryform" action="<%= request.getContextPath() %>/jsp/thankYou.jsp" onSubmit="return validateQueryForm()" method="post">
					
					  <div class="form-group">
					    <label for="qquery">Write your Query/Problem</label>
					    <textarea class="form-control" rows="3" id="qquery" name="qquery"	placeholder="Enter query"></textarea>
					  </div>
					  
					  <div class="form-group">
					    <label for="qemail">Email ID</label>
					    <input type="text" class="form-control" id="qemail" name="qemail" placeholder="Enter email Id">
					  </div>
					  
					  <div class="form-group">
					    <label for="qmob">Phone Number</label>
					    <input type="text" class="form-control" id="qmob" name="qmob" placeholder="Enter phone number">
					  </div>
					  
					  <div id="errorquery"></div>
					  
					  <div class="center">
					  	<button type="submit" class="btn btn-primary">POST THE QUERY</button>
					  </div>
					</form>
				  </div>
				</div>
			</div>
	
		</div>
	</div>
<jsp:include page="/jsp/includes/footer.jsp" />
</body>
</html>