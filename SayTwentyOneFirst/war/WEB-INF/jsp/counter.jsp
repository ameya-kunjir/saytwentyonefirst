<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Twenty One Game</title>
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
    background: #f7f7e9;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 1px 1px 0 0;

}

table, th, td {
    border: 1px solid black;
}

.parent
{
  background-color: #0ca3d2;;
  
}
</style>
</head>
<body>
<div class="parent">
<div class="container">
<div class="images"><img alt="Logo" src="/resources/logo.jpg" height="100"  width="720">
<img alt="mascot" src="/resources/mascot.jpg" style="float:right" height="100"></div>
<div align="right"><a href="/logout"><img alt="log out" src="/resources/logout.jpg" height="40"></a></div>
<form:form method="POST" action="/process" modelAttribute="counter"><br><br><br>
<table border="0" align="center" bgcolor="#f7f7e9">
<tr>
<td><h1>Total Counter Value :</h1></td>
<td><form:input path="sum" value="${sum}" readonly="true" /></td>
</tr>
<tr>
<td><h1>Computer Last Move :</h1></td>
<td><form:input path="cntPlayerOne" value="${cntPlayerOne}" readonly="true" /></td> 
</tr>
<tr>
<td><h1>${sessionScope.username} Last Move :</h1></td>
<td><form:input path="cntPlayerTwo" value="${cntPlayerTwo}" readonly="true"/></td> 
</tr>
<tr>
<td><h1>${sessionScope.username} Current Move :</h1></td>
<td><form:select path="count">
   <form:option value="1" label="One"/>
   <form:option value="2" label="Two"/>
   <form:option value="3" label="Three"/>
</form:select></td>
</tr>
<tr><td></td><td><input type="submit" value="Submit"/></td></tr>
</table>
</form:form>

</div>
<div class="footer">Developed by Ameya Shankar Kunjir</div>
</div>
</body>
</html>