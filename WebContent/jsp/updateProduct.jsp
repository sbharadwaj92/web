<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.tcs.ilp.bean.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
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
		<div class="col-md-4 col-md-offset-2"
			style="padding: 0px; padding-right: 1%; border: 1px solid; border-radius: 4px; border-color: #dddddd">
			<%
				ProductBean product = (ProductBean) request.getAttribute("prod");
			%>

			<h4 class="center">EDIT PRODUCT DETAILS</h4>
			<br>
			<form name="productform" class="form-horizontal"
				action="<%=request.getContextPath()%>/ProductController"
				onSubmit="return validateUProductForm()" method="post">
				<div class="form-group">
					<label class="col-sm-4 control-label">Product ID: </label>
					<div class="col-sm-8">
						<label class="col-sm-4 control-label"><%=product.getProductId()%></label>
					</div>
				</div>

				<div class="form-group">
					<label for="pname" class="col-sm-4 control-label">Product
						Name: </label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="pname" name="pname"
							placeholder="Enter product name"
							value="<%=product.getProductName()%>">
					</div>
				</div>
				<div class="form-group">
					<label for="pdesc" class="col-sm-4 control-label">Description:
					</label>
					<div class="col-sm-8">
						<label for="pid" class="col-sm-4 control-label"><%=product.getDescription()%></label>
					</div>
				</div>
				<div class="form-group">
					<label for="pcat" class="col-sm-4 control-label">Category:
					</label>
					<div class="col-sm-8">
						<select class="form-control" id="pcat" name="pcat"
							style="cursor: pointer">
							<option>Select Category</option>
							<option <%if ("Kids Apparel".equals(product.getCategory())) {%>
								selected <%}%>>Kids Apparel</option>
							<option <%if ("Men's Apparel".equals(product.getCategory())) {%>
								selected <%}%>>Men's Apparel</option>
							<option
								<%if ("Women's Apparel".equals(product.getCategory())) {%>
								selected <%}%>>Women's Apparel</option>
							<option
								<%if ("Home Appliances".equals(product.getCategory())) {%>
								selected <%}%>>Home Appliances</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="pprice" class="col-sm-4 control-label">Price/Quantity:
					</label>
					<div class="col-sm-8">
						<input type="text" step="0.01" class="form-control" id="pprice"
							name="pprice" placeholder="Enter price"
							value="<%=product.getPrice()%>">
					</div>
				</div>
				<div class="form-group">
					<label for="ptot" class="col-sm-4 control-label">Total
						Quantity: </label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="ptot" name="ptot"
							placeholder="Enter total quantity"
							value="<%=product.getQuantity()%>">
					</div>
				</div>
				<div class="form-group">
					<label for="pradio" class="col-sm-4 control-label">Status</label>
					<div class="col-sm-8">
						<label class="radio-inline"><input type="radio"
							name="pradio" id="pradio1" value="Open"
							<%if ("Open".equals(product.getStatus())) {%> checked <%}%>>Open</label>
						<label class="radio-inline"><input type="radio"
							name="pradio" id="pradio2" value="Close"
							<%if ("Close".equals(product.getStatus())) {%> checked <%}%>>Close</label>
					</div>
					<br>
					<br>
					<div id="errorprod"></div>
				</div>
				<input type="hidden" name="pid"
					value="<%=product.getProductId()%>"> <input type="hidden"
					name="pdesc" value="<%=product.getDescription()%>"> <input
					type="hidden" name="action" value="updateProduct">

				<div class="form-group" style="margin-left: 40%;">
					<button type="submit" class="btn btn-success">UPDATE</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/jsp/includes/footer.jsp" />
</body>
</html>