<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.Minorities"%>
<%@page import="java.util.ArrayList"%>
<%@page import="daos.MinorityDao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-民族知识投递</title>
		<meta name="keywords" content="论文网-民族知识投递">
		<meta name="description" content="论文网-民族知识投递">
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/pgzg.css">
</head>
<body>
<%
	MinorityDao minorityDao=new MinorityDao();
	ArrayList<Minorities> minorityList=minorityDao.getMinority();
	request.setAttribute("minorityList",minorityList);
%>

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
						<a href="index.jap">首页</a>
					</li>
					<li class="on">
						<a href="">民族知识投递</a>
					</li>
					<li>
						<a href="qikan.jsp">期刊信息</a>
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
		<div class="w-all bannertu" style="background: url(img/bg02.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfr fr">
					<div class="nagelj">
						当前位置：<a href="">首页></a>
						<a href="">民族知识投递></a>
					</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="biaoge">
			<div id="wrap">
				<table class="bordered">
								 <caption>
								 	<h2>民族知识投递</h2>
								 </caption>
								 <thead>
									 <tr bgcolor="#C4E1FF">
									 	<th>民族名称</th>
									 	<th>民族简介</th>
									 </tr>
								  </thead>
								 <c:forEach items="${minorityList}" var="M">
								 <tbody>
								 	<tr>
								 		<td>
								 			${M.getMinorityName()}	
								 		</td>
								 		<td>
								 			${M.getMinorityInfo()}
								 		</td>
								 	</tr>
								 </tbody>
								</c:forEach>
							</table>
					</div>	
				</div>	
		<!--footer-->
		<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
		</div>

</body>
</html>