<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="<%= request.getContextPath() %>/jsp/includes/header.jsp" />

	<div class="container-fluid">
		<div class="col-md-2 leftpanel">
			<div class="panel panel-default"
				style="border: none; box-shadow: none;">
				<div class="panel-body">
					<a href="add-product.html" style="font-weight: bold;">ADD
						PRODUCT</a><br> <br> <a href="product-report1.html">PRODUCT
						REPORT</a>
				</div>
			</div>
		</div>
		<h4 style="text-align: right;">Welcome Admin</h4>
		<div class="col-md-4 col-md-offset-2" style="padding: 0px; padding-right: 1%; border: 1px solid; border-radius: 4px; border-color:#dddddd">
	
			<h4 class="center">PRODUCT DETAILS</h4>
			<br>
	
			<form name="productform" class="form-horizontal" action="success.html"	onSubmit="return validateProductForm()" method="post">
				<div class="form-group">
					<label for="pname" class="col-sm-4 control-label">Product
						Name: </label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="pname" name="pname" placeholder="Enter product name">
					</div>
				</div>
				<div class="form-group">
					<label for="pdesc" class="col-sm-4 control-label">Description:
					</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="3" id="pdesc" name="pdesc"	placeholder="Enter product description"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="pcat" class="col-sm-4 control-label">Category:
					</label>
					<div class="col-sm-8">
						<select class="form-control" id="pcat" name="pcat" style="cursor: pointer">
							<option>Select Category</option>
							<option>Kids Apparel</option>
							<option>Men's Apparel</option>
							<option>Women's Apparel</option>
							<option>Home Appliances</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="pprice" class="col-sm-4 control-label">Price/Quantity: </label>
					<div class="col-sm-8">
						<input type="text" step="0.01" class="form-control" id="pprice" name="pprice" placeholder="Enter price">
					</div>
				</div>
				<div class="form-group">
					<label for="ptot" class="col-sm-4 control-label">Total Quantity: </label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="ptot" name="ptot" placeholder="Enter total quantity">
					</div>
				</div>
				<div class="form-group">
					<label for="pradio" class="col-sm-4 control-label">Status</label>
					<div class="col-sm-8">
						<label class="radio-inline"><input type="radio" name="pradio" id="pradio1" value="option1">Open</label>
						<label class="radio-inline"><input type="radio"	name="pradio" id="pradio2" value="option2">Close</label>
					</div><br><br>
					<div id="errorprod"></div>
				</div>
	
				<div class="form-group" style="margin-left: 40%;">
					<button type="submit" class="btn btn-success">ADD</button>
					<button type="reset" id="reset" onClick="resetb()"  class="btn btn-danger">RESET</button>
				</div>
			</form>
		</div>
	</div>
<jsp:include page="<%= request.getContextPath() %>/jsp/includes/footer.jsp" />
</body>
</html>