<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<script src="<%=request.getContextPath()%>/js/jquery-latest.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/form.js"></script>
</head>
<body>
	<jsp:include page="/jsp/includes/header.jsp" />
	<jsp:include page="/jsp/includes/topPanel.jsp" />
	<div class="container-fluid">
		<jsp:include page="/jsp/includes/leftPanel.jsp" />
		<div class="col-md-9 col-md-offset-1"
			style="padding: 0px; margin-top: 1%; padding-right: 1%;">
			<h4 style="text-align: right;">Welcome Admin</h4>
			<h4 style="color: green; padding-top: 100px;">Thank you for
				posting the query. We will connect you either via Mobile/Email</h4>
		</div>


	</div>
	<jsp:include page="/jsp/includes/footer.jsp" />
</body>
</html>