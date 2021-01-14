<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Music store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="Music/style.css" type="text/css" charset="utf-8" />
</head>
<script>
function validate()
{
	var firstname = document.regpage.fname.value;
	var lastname = document.regpage.lname.value;
	var email = document.regpage.email.value;
	var phoneno =  document.regpage.phno.value;
	var pwd = document.regpage.pwd.value;
	var pwd1 = document.regpage.pwd1.value;
	
	var regex = /^[a-zA-Z]+$/;
	var phnregex = /^([0-9]{1,3}(?:\.[0-9]{3})*(?:\,[0-9]+)?)/;
	var emailregex = /^(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@{[a-zA-Z0-9_\-\.]+0\.([a-zA-Z]{2,5}){1,25})+)*$/;
	
	if(regex.test(document.regpage.fname.value) == false || firstname == null || firstname == "" || firstname.length > 30)
		{
			alert("Please enter firstname with alphabets only and between 2 and 30 characters");
			return false;
		}
	if(regex.test(document.regpage.lname.value) == false || lastname == null || lastname == "" || lastname.length > 30)
		{
			alert("Please enter lastname with alphabets only and between 2 and 30 characters");
			return false;
		}
	if(emailregex.test(document.regpage.email.value) == false)
		{
			alert("Please enter a valid e-mail address");  
		  	return false; 
		}
	if(phnregex.test(document.regpage.phno.value) == false)
		{
			alert("Please enter proper phone number");  
		  	return false;
		}
	if(pwd != pwd1)
		{
			alert("Password must be same!");
			return false;
		}
	if(pwd == null || pwd == "")
		{
			alert("Password must not be blank!");
			return false;
		}
	if(pwd1 == null || pwd1 == "")
	{
		alert("Password must be same!");
		return false;
	}
}
</script>
<body>
<div id="outer">
  <div id="wrapper">
    <div id="header">
      <h1>Musicmania</h1>
      <p>Online Music Store</p>
    </div>
      <ul>
      <div id="nav1">
        <form name="regpage" action="AdminController" method="post" onsubmit="return validate()">
        <table align="center" style="margin-top=50%">
        <tr><td>&nbsp</td></tr>
		<tr><td>&nbsp</td></tr>
		<tr><td>&nbsp</td></tr>
        <tr>
        <td>
		First Name :</td><td><input type="text" name="fname"></input></td></tr>
		<tr>
        <td>
		Last Name :</td><td><input type="text" name="lname"></input></td></tr>
		<tr>
        <td>
		E-mail :</td><td><input type="text" name="email"></input></td></tr>
		<tr>
        <td>
		Phone No :</td><td><input type="text" name="phno"></input></td></tr>
		<tr>
        <td>
		Password :</td><td><input type="password" name="pwd"></input></td></tr>
		<tr>
        <td>
		Retype Password :</td><td><input type="password" name="pwd1"></input></td></tr>
		<tr><td>&nbsp</td></tr>
		<tr><td>&nbsp</td></tr>
		<input type="hidden" name="action" value="signup"></input>
		<tr><td><input type="submit" value="Register"></input>&nbsp;&nbsp;&nbsp;
		<button type="submit" formaction="http://localhost:8081/Project_Group6/index.jsp">Cancel</button></td></tr>
		</table>
		</form>
		</div>
      </ul>
      <br></br>
    <br></br>
    <br></br>
  </div>
</div>
</body>
</html>
