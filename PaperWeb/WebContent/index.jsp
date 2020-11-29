<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-首页</title>
		<meta name="keywords" content="论文网-首页">
		<meta name="description" content="论文网-首页">
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/index.css">
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
	<%
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = request.getParameter("UserName");
		System.out.println("index.jsp+"+UserName);
		session.setAttribute("USERNAME",UserName);  
	    //response.sendRedirect("paper.jsp"); 
	%>
	
	<div class="w-all top">
			<div class="w-main">
					<a href="" class="toplogoa fl">
						<img src="img/toplogo.png" alt="" />
					</a>
					<!-- 
					<div class="f1 yxnwtop">
						<a href="">
							<p class="fs-12 fc-1 fl">登陆</p>
						</a>
						<a href="">
							<p class="fs-12 fc-1 fl">注册</p>
						</a>
					</div>
					
						<div class="fl yxnwtop">
							<a href="">
								<img src="img/topemail.png" align="" class="fl">
								<p class="fs-12 fc-1 fl">企业邮箱</p>
							</a>
							<a href="">
								<img src="img/gsnwlogo.png" alt="" class="fl">
								<p class="fs-12 fc-1 fl">公司内网</p>
							</a>
							<a href="">
								<img src="img/wsxflogo.png" alt="" class="fl">
								<p class="fs-12 fc-1 fl">网上信访</p>
							</a>
						</div>
						<form>
							<div class="fr topseacher">
								<input type="text"  class="fs-12 fc-1 nrinput" placeholder="搜索" />
								<button type="submit" class="topsubmit">&nbsp;</button>
							</div>
						</form>
					 -->
					
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
						<a href="">民族知识投递</a>
					</li>
					<li>
						<a href="">期刊信息</a>
					</li>
					<li>
						<a href="">作者信息</a>
					</li>
					<li>
						<a href="paper.jsp" onClick="setsesion1()">论文发表</a>
					</li>
					<li>
						<a href="">搜索</a>
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
		<div class="clear"></div>
		<!--中间内容-->
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
							<div class="newsfrtop">
								<a href="">
									<h2 class="fs-14 fl one_hidden">集团工会深入公司进行调研指导工作</h2>
									<span class="fs-12 fr">2016-12-12</span>
									<div class="clear"></div>
									<p class="fs-12 tw_hidden">为了贯彻集团工作要求，深化主题劳动竞赛促进企业发展，推动“点赞医药好职工”活动有序开展……</p>
								</a>
							</div>
							<ul>
								<li>
									<a href="">
										<h3 class="fs-12 fl one_hidden">· 国药器械50传承活动圆满结束</h3>
										<span class="fs-12 fr">2016-12-12</span>
									</a>
								</li>
								<li>
									<a href="">
										<h3 class="fs-12 fl one_hidden">· 国药器械50传承活动圆满结束</h3>
										<span class="fs-12 fr">2016-12-12</span>
									</a>
								</li>
								<li>
									<a href="">
										<h3 class="fs-12 fl one_hidden">· 国药器械50传承活动圆满结束</h3>
										<span class="fs-12 fr">2016-12-12</span>
									</a>
								</li>
								<li>
									<a href="">
										<h3 class="fs-12 fl one_hidden">· 国药器械50传承活动圆满结束</h3>
										<span class="fs-12 fr">2016-12-12</span>
									</a>
								</li>
								<li>
									<a href="">
										<h3 class="fs-12 fl one_hidden">· 国药器械50传承活动圆满结束</h3>
										<span class="fs-12 fr">2016-12-12</span>
									</a>
								</li>
								<li>
									<a href="">
										<h3 class="fs-12 fl one_hidden">· 国药器械50传承活动圆满结束</h3>
										<span class="fs-12 fr">2016-12-12</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="fr conentfr">
					<div class="rediantop zhuanti">
						<img  src="img/redainlogo.png" alt=""/>
						<span class="fs-16">最热论文排行榜</span>
					</div>
					<a href=""><img src="img/redian01.png" alt="" /></a><br />
					<a href=""><img src="img/redian02.png" alt="" /></a><br />
					<a href=""><img src="img/redian03.png" alt="" /></a><br />
					<a href=""><img src="img/redian04.png" alt="" /></a>
				</div>
				<div class="fl wtongy"></div>
				<div class="fr massges1 ">
					<div class="massgtop1 zixu">
						<img  src="img/redainlogo.png" alt=""/>
						<span class="fs-16">最热期刊排行榜</span>
					</div>
					<ul>
						<li>
							<a href="">
									<h3 class="fs-12 fl one_hidden">国药器械50传承活动圆满结束</h3>
									<span class="fs-12 fr">2016-12-12</span>
								</a>
						</li>
						<li>
							<a href="">
									<h3 class="fs-12 fl one_hidden">国药器械50传承活动圆满结束</h3>
									<span class="fs-12 fr">2016-12-12</span>
								</a>
						</li>
						<li>
							<a href="">
									<h3 class="fs-12 fl one_hidden">国药器械50传承活动圆满结束</h3>
									<span class="fs-12 fr">2016-12-12</span>
								</a>
						</li>
						<li>
							<a href="">
									<h3 class="fs-12 fl one_hidden">国药器械50传承活动圆满结束</h3>
									<span class="fs-12 fr">2016-12-12</span>
								</a>
						</li>
					</ul>
				</div>
			</div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
		</div>
	</body>



</body>
</html>