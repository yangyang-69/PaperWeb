<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="daos.*" %>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-搜索</title>
		<meta name="keywords" content="论文网-搜索">
		<meta name="description" content="论文网-搜索">
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/pgzg.css">
		<!-- Meta tags -->
		<!-- Calendar -->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<!-- //Calendar -->
		<!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
		<!--//style sheet end here-->
		<link href="//fonts.googleapis.com/css?family=Cuprum:400,700" rel="stylesheet"/>
		<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>	
		<script type="text/javascript">
		function yanzheng4(){
			if(Searchform1.search.value == ""){
				alert("关键字不能为空");
				return false;
			}
			else{
				subpaper_form1.submit();
				return true;
			}
		}
</script>
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
					<li>
						<a href="author.jsp">作者简介</a>
					</li>
					<li>
						<a href="paper.jsp">论文发表</a>
					</li>
					<li class="on">
						<a href="">搜索</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all bannertu" style="background: url(img/bg06.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="fb">
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfl fr">
					<div class="nagelj">
						当前位置：<a href="">首页></a>
						<a href="">搜索></a>
					</div>
				</div>
			</div>			
		</div>
		
			<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
		<div class="appointment-w3">
			<h1 class="header-w3ls ">论文搜索</h1>
				<form name="Searchform1" action="search.jsp" method="post">
					<div class="main">
						<div class="form-add-w3ls">
							<select class="form-control buttom" name="SearchSelect1">
										<option value="">选择搜索类型</option>
								        <option value="1">论文信息</option>
								        <option value="2">作者</option>
								        <option value="3">民族</option>
								        <option value="4">期刊</option>
						    </select>
						 </div>
					</div>
					<div class="main">
						<div class="form-add-w3ls">
				    		<input type="text" name="search" placeholder="请输入关键词" required=""/>
				    	 </div>
					</div>	
					<div class="btnn">
				    		<input type="submit" value="搜索" onClick="yanzheng4()"/>
				    </div>
				</form>
				</div>
				<div class="copy">
			<p></p>
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
				
				<%
					//以下为搜索结果
					request.setCharacterEncoding("UTF-8");//保证中文编码
					String searchchoose = request.getParameter("SearchSelect1");
					//int choose= Integer.parseInt(searchchoose);
					String keyword = request.getParameter("search");
					System.out.println("当前查询种类和关键字为："+searchchoose+","+keyword);
					if(!(searchchoose == null || keyword == null || keyword =="") ){
						//System.out.println("当前查询种类和关键字为："+searchchoose+","+keyword);
						int choose= Integer.parseInt(searchchoose);
						//当选择的类型为1：论文信息
						if(choose==1){
							System.out.println("当前查询为："+choose);
							PaperDao paperdao = new PaperDao();
							ArrayList<Papers> paperList = paperdao.getPaper(keyword);
							request.setAttribute("paperList",paperList);
				%>
								<table class="bordered">
								 <caption>
								 	<h2>论文查找结果</h2>
								 </caption>
								 <thead>
									 <tr bgcolor="#C4E1FF">
									 	<th>论文标题</th>
									 	<th>作者</th>
									 	<th>论文摘要</th>
									 	<th>民族</th>
									 	<th>期刊</th>
									 	<th>发表时间</th>
									 	<th>卷</th>
									 	<th>期</th>
									 	<th>页码</th>
									 	<th>被引</th>
									 	<th>下载</th>
									 </tr>
								  </thead>
								 <c:forEach items="${paperList}" var="P">
								 <tbody>
								 	<tr>
								 		<td>
								 			${P.getTitle()}	
								 		</td>
								 		<td>
								 			${P.getAuthorName()}	
								 		</td>
								 		<td>
								 			${P.getSummary()}
								 		</td>
								 		<td>
								 			${P.getMinorityName()}	
								 		</td>
								 		<td>
								 			${P.getSourceName()}	
								 		</td>
								 		<td>
								 			${P.getPubTime()}	
								 		</td>
								 		<td>
								 			${P.getVolume()}	
								 		</td>
								 		<td>
								 			${P.getPeriod()}	
								 		</td>
								 		<td>
								 			${P.getPageCount()}	
								 		</td>
								 		<td>
								 			${P.getCited()}	
								 		</td>
								 		<td>
								 			${P.getDownloaded()}	
								 		</td>
								 	</tr>
								 </tbody>
								</c:forEach>
							</table>
				<%
						}
						
						//当选择的类型为2：作者
						else if(choose==2){
							System.out.println("当前查询为："+choose);
							PaperDao paperdao1 = new PaperDao();
							ArrayList<Papers> paperList = paperdao1.getPaperAuthor(keyword);
							request.setAttribute("paperList",paperList);
							%>
							<table class="bordered">
							 <caption>
							 	<h2>论文查找结果</h2>
							 </caption>
							 <thead>
								 <tr bgcolor="#C4E1FF">
								 	<th>论文标题</th>
								 	<th>作者</th>
								 	<th>论文摘要</th>
								 	<th>民族</th>
								 	<th>期刊</th>
								 	<th>发表时间</th>
								 	<th>卷</th>
								 	<th>期</th>
								 	<th>页码</th>
								 	<th>被引</th>
								 	<th>下载</th>
								 </tr>
							  </thead>
							 <c:forEach items="${paperList}" var="P">
							 <tbody>
							 	<tr>
							 		<td>
							 			${P.getTitle()}	
							 		</td>
							 		<td>
							 			${P.getAuthorName()}	
							 		</td>
							 		<td>
							 			${P.getSummary()}
							 		</td>
							 		<td>
							 			${P.getMinorityName()}	
							 		</td>
							 		<td>
							 			${P.getSourceName()}	
							 		</td>
							 		<td>
							 			${P.getPubTime()}	
							 		</td>
							 		<td>
							 			${P.getVolume()}	
							 		</td>
							 		<td>
							 			${P.getPeriod()}	
							 		</td>
							 		<td>
							 			${P.getPageCount()}	
							 		</td>
							 		<td>
							 			${P.getCited()}	
							 		</td>
							 		<td>
							 			${P.getDownloaded()}	
							 		</td>
							 	</tr>
							 </tbody>
							</c:forEach>
						</table>
			<%
						}
						
						//当选择的类型为3：民族
						else if(choose==3){
							System.out.println("当前查询为："+choose);
							PaperDao paperdao2 = new PaperDao();
							ArrayList<Papers> paperList = paperdao2.getPaperMinority(keyword);
							request.setAttribute("paperList",paperList);
							%>
							<table class="bordered">
							 <caption>
							 	<h2>论文查找结果</h2>
							 </caption>
							 <thead>
								 <tr bgcolor="#C4E1FF">
								 	<th>论文标题</th>
								 	<th>作者</th>
								 	<th>论文摘要</th>
								 	<th>民族</th>
								 	<th>期刊</th>
								 	<th>发表时间</th>
								 	<th>卷</th>
								 	<th>期</th>
								 	<th>页码</th>
								 	<th>被引</th>
								 	<th>下载</th>
								 </tr>
							  </thead>
							 <c:forEach items="${paperList}" var="P">
							 <tbody>
							 	<tr>
							 		<td>
							 			${P.getTitle()}	
							 		</td>
							 		<td>
							 			${P.getAuthorName()}	
							 		</td>
							 		<td>
							 			${P.getSummary()}
							 		</td>
							 		<td>
							 			${P.getMinorityName()}	
							 		</td>
							 		<td>
							 			${P.getSourceName()}	
							 		</td>
							 		<td>
							 			${P.getPubTime()}	
							 		</td>
							 		<td>
							 			${P.getVolume()}	
							 		</td>
							 		<td>
							 			${P.getPeriod()}	
							 		</td>
							 		<td>
							 			${P.getPageCount()}	
							 		</td>
							 		<td>
							 			${P.getCited()}	
							 		</td>
							 		<td>
							 			${P.getDownloaded()}	
							 		</td>
							 	</tr>
							 </tbody>
							</c:forEach>
						</table>
			<%
						}
						
						//当选择的类型为4：期刊
						else if(choose==4){
							System.out.println("当前查询为："+choose);
							PaperDao paperdao3 = new PaperDao();
							ArrayList<Papers> paperList = paperdao3.getPaperSource(keyword);
							request.setAttribute("paperList",paperList);
							%>
							<table class="bordered">
							 <caption>
							 	<h2>论文查找结果</h2>
							 </caption>
							 <thead>
								 <tr bgcolor="#C4E1FF">
								 	<th>论文标题</th>
								 	<th>作者</th>
								 	<th>论文摘要</th>
								 	<th>民族</th>
								 	<th>期刊</th>
								 	<th>发表时间</th>
								 	<th>卷</th>
								 	<th>期</th>
								 	<th>页码</th>
								 	<th>被引</th>
								 	<th>下载</th>
								 </tr>
							  </thead>
							 <c:forEach items="${paperList}" var="P">
							 <tbody>
							 	<tr>
							 		<td>
							 			${P.getTitle()}	
							 		</td>
							 		<td>
							 			${P.getAuthorName()}	
							 		</td>
							 		<td>
							 			${P.getSummary()}
							 		</td>
							 		<td>
							 			${P.getMinorityName()}	
							 		</td>
							 		<td>
							 			${P.getSourceName()}	
							 		</td>
							 		<td>
							 			${P.getPubTime()}	
							 		</td>
							 		<td>
							 			${P.getVolume()}	
							 		</td>
							 		<td>
							 			${P.getPeriod()}	
							 		</td>
							 		<td>
							 			${P.getPageCount()}	
							 		</td>
							 		<td>
							 			${P.getCited()}	
							 		</td>
							 		<td>
							 			${P.getDownloaded()}	
							 		</td>
							 	</tr>
							 </tbody>
							</c:forEach>
						</table>
			<%
						}
						
					}
				%>
			
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