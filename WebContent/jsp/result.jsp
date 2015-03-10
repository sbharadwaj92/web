<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.Integer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
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
		<h4 style="text-align: right;">Welcome Admin</h4>
		<%
			String id = (String) request.getAttribute("id");
		%>
		<%
			String result = (String) request.getAttribute("result");
		%>
		<div class="col-md-9 col-md-offset-1"
			style="padding: 0px; margin-top: 1%; padding-right: 1%;">
			<%
				if ("insert".equals(result)) {
			%>
			<h3 style="color: green; padding-top: 100px;">
				Product has been successfully added and product id is '<%=id%>'
			</h3>
			<%
				}
			%>
			<%
				if ("delete".equals(result)) {
			%>
			<h3 style="color: green; padding-top: 100px;">
				The Product with product id '<%=id%>' has been deleted successfully
			</h3>
			<%
				}
			%>
		</div>
	</div>
	<jsp:include page="/jsp/includes/footer.jsp" />
</body>
</html>