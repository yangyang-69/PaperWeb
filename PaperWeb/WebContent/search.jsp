<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="daos.*" %>
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-搜索</title>
		<meta name="keywords" content="论文网-搜索">
		<meta name="description" content="论文网-搜索">
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/pgzg.css">
</head>
<body>
	<div class="w-all top">
			<div class="w-main">
					<a href="" class="toplogoa fl">
						<img src="img/toplogo.png" alt="" />
					</a>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all navig">
			<div class="w-main">
				<ul>
					<li>
						<a href="">首页</a>
					</li>
					<li>
						<a href="">民族知识投递</a>
					</li>
					<li>
						<a href="">期刊信息</a>
					</li>
					<li>
						<a href="">作者简介</a>
					</li>
					<li>
						<a href="">论文发表</a>
					</li>
					<li class="on">
						<a href="">搜索</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all bannertu" style="background: url(img/bg06.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfl fl">
					<div class="nagelj">
						当前位置：<a href="">首页></a>
						<a href="">搜索></a>
					</div>
				</div>
				这里是论文搜索页面。请选择你要搜索的类型。<br>
				<form name="Searchform1" action="search.jsp" method="post">
					请选择类型：<select name="SearchSelect1">
				        <option value="1">论文信息</option>
				        <option value="2">民族</option>
				        <option value="3">作者</option>
				        <option value="4">期刊</option>
				    </select><br>
				    请输入关键词：<input type="text" name="search"/><br>
				    <input type="submit" value="搜索"/><br>
				</form>
				以下为搜索结果：
				<%
					request.setCharacterEncoding("UTF-8");//保证中文编码
					String searchchoose = request.getParameter("SearchSelect1");
					int choose= Integer.parseInt(searchchoose);
				%>
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