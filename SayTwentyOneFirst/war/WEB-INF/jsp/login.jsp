<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Twenty One Game</title>
<style type="text/css">


.login
{
    background-color:#0ca3d2;
    width: 850px;
    height: 570px;
    margin-left:250px;
}

h1{

    margin: -20px -20px 21px;
    line-height: 30px;
    font-size: 15px;
    font-weight: bold;
    color: #555;
    text-align: center;
    text-shadow: 0 1px white;
    background: #f3f3f3;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 3px 3px 0 0;

}

.loginbox h1
{
    margin: -20px -20px 21px;
    line-height: 40px;
    font-size: 15px;
    font-weight: bold;
    color: #555;
    text-align: center;
    text-shadow: 0 1px white;
    background: #f3f3f3;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 3px 3px 0 0;

}



.loginbox
{
position: absolute;
  margin-top: 120px;
  margin-left: 250px;
  padding: 20px 20px 20px;
  width: 310px;
  background: #f3f3f3;
  border-radius: 3px;
  
}
h3
{
   margin: -20px -20px 21px;
    line-height: 40px;
    font-size: 15px;
    font-weight: bold;
    color: #555;
    text-align: left;
    text-shadow: 0 1px white;
    background: #f3f3f3;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 3px 3px 0 0;
   
}

.images
{
  background-color: white;
}

.footer
{
   width: 810px;
   margin-left:270px;
}

.header
{
  width : 850px;
}

.error {
	color: #ff0000;
}


</style>
</head>
<body>

<div class="login" >
<div class="images"><img alt="Logo" src="/resources/logo.jpg" height="100"  width="720"  >
<img alt="mascot" src="/resources/mascot.jpg" style="float:right" height="100"></div>
<div class= "loginbox">
<h1>Login to Say Twenty One First</h1>
<form:form action="/startgame" modelAttribute="login">
 <h3>Enter User Name :</h3>
 <p><form:input path= "userName" /></p>
 <p class="submit"><input type= "submit" value= "Login">
 <input type="button" value="Exit" onclick="window.close()"></p>
 <form:errors path="userName" cssClass="error" ></form:errors>
 </form:form>
</div>

</div>
<div class="footer"><h1>Developed by Ameya Shankar Kunjir</h1></div>


</body>
</html>