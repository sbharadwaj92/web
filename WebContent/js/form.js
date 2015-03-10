function validateLoginForm()
{
	if(document.loginform.username.value=="" || document.loginform.password.value=="")
	{
		document.getElementById('errorlogin').innerHTML = "";
		if(document.loginform.username.value=="" && document.loginform.password.value!="")
		{
			document.getElementById('errorpassword').innerHTML = "";
			document.getElementById('errorusername').innerHTML = "Enter Username";
		}
		if(document.loginform.password.value=="" && document.loginform.username.value!="")
		{
			document.getElementById('errorusername').innerHTML = "";
			document.getElementById('errorpassword').innerHTML = "Enter Password";
		}
		if(document.loginform.password.value=="" && document.loginform.username.value=="")
		{
			document.getElementById('errorusername').innerHTML = "Enter Username";
			document.getElementById('errorpassword').innerHTML = "Enter Password";
		}
		return false;
	}
	if((document.loginform.username.value.toUpperCase()=="TEST" && document.loginform.password.value=="TEST"))
	{
		return true;
	}
	else
	{
		document.getElementById('errorlogin').innerHTML = "Invalid Username/Password";
		document.getElementById('errorusername').innerHTML = "";
		document.getElementById('errorpassword').innerHTML = "";
		loginform.username.focus();
		return false;
	}
}

function validateProductForm()
{
	var name=/^[a-zA-Z ]+$/;
	if(name.test(document.productform.pname.value)==false || document.productform.pname.value.length<5 || document.productform.pname.value.length>15)
	{
		document.getElementById('errorprod').innerHTML = "Please enter valid product name(5-15 characters)";
		return false;
	}
	if(document.productform.pdesc.value.length<10 || document.productform.pdesc.value.length>50)
	{
		document.getElementById('errorprod').innerHTML = "Please enter valid product description(10-50 characters)";
		return false;
	}
	if(document.productform.pcat.value=="Select Category")
	{
		document.getElementById('errorprod').innerHTML = "Please select a category";
		return false;
	}
	if(isNaN(document.productform.pprice.value) || document.productform.pprice.value<=0.0)
	{
		document.getElementById('errorprod').innerHTML = "Please enter valid price";
		return false;
	}
	if(isNaN(document.productform.ptot.value) || document.productform.ptot.value<=0)
	{
		document.getElementById('errorprod').innerHTML = "Please enter valid quantity";
		return false;
	}
	if(document.getElementById('pradio1').checked ==false && document.getElementById('pradio2').checked==false)
	{
		document.getElementById('errorprod').innerHTML = "Please select a status";
		return false;
	}
	return true;
}

function validateQueryForm()
{
	var em = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mob= /^[789]\d{9}$/;
	var name = /^[a-zA-Z ]+$/;

	if(name.test(queryform.qquery.value)==false || queryform.qquery.value.length<10 || queryform.qquery.value.length>50)
	{
		document.getElementById('errorquery').innerHTML = "Please enter valid query/problem(10-50 characters)<br><br>";
		return false;
	}
	if(em.test(document.queryform.qemail.value)==false)
	{
		document.getElementById('errorquery').innerHTML = "Please enter valid email<br><br>";
		return false;
	}
	if(mob.test(document.queryform.qmob.value)==false)
	{
		document.getElementById('errorquery').innerHTML = "Please enter valid Mobile Number<br><br>";
		return false;
	}
	return true;
}

function resetb()
{
	   document.getElementById("errorprod").innerHTML = "";
}