<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.tcs.ilp.bean.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
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
			ProductBean product = (ProductBean) request.getAttribute("prod");
		%>
		<%
			String action = (String) request.getAttribute("action");
		%>
		<div class="col-md-9 col-md-offset-1"
			style="padding: 0px; margin-top: 1%; padding-right: 1%; padding-left: 13%;">

			<%
				if ("update".equals(action)) {
			%>
			<h3 style="color: green;">Product has been updated successfully</h3>
			<%
				}
			%>

			<table class="table table-bordered" style="max-width: 400px;">
				<thead>
					<tr>
						<td colspan="2" style="text-align: center">PRODUCT DETAILS</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="trcolor">ID</th>
						<td><%=product.getProductId()%></td>
					</tr>
					<tr>
						<th class="trcolor">NAME</th>
						<td><%=product.getProductName()%></td>
					</tr>

					<%
						if ("delete".equals(action)) {
					%>
					<tr>
						<th class="trcolor">DESCRIPTION</th>
						<td><%=product.getDescription()%></td>
					</tr>
					<%
						}
					%>

					<tr>
						<th class="trcolor">CATEGORY</th>
						<td><%=product.getCategory()%></td>
					</tr>
					<tr>
						<th class="trcolor">PRICE</th>
						<td><%=product.getPrice()%></td>
					</tr>
					<tr>
						<th class="trcolor">QUANTITY</th>
						<td><%=product.getQuantity()%></td>
					</tr>
					<tr>
						<th class="trcolor">STATUS</th>
						<td><%=product.getStatus()%></td>
					</tr>
				</tbody>

			</table>
			<%
				if ("delete".equals(action)) {
			%>
			<a style="margin-left:19%;"
				href="<%=request.getContextPath()%>/ProductController?action=deleteProduct&&id=<%=product.getProductId()%>"
				class="btn btn-danger" onclick=" return deleteForm();">Delete</a>
			<%
				}
			%>
		</div>
	</div>
	<jsp:include page="/jsp/includes/footer.jsp" />
</body>
</html>