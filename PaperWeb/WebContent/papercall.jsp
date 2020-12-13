<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="daos.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>论文提交成功页面</title>
	<link rel="stylesheet" type="text/css" href="css/TransparentLoginBoxDemo.css">
	<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/pgzg.css">
		<!-- Meta tags -->
		<!-- Calendar -->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<!-- //Calendar -->
		<!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
		<!--//style sheet end here-->
		<link href="//fonts.googleapis.com/css?family=Cuprum:400,700" rel="stylesheet">
		<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		</script>
</head>
<body>
<div class="fb">
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
<div class="appointment-w3">
		<h1 class="header-w3ls">1.请等待...</h1>
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
	%>
	
		    <h1 class="header-w3ls">2.论文发表成功</h1>
			<h1 class="header-w3ls"><a href="index.jsp" >返回主页</a></h1>
	</div>
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
	</div>
	
		
	<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
	</div>
	<script src="<!-- js -->
		<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
		<!-- //js -->
		<!-- Calendajs/jquery-ui.js"></script>
		<script>
			$(function () {
				$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
			});
		</script>
</body>
</html>