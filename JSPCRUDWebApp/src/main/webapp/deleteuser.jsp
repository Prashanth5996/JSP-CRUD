<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.ksv.dao.UserDao" %>
<jsp:useBean id="u" class="com.ksv.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>
</body>
</html>