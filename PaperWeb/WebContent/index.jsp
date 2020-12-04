<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="daos.*" %>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-首页</title>
		<meta name="keywords" content="论文网-首页">
		<meta name="description" content="论文网-首页">
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/index.css">
		<link rel="stylesheet" href="css/pgzg.css">
		<script type="text/javascript" src="js/jquery-1.12.1.min.js" ></script>
		<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js" ></script>
		<script type="text/javascript" src="js/tab.js" ></script>
				<script type="text/javascript">
		function setsesion1(){
			response.sendRedirect("paper.jsp"); 
			return true;
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
					
					
					<div class="fr yxnwtop">
						<a href="">
													
							<p class="fs-15 fc-2 fl">
								<nobr>
							
										你好,<%
													request.setCharacterEncoding("UTF-8");//保证中文编码
													String UserName = request.getParameter("UserName");
													System.out.println("index.jsp+"+UserName);
													session.setAttribute("USERNAME",UserName); 
													out.println(UserName); 
												    //response.sendRedirect("paper.jsp"); 
												%>
												!!!								</nobr>

							</p>
						</a>
					</div>
					
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all navig">
			<div class="w-main">
				<ul>
					<li class="on">
						<a href="">首页</a>
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
					<li>
						<a href="search.jsp">搜索</a>
					</li>
					
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all">
			<div id="slideBoxmo" class="slideBoxmo">
				<div class="bd">
					<ul>
						<li><img src="img/banner1.png" alt="" /></li>
						<li><img src="img/banner2.png" alt="" /></li>
						<li><img src="img/banner3.png" alt="" /></li>
						<li><img src="img/banner4.png" alt="" /></li>
					</ul>
				</div>
				<a class="prev" href="javascript:void(0)"><img src="img/prev.png" alt=""/></a>
				<a class="next" href="javascript:void(0)"><img src="img/next.png" alt=""/></a>
			</div>
			<script type="text/javascript">
				jQuery(".slideBoxmo").slide({mainCell:".bd ul",autoPlay:true});
			</script>
		</div>
		<div class="clear"></div>
		<!--公告-->
		<div class="w-all">
			<div class="w-main gonggao">
			<img src="img/gonggao.png" class="fl">
			<div class="txtScroll-top">
				
				<div class="bd fl">
					<ul class="infoList">
						<li class="one_hidden">中国民族论文信息网提供民族论文最新资讯</li>
						<li class="one_hidden">您可以通过导航与搜索获取您想要的信息</li>
						<li class="one_hidden">想要为民族论文贡献力量吗？在这里您可以提交自己的民族论文进行审核。</li>
						<li class="one_hidden">最终解释权归属者：哈哈哈小组</li>
					</ul>
				</div>
				<div class="hd fr">
					<a class="next"></a>
					<a class="prev"></a>
				</div>
			</div>
			<script type="text/javascript">
				jQuery(".txtScroll-top").slide({mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:1});
			</script>
			</div>
		</div>



		<!--中间内容-->
		<div class="clear"></div>
		<div class="w-all">
			<div class="w-main">
				<div class="fl conentl">
					<div class="newstop">
						<img  src="img/newslogo.png" alt=""/>
						<span class="fs-16">新闻动态</span>
						<a href="" class="fs-12">MORE ></a>
					</div>
					<div class="newscont">
						<div class="fl">
							<div class="newsimg">
								<a href=""><img src="img/contnew.png" alt=""></a>
							</div>
							<div class="newsimg">
								<a href=""><img src="img/contnew2.png" alt=""></a>
							</div>
							<div class="newsimg">
								<a href=""><img src="img/contnew3.png" alt=""></a>
							</div>
							<!--  
							<div class="newsbott">
								<a href="">
									<p class="one_hidden newspan1 fl">集团工会深入公司进</p>
									<p class="newspan2 fl">2017-01-01</p>
								</a>
							</div>
							-->
						</div>
						<div class="fl newslist">
							
							<%
							/*最新新闻：按时间排列最新发布的论文,显示论文 民族 作者 时间（最右边）*/
							request.setCharacterEncoding("UTF-8");//保证中文编码
							PaperDao paperdao1 = new PaperDao();
							ArrayList<Papers> paperList1 = paperdao1.getPaperPubTimeorder();
							request.setAttribute("paperList1",paperList1);
							System.out.println("当前搜索结果"+paperList1);
							%>
							<table class="table-1">
									 <thead>
									 <tr>
									 
										 	<th>标题</th>
										 	<th>民族</th>
										 	<th>作者</th>
										 	<th>期刊</th>
										 	<th>时间</th>
									</tr>
									  </thead>
									 <c:forEach items="${paperList1}" var="P1">
									 <tbody>
									 	<tr>
									 		<td>
									 			${P1.getTitle()}	
									 		</td>
									 		<td>
									 			${P1.getMinorityName()}	
									 		</td>							 		
									 		<td>
									 			${P1.getAuthorName()}	
									 		</td>
									 		<td>
									 			${P1.getSourceName()}	
									 		</td>
									 		<td>
									 			${P1.getPubTime()}	
									 		</td>
									 	</tr>
									 </tbody>
									</c:forEach>
								</table>
						
						</div>
					</div>
				</div>
				<div class="fr conentfr">
					<div class="rediantop zhuanti">
						<img  src="img/redainlogo.png" alt=""/>
						<span class="fs-16">最热论文排行榜</span>
					</div>
					<%
						/*最热论文：,下载次数最多的论文,论文名 民族（或者作者） 下载次数*/
						request.setCharacterEncoding("UTF-8");//保证中文编码
						PaperDao paperdao = new PaperDao();
						ArrayList<Papers> paperList = paperdao.gethotPapers();
						request.setAttribute("paperList",paperList);
						System.out.println("当前搜索结果"+paperList);
					/*
					<a href=""><img src="img/redian01.png" alt="" /></a><br />
					<a href=""><img src="img/redian02.png" alt="" /></a><br />
					<a href=""><img src="img/redian03.png" alt="" /></a><br />
					<a href=""><img src="img/redian04.png" alt="" /></a>
					*/
					%>
					
					<table class="table-2">
								 <thead>
									 <tr>
									 	<th>标题</th>
									 	<th>下载次数</th>
									 </tr>
								  </thead>
								 <c:forEach items="${paperList}" var="P">
								 <tbody>
								 	<tr>
								 		<td>
								 			${P.getTitle()}	
								 		</td>
								 		<td>
								 			${P.getDownloaded()}	
								 		</td>
								 	</tr>
								 </tbody>
								</c:forEach>
					</table>
				</div>
				
				<div class="fr massges1 ">
					<div class="massgtop1 zixu">
						<img  src="img/redainlogo.png" alt=""/>
						<span class="fs-16">最热期刊排行榜</span>
					</div>
					<%
						SourceDao sourcedao = new SourceDao();
						ArrayList<Sources> sourceList = sourcedao.gethotSources();
						request.setAttribute("sourceList",sourceList);
						System.out.println("当前搜索结果"+sourceList);
					%>
					<table class="table-3">
								 <thead>
									 <tr>
									 	<th>期刊</th>
									 	<th>发表论文个数</th>
									 </tr>
								  </thead>
								 <c:forEach items="${sourceList}" var="S">
								 <tbody>
								 	<tr>
								 		<td>
								 			${S.getSourceName()}	
								 		</td>
								 		<td>
								 			${S.getCountDownloaded()}	
								 		</td>
								 	</tr>
								 </tbody>
								</c:forEach>
					</table>
				</div>
			</div>
			</div>
		
		<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
		</div>
	



</body>
</html>