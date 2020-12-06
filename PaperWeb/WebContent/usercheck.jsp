<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="beans.Users" %>
<%@ page import="daos.UserDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>验证登录</title>
</head>
<body>
<!-- 实验10 --> 
<%
		UserDao userdao = new UserDao();//创建对象
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = request.getParameter("UserName");
		String password = request.getParameter("password");//获取参数
		System.out.println(UserName);
		System.out.println(password);
		Users user = userdao.UserCheckbygetpass(UserName);
		//
		String UserOrganization = user.getUserOrganization();
		System.out.println("用户的单位是："+UserOrganization);
		//
		//调用Dao的方法查询数据库
		if(user.getPassword().equals(password) && user!= null){
			//判断是否满足条件
			//out.print("登录成功,3秒后跳转");
			%>
				<form name="pass_form1" action="index.jsp" method="post" >
					<input type="hidden" name="UserName" value="<%=UserName%>">
					<!--<input type="submit" value="提交">  -->
				</form>
				<script type="text/javascript">
					alert("登录成功");
					setTimeout("pass_form1.submit();");
				</script>
				<meta http-equiv="refresh" content="1.5;url=index.jsp">
			<%
		}
		else{
			%>
				<script type="text/javascript">
					alert("登录失败，请重新登录");
				</script>
				<meta http-equiv="refresh" content="0.5;url=hello.jsp">
			<%
		}
			%>
</body>
</html>