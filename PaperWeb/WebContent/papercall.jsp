<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="daos.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>论文提交成功页面</title>
</head>
<body>
	请等待提<br>
	<%
		//从paper.jsp获取必要的值
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = (String)session.getAttribute("USERNAME");
		String Title = request.getParameter("Title"); 
		String Summary = request.getParameter("Summary"); 
		String SourceSelect1 = request.getParameter("SourceSelect1"); 
		String MinoritySelect1 = request.getParameter("MinoritySelect1"); 
		int SourceID= Integer.parseInt(SourceSelect1);
		int MinorityID = Integer.parseInt(MinoritySelect1);
		System.out.println
		("papercall.jsp中，用户名："+UserName+",期刊："+SourceID+"，民族："+MinorityID+"，标题："+Title+"，概要："+Summary);
		
		//先检查当前作者表里是否有这个人的信息
		AuthorDao authordao = new AuthorDao();//创建对象
		boolean authorcheck = authordao.AuthorCheck(UserName);
		System.out.println("当前作者是否在表中"+authorcheck);
		//若不在表中，将该用户名、单位插入到作者表中
		if(authorcheck == false){
			//先取出用户的单位
			UserDao userdao = new UserDao();//创建对象
			Users user = userdao.UserCheckbygetpass(UserName);
			String UserOrganization = user.getUserOrganization();
			String password = user.getPassword();
			System.out.println("当前用户的单位是："+UserOrganization);
			//再将它插入到作者表中
			//AuthorDao authordao1 = new AuthorDao();
			Authors author = authordao.InsertDB(UserName, UserOrganization);
			System.out.println("插入作者表成功");
		}
		
		//获取当前的作者ID
		Authors author1 = authordao.getAuthors(UserName);
		int AuthorID = author1.getAuthorID();
		System.out.println("当前作者的ID为："+AuthorID);
		
		//插入记录行到paper表，包括，标题，摘要，期刊ID，民族ID，作者ID
		PaperDao paperdao = new PaperDao();
		Papers paper = paperdao.InsertPaper(Title, Summary, SourceID, MinorityID, AuthorID);
		System.out.println("插入论文成功");
		out.println("论文发表成功");
	%>
</body>
</html>