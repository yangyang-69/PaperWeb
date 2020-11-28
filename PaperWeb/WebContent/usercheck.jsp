<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="beans.Users" %>>
<%@ page import="daos.UserDao" %>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>验证登录</title>
</head>
<body>
<!-- 实验10 --> 
<%
		UserDao userdao = new UserDao();//创建对象
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = request.getParameter("UserName");
		String password = request.getParameter("password");//获取参数
		System.out.println(UserName);
		System.out.println(password);
		Users user = userdao.UserCheckbygetpass(UserName);
		//调用Dao的方法查询数据库
		if(user.getPassword().equals(password) && user!= null){
			//判断是否满足条件
			out.print("欢迎"+UserName+"登录");
		}
		else{
			%>
				登陆失败，请您<a href="hello.jsp">重新登录</a> 
			<%
		}
%>
</body>
</html>