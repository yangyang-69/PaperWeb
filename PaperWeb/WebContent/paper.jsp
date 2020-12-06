<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
		<meta charset="utf-8" />
		<title>论文网-论文发表</title>
		<meta name="keywords" content="论文网-论文发表">
		<meta name="description" content="论文网-论文发表">
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
		<script type="text/javascript">
			function yanzheng3(){
				if(subpaper_form1.Title.value == "" ||subpaper_form1.Summary.value ==""){
					alert("任意选项不能为空,请重新填写");
					return false;
				}
				else{
					subpaper_form1.submit();
					return true;
				}
			}
		</script>
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
					<li>
						<a href="Minority.jsp">民族知识投递</a>
					</li>
					<li>
						<a href="qikan.jsp">期刊信息</a>
					</li>
					<li>
						<a href="author.jsp">作者简介</a>
					</li>
					<li class="on">
						<a href="">论文发表</a>
					</li>
					<li>
						<a href="search.jsp">搜索</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all bannertu" style="background: url(img/bg04.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="fb">
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfr fr">
					<div class="nagelj">
						当前位置：<a href="index.jsp">首页></a>
						<a href="">论文发表></a>
					</div>
				</div>
			</div>			
		</div>
		<%
						request.setCharacterEncoding("UTF-8");//保证中文编码
						String UserName = (String)session.getAttribute("USERNAME");
						System.out.println("paper.jsp+"+UserName);
		%>
		
		<div class="copy">
				<p></p>
			</div>
			<div class="copy">
				<p></p>
			</div>
		<div class="appointment-w3">
		<h1 class="header-w3ls">
						论文发表
		</h1>
			<form name="subpaper_form1" action="papercall.jsp" method="post">
				<div class="main">
					<div class="form-add-w3ls">
							<input type="text" name="Title" placeholder="论文标题" required=""/>
					</div>
				</div>
				<div class="main">
					<div class="form-add-w3ls">
							<input type="text" name="Summary" placeholder="论文摘要" required=""/>
					</div>
				</div>
				<div class="main">
					<div class="form-add-w3ls">
							<select class="form-control buttom" name="SourceSelect1">
										        <!-- <option>(请选择期刊)</option> -->
										        <option value="">选择期刊</option>
										        <option value="1">大舞台</option>
										        <option value="2">地理学报</option>
										        <option value="3">干旱区资源与环境</option>
										        <option value="4">贵州民族研究</option>
										        <option value="5">民族文学研究</option>
										        <option value="6">齐鲁学刊</option>
										        <option value="7">青海民族研究</option>
										        <option value="8">青海社会科学</option>
										        <option value="9">世界宗教文化</option>
										        <option value="10">体育文化导刊</option>
										        <option value="11">文艺争鸣</option>
										        <option value="12">舞蹈</option>
										        <option value="13">西北民族研究</option>
										        <option value="14">西藏研究</option>
										        <option value="15">西南民族大学学报(人文社会科学版)</option>
										        <option value="16">现代传播(中国传媒大学学报)</option>
										        <option value="17">小说评论</option>
										        <option value="18">烟台大学学报(哲学社会科学版)</option>
										        <option value="19">中国藏学</option>
										        <option value="20">中华文化论坛</option>
										        <option value="21">中学政治教学参考</option>
										        <option value="22">广西民族学院学报(哲学社会科学版)</option>
										        <option value="23">旅游学刊</option>
										        <option value="24">思想战线</option>
										        <option value="25">云南民族大学学报(哲学社会科学版)</option>
										        <option value="26">云南社会科学</option>
										        <option value="27">云南艺术学院学报</option>
										        <option value="28">兰台世界</option>
										        <option value="29">民族学刊</option>
										        <option value="30">民族研究</option>
										        <option value="31">人民论坛</option>
										        <option value="32">西南民族大学学报(人文社科版)</option>
										        <option value="33">西南民族学院学报(哲学社会科学版)</option>
										        <option value="34">新闻界</option>
										        <option value="35">学术探索</option>
										        <option value="36">中国音乐学</option>
										        <option value="37">电影文学</option>
										        <option value="38">中国民族</option>
								</select>
							
					</div>
				</div>
				<div class="main">
					<div class="form-add-w3ls">
								<select class="form-control buttom" name="MinoritySelect1">
									        <!-- <option>(请选择民族)</option> -->
									        <option value="">选择民族</option>
									        <option value="1">藏</option>
									        <option value="2">纳西</option>
									        <option value="3">彝</option>
								</select>
					</div>
				</div>
				
					<div class="btnn">
								<input type="submit" value="提交论文" onClick="return yanzheng3()"/>
					</div>
				
			</form>
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