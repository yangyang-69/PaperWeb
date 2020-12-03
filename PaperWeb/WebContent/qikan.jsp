<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Sources" %>
<%@ page import="daos.SourceDao" %>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-期刊信息</title>
		<meta name="keywords" content="论文网-期刊信息">
		<meta name="description" content="论文网-期刊信息">
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
					<li class="on">
						<a href="">期刊信息</a>
					</li>
					<li>
						<a href="author.jsp">作者简介</a>
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
		<div class="w-all bannertu" style="background: url(img/bg05.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfl fr">
					<div class="nagelj">
						当前位置：<a href="">首页></a>
						<a href="">期刊信息></a>
					</div>
				</div>
				<%
					//以下为期刊信息获取代码
					request.setCharacterEncoding("UTF-8");//保证中文编码
					SourceDao sourcedao = new SourceDao();
					ArrayList<Sources> sourceList = sourcedao.getSources();
					request.setAttribute("sourceList",sourceList);
				%>
				<table class="bordered">
								 <caption>
								 	<h2>期刊信息</h2>
								 </caption>
								 <thead>
									 <tr bgcolor="#C4E1FF">
									 	<th>期刊名</th>
									 	<th>地址</th>
									 	<th>网址</th>
									 	<th>电话</th>
									 </tr>
								  </thead>
								 <c:forEach items="${sourceList}" var="S">
								 <tbody>
								 	<tr>
								 		<td>
								 			${S.getSourceName()}	
								 		</td>
								 		<td>
								 			${S.getSourcePlace()}	
								 		</td>
								 		<td>
								 			${S.getSourceURL()}
								 		</td>
								 		<td>
								 			${S.getSourceTel()}	
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