<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Music store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="Music/style.css" type="text/css" charset="utf-8" />
</head>
<script>
function validat()
{
	var email = document.logpage.email.value;
	var pwd = document.logpage.pwd.value;
	
	var emailregex = /^(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@{[a-zA-Z0-9_\-\.]+0\.([a-zA-Z]{2,5}){1,25})+)*$/;
	
	if(emailregex.test(document.logpage.email.value) == false)
	{
		alert("Please enter a valid e-mail address");  
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
        <form name="logpage" action="AdminController" method="post" onsubmit="return validate()">
        <table align="center" style="margin-top=50%">
        <tr><td>&nbsp</td></tr>
		<tr><td>&nbsp</td></tr>
		<tr><td>&nbsp</td></tr>
		<tr>
        <td>
		E-mail :</td><td><input type="text" name="email"></input></td></tr>
		<tr>
        <td>
		Password :</td><td><input type="password" name="pwd"></input></td></tr>
		<tr><td>&nbsp</td></tr>
		<tr><td>&nbsp</td></tr>
		<input type="hidden" name="action" value="login"></input>
		<tr><td><input type="submit" value="Login"></input>&nbsp;&nbsp;&nbsp;
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