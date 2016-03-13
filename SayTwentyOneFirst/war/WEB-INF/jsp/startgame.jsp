<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Start Playing</title>
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


.content
{
    margin: -10px -10px 11px;
    line-height: 40px;
    font-size: 15px;
    font-weight: bold;
    color: #555;
    text-align: center;
    text-shadow: 0 1px white;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 1px 1px 0 0;
    margin-left: 50px;
    margin-right:50px;
    
}
.images
{
  background-color: white;
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

h1{

    margin: -3px -3px 5px;
    line-height: 30px;
    font-size: 15px;
    font-weight: bold;
    color: #555;
    text-align: left;
    text-shadow: 0 1px white;
    background: white;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 1px 1px 0 0;

}

.parent
{
  background-color: #0ca3d2;;
  
}

</style>
</head>
<body>
<div class="parent">
<div class = "container">
<div class="images"><img alt="Logo" src="/resources/logo.jpg" height="100"  width="720"  >
<img alt="mascot" src="/resources/mascot.jpg" style="float:right" height="100"></div>

<div align="right">Welcome ${username}<a href="/logout"><img alt="log out" src="/resources/logout.jpg" height="40"></a></div>
<div class = "content">
<ul style="list-style-type:circle">
<h1>Here are the rules for playing Twenty One Game.</h1>
 <h1><li>The object of the game is to be the first one to reach "21".</li>
  <li>The player 1 must start at "1"</li>
  <li>Each player may increment by one, two, or three per turn, and the numbers must be in counting order. Each person must start with the number after the last one that the player 2 selected.</li>
  <li>For example If player 1 select "1", then the player 2 chose to increment by 2 then count becomes 3. Now player 1 can choose next to increment by 1 or 2 or 3 and so on. </li>
  <li>Whoever reach "21" wins the game.</li></h1>
</ul>  


<center><a href="/counter"><img alt="Start Button" src="/resources/start.jpg" width="150" height="60"></a></center>

</div><br><br>

</div>
<div class="footer">Developed by Ameya Shankar Kunjir</div>
</div>
</body>
</html>