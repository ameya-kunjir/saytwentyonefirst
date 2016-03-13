<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Winner Page</title>
<style type="text/css">
.container
{
    background-color:white;
    width: 860px;
    height: 560px;
    margin-left: 200px;
    border: 2px solid black;
    border-bottom: none;
}

.images
{
  background-color: white;
}

.parent
{
  background-color: #0ca3d2;;
  
}

.footer
{

   width :860px;
   margin-left:200px;
    line-height: 30px;
    font-size: 15px;
    font-weight: bold;
    color: #555;
    text-align: center;
    text-shadow: 0 1px white;
    background: white;
    border: 2px solid black;
    border-top: none;
}

h2
{
   margin: -1px -1px 3px;
    line-height: 30px;
    font-size: 25px;
    font-weight: bold;
    color: #555;
    text-align: center;
    text-shadow: 0 1px white;
    
}
</style>
</head>
<body>

<div class="parent">
<div class = "container">
<div class="images"><img alt="Logo" src="/resources/logo.jpg" height="100"  width="720"  >
<img alt="mascot" src="/resources/mascot.jpg" style="float:right" height="100"></div>
<div align="right"><a href="/startgamedirect">Play Again</a> <a href="/logout"><img alt="log out" src="/resources/logout.jpg" height="40"></a></div>
<div class = "content">
<center><h2>${winner}<b> is a winner</b></h2></center><br>
<center><img alt="winner image" src="/resources/winner.jpg"  width="600" height="300" ></center>
</div>
</div>
<div class="footer">Developed by Ameya Shankar Kunjir</div>
</div>
</body>
</html>