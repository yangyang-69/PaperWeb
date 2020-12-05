<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Authors" %>
<%@ page import="daos.AuthorDao" %>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-作者简介</title>
		<meta name="keywords" content="论文网-作者简介">
		<meta name="description" content="论文网-作者简介">
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/pgzg.css">
</head>
<body>
	<div class="w-all top">
			<div class="w-main">
					<a href="" class="toplogoa fl">
						<img src="img/toplogo1.png" alt="" />
						<img src="img/toplogo.png" alt="" />
					</a>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all navig">
			<div class="w-main">
				<ul>
					<li>
						<a href="index.jsp">首页</a>
					</li>
					<li>
						<a href="Minority.jsp">民族知识投递</a>
					</li>
					<li>
						<a href="qikan.jsp">期刊信息</a>
					</li>
					<li class="on">
						<a href="">作者简介</a>
					</li>
					<li>
						<a href="paper.jsp">论文发表</a>
					</li>
					<li>
						<a href="search.jsp">搜索</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all bannertu" style="background: url(img/bg03.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfl fr">
					<div class="nagelj">
						当前位置：<a href="">首页></a>
						<a href="">作者简介></a>
					</div>
				</div>
				<%
					//以下为作者信息获取代码
					request.setCharacterEncoding("UTF-8");//保证中文编码
					AuthorDao authordao = new AuthorDao();
					ArrayList<Authors> authorList = authordao.getAuthors();
					request.setAttribute("authorList",authorList);
				%>
				<table class="bordered">
								 <caption>
								 	<h2>作者信息</h2>
								 </caption>
								 <thead>
									 <tr bgcolor="#C4E1FF">
									 	<th>作者</th>
									 	<th>单位</th>
									 	<th>发表论文数量</th>
									 </tr>
								  </thead>
								 <c:forEach items="${authorList}" var="A">
								 <tbody>
								 	<tr>
								 		<td>
								 			${A.getAuthorName()}	
								 		</td>
								 		<td>
								 			${A.getOrganization()}	
								 		</td>
								 		<td>
								 			${A.getCountpaper()}	
								 		</td>
								 	</tr>
								 </tbody>
								</c:forEach>
							</table>
			</div>
		</div>
		<div class="clear"></div>
		<div class="h-30"></div>
		<!--footer-->
		<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
		</div>

</body>
</html>