<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
body {
	font-weight: bold;
	background-color: DarkGrey;
}
table{
    width: 100%;
    text-align: center;
}
table,th,td{
    border: 1px solid gray;
    border-collapse: collapse;
}
th{
    height: 35px;
    background-color: yellow;
    color: red;
}
td{
    height: 25px;
}
tr:nth-child(even){
    background-color:aqua;
    color: blue;
}
tr:nth-child(odd){
    background-color: brown;
    color: white;
}
tr:hover{
    background-color: orange;
}
td:hover{
    background-color: pink;
}
h1{
	color: Indigo;
}
#my1{
	background-color:green; 
	color: white;
}
#my2{
	background-color:red;
	color: white;
}
#my3{
	background-color:orange;
	font-weight: bold;
 }
</style>
</head>
<body>
<center>
<%@ page import="com.ksv.dao.UserDao,com.ksv.bean.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1><u>User List</u></h1>
<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>
<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
<th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>
<td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
<td><a href="editform.jsp?id=${u.getId()}"><button id="my1" ><i class="fa fa-edit"></i> Edit</button></a></td>
<td><a href="deleteuser.jsp?id=${u.getId()}"><button id="my2" ><i class="fa fa-trash-o"></i> Delete</button></a></td></tr>
</c:forEach>
<br/>
</table>
<p></p>
<button id="my3"><a href="adduser.jsp">Add New User</a></button>
</center>
</body>
</html>