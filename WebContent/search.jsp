<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Music store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Music/style.css" type="text/css"
	charset="utf-8" />
</head>
<body>
	<div id="outer">
		<div id="wrapper">
			<div id="header">
				<h1>Musicmania</h1>
				<p>Online Music Store</p>
			</div>				
				<ul>
					<div id="nav1" style="margin-top=50%">
						<form action="AdminController" method="post">
							<table align="center" style="margin-top=50%">
								<tr >
									<td>Enter Music Title :</td>
									<td ><input type="text"></input></td>
								</tr>
								
								<tr>
								<td><input type="submit" value="Search"></input></td>
								<td><input type="reset" value="Reset"></input></td>
								</tr>
								
								<input type="hidden" name="action" value="search"></input>
								
								
							</table>
						</form>
					</div>
				</ul>
				<br></br> <br></br> <br></br>
			</div>
		</div>
		<div id="body-right">
          <h2>Music Catagories</h2>
          <div class="box"> <img src="Music/images/pic_2.jpg" width="130" height="86" alt="Pic 1" class="left" />
            <p>To listen to OLD Classical Music go to this link <a href="">OLDTIMES</a>.</p>
            <div class="clear"></div>
          </div>
          <div class="box"> <img src="Music/images/pic_3.jpg" width="130" height="86" alt="Pic 2" class="left" />
            <p>To listen to NEW WORLD Music go to this place <a href="">NEWAGE</a>.</p>
            <div class="clear"></div>
          </div>
          <div class="box"> <img src="Music/images/pic_4.jpg" width="130" height="86" alt="Pic 3" class="left" />
            <p>You can listen to all time favourite Music go to this link <a href="">ALLTIMEFAVOURITE</a></p>
            <div class="clear"></div>
          </div>
        </div>
        <div class="clear"></div>
      </div>
      <div id="copyright">
        <div id="copyright-left"> Copyright &copy; all right reserved | designed by <a href="https://www.google.com">free website templates</a></div>
      </div>
      <div class="clear">&nbsp;</div>
    </div>
  </div>
</div>
</body>
</html>
