<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Users" %>
<%@ page import="daos.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>论文提交成功页面</title>
</head>
<body>
	请等待提交
	<%
		//从paper.jsp获取必要的值
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = (String)session.getAttribute("USERNAME");
		String Title = request.getParameter("Title"); 
		String Summary = request.getParameter("Summary"); 
		String SourceSelect1 = request.getParameter("SourceSelect1"); 
		String MinoritySelect1 = request.getParameter("MinoritySelect1"); 
		int SourceSelect = Integer.parseInt(SourceSelect1);
		int MinoritySelect = Integer.parseInt(MinoritySelect1);
		System.out.println
		("papercall.jsp中，用户名："+UserName+",期刊："+SourceSelect+"，民族："+MinoritySelect+"，标题："+Title+"，概要："+Summary);
		
		//先取出用户的单位
		UserDao userdao = new UserDao();//创建对象
		Users user = userdao.UserCheckbygetpass(UserName);
		//String a = userdao.getOrganization(UserName);
		System.out.println(user);
		String UserOrganization = user.getUserOrganization();
		String password = user.getPassword();
		System.out.println("当前用户的单位是："+UserOrganization);
		
	%>
</body>
</html>