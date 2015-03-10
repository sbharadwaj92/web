<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@page import="com.tcs.ilp.bean.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Products</title>
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
			ArrayList<ProductBean> pList = (ArrayList<ProductBean>) request
					.getAttribute("listproduct");
		%>
		<div class="col-md-9 col-md-offset-1"
			style="padding: 0px; margin-top: 1%; padding-right: 1%;">
			<table class="table table-bordered" style="max-width: 800px;">
				<thead>
					<tr class="trcolor">
						<th>ID</th>
						<th>NAME</th>
						<th>CATEGORY</th>
						<th>PRICE</th>
						<th>QUANTITY</th>
						<th>STATUS</th>
						<th>MODIFY</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (ProductBean p : pList) {
					%>
					<tr>
						<td><%=p.getProductId()%></td>
						<td><%=p.getProductName()%></td>
						<td><%=p.getCategory()%></td>
						<td><%=p.getPrice()%></td>
						<td><%=p.getQuantity()%></td>
						<td><%=p.getStatus()%></td>
						<td><a
							href="<%=request.getContextPath()%>/ProductController?action=update&&id=<%=p.getProductId()%>">Update</a>
							<a
							href="<%=request.getContextPath()%>/ProductController?action=delete&&id=<%=p.getProductId()%>">Delete</a>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="/jsp/includes/footer.jsp" />
</body>
</html>