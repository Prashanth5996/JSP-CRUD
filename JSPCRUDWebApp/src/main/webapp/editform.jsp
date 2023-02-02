<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 50px;
	font-weight: bold;
	background-color:BurlyWood;
}
td{
	color:black; 
}
#my1{
	color:Crimson;
}
#my2{
	color:Purple;
}
</style>
</head>
<body>
<center>
<h1 id="my1"><u>JSP CRUD APPLICATION FOR USER</u></h1>
<%@ page import="com.ksv.dao.UserDao,com.ksv.bean.User" %>
<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<u><h1 id="my2">Edit Form</h1></u>
<form action="edituser.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId()%>">
<table>
<tr><td>Name:</td>
<td><input type="text" name="name" value="<%=u.getName()%>" placeholder="Enter Name"></td></tr>
<tr><td>Password:</td>
<td><input type="password" name="password" value="<%=u.getPassword()%>" placeholder="Enter Password"></td></tr>
<tr><td>Email:</td>
<td><input type="email" name="email" value="<%=u.getEmail()%>" placeholder="Enter Email"></td></tr>
<tr><td>Sex:</td>
<td><input type="radio" name="sex" value="male">Male
	<input type="radio" name="sex" value="female">Female</td></tr>
<tr><td>Country:</td>
<td>
<select name="country" style="width: 155px">
<option value="">----Select Country----</option>
<option >India</option>
<option >America</option>
<option >Londan</option>
<option >Pakistan</option>
<option >Afghanistan</option>
<option >Berma</option>
<option >Other</option>
</select>
</td>
</tr>
<tr></tr><tr></tr>
<tr>
<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" Value="Edit User"></td>
</tr>
</table>
</form>
</center>
</body>
</html>