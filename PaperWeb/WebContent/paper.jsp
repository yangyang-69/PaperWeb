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
		<script type="text/javascript">
		function yanzheng3(){
			if(subpaper_form1.Title.value == "" ||subpaper_form1.Summary.value ==""
					||subpaper_form1.Source.value=="" ||subpaper_form1.Minority.value=="" ){
				alert("任意选项不能为空,请重新填写");
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
					<li class="on">
						<a href="">论文发表</a>
					</li>
					<li>
						<a href="">搜索</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="w-all bannertu" style="background: url(img/bg04.png) no-repeat center;background-size: 100% 100%;"></div>
		<div class="w-all">
			<div class="w-main">
				<div class="goodsxxfr fr">
					<div class="nagelj">
						当前位置：<a href="">首页></a>
						<a href="">论文发表></a>
					</div>
				</div>
					<%
						request.setCharacterEncoding("UTF-8");//保证中文编码
						String UserName = (String)session.getAttribute("USERNAME");
						System.out.println("paper.jsp+"+UserName);
					%>
					<form name="subpaper_form1" action="" method="post">
				        论文标题：<input type="text" name="Title" /><br>
				        摘要：<input type="text" name="Summary"/><br>
				        期刊：<input type="text" name="Source"/><br>
				        民族：<input type="text" name="Minority"/><br>
				        <input type="submit" value="提交论文" onClick="return yanzheng3()"/><br>
		    		</form>
				</div>
		</div>
		<div class="clear"></div>
		
		<!--footer-->
		<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
		</div>

</body>
</html>