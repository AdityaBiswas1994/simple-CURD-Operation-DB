<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Music store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="Music/style.css" type="text/css" charset="utf-8" />
</head>
<body>
<div id="outer">
  <div id="wrapper">
    <div id="header">
      <h1>Musicmania</h1>
      <p>Online Music Store</p>
    </div>
      <ul>
      <div id="nav1">
        <form action="AdminController" method="post">
        <table align="center" style="margin-top=50%">
        <tr>
        <td>
		Music Title :</td><td><input type="text" name="txttitle" required></input></td></tr>
		<tr>
        <td>
		Artist Name :</td><td><input type="text" name="txtartist" required></input></td></tr>
		<tr>
        <td>
		Music Director :</td><td><input type="text" name="txtdirector" required></input></td></tr>
		<tr>
        <td>
		Language :</td><td><select name="txtlanguage" required>
							<option>Choose</option> 
							<option>Hindi</option>
							<option>English</option>
							</select></td></tr>
		<tr>
        <td>
		Type :</td><td><select name="txttype" required> 
							<option>Choose</option> 
							<option>Audio</option>
							<option>Video</option>
							</select></td></tr>
		<tr>
        <td>
		Genre :</td><td><input type="text" name="txtgenre" required></input></td></tr>
		<tr>
        <td>
		Availability :</td><td>Online<input type="checkbox" name="txtavl1" value="Online"></input>Offline<input type="checkbox" name="txtavl2" value="Offline"></input></td></tr>
		<tr>
        <td>
		Format :</td><td><select name="txtformat" required> 
							<option>Choose</option> 
							<option>TAPE</option>
							<option>CD</option>
							<option>DVD</option>
							</select></td></tr>
		<tr>
        <td>
		Online Price :</td><td><input type="text" name="txtop" required></input></td></tr>
		<tr>
        <td style="color:black">
		Discount :</td><td><input type="text" name="txtdiscount" required></input></td></tr>
		<tr>
		<br>
		<br>
        <td style="color:black">
		Cover Image :</td><td ><input type="file"  name="txtcover"></input></td></tr>
		<tr>
        <td style="color:black">
		Track listen :</td><td ><input type="file"  name="txttrack"></input></td></tr>
		<tr>
        <td style="color:black" >
		Specifications :</td><td ><input type="text" name="txtspec" required></input></td></tr>
		<td style="color:black" >
		Awards :</td><td style="color:black">Yes<input type="checkbox" name="txtawr" value="Yes"></input>No<input type="checkbox" name="txtawr" value="No"></input></td></tr>
		<input type="hidden" name="action" value="add"></input>
		<input type="submit" value="ADD"></input>
		<input type="reset" value="Reset"></input>
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
