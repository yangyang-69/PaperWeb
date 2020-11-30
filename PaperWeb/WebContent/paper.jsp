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
				        <select name="SourceSelect1">
				        <option>(请选择期刊)</option>
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
				        民族：<input type="text" name="Minority"/><br>
				        <select name="MinoritySelect2">
				        <option>(请选择民族)</option>
				        <option value="1">藏</option>
				        <option value="2">纳西</option>
				        <option value="3">彝</option>
				        </select>
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