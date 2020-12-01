<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="daos.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索结果</title>
</head>
<body>
	以下为搜索结果：
	<%
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String searchchoose = request.getParameter("SearchSelect1");
		int choose= Integer.parseInt(searchchoose);
	%>
</body>
</html>