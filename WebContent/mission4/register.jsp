<%@ page import="javafx.application.Application"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
input {
	width: 100px
}
</style>

<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>

</head>

<body>
	<form action="register_success.jsp" id="login">
		用户名:<input type="text" name="username" id="username"><br>
		密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="password" id="password">
		<input type="button" id = "password-control" value="显示密码">
		<br> 
		年&nbsp;&nbsp;&nbsp;&nbsp;龄:<input type="text" name="age" ><br>
		地&nbsp;&nbsp;&nbsp;&nbsp;址:<input type="text" name="address" ><br>
		<input type="submit" value="注册"  id="register">
	</form>
	
	<script type="text/javascript">
		//将登录页面的数据 直接拷贝过来
		let jsp_username = "<%=request.getParameter("username")%>";
		let jsp_password = "<%=request.getParameter("password")%>";
		let password_hidden = true;
		$("#username").val(jsp_username);
		$("#password").val(jsp_password);
		$("#password-control").click(function(){
			if(password_hidden)
			{
				$("#password").attr("type","text");
				password_hidden = false;
				$("#password-control").val("隐藏密码");
			}
			else
			{
				$("#password").attr("type","password");
				password_hidden = true;
				$("#password-control").val("显示密码");
			}

		});
	</script>
</body>
</html>