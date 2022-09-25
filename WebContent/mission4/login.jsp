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
<%
Cookie a[] = request.getCookies();
if(a!=null)
{
	for(int i = 0;i<a.length;i++)
	{
		if(a[i].getName().equals("loginid"))
		{
			String loginid = a[i].getValue();
			session.setAttribute("loginid", loginid);
			response.sendRedirect("main.jsp");
			return;
		}
	}
}
%>
	<form action="middle.jsp" id="login">
		用户名:<input type="text" name="username" id="username" value=""><br>
		密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="password" id="password" value=""><br> 
			<input type="submit" value="登录" id="submit-button">
			<input type="submit" value="注册" id="register">
			<br>
			不保存用户:<input type = "radio" name = "ch" value = "0"  style = "width: 20px">
			<br>
			保存用户名:<input type = "radio" name = "ch" value = "60" style = "width: 20px">一分钟
			<input type = "radio" name = "ch" value = "120" style = "width: 20px">两分钟

	</form>
	<script type="text/javascript">
		$("#register").click(function() {
			$("#login").attr('action', "register.jsp");
		});
		$("#submit-button").click(
				function(e) {
					if ($("#username").prop("value") == ""
							|| $("#password").prop("value") == "") {
						if (e && e.preventDefault) {//如果是FF下执行这个

							e.preventDefault();
							$("#username").prop("value", "");
							$("#password").prop("value", "");
							alert("输入不全，请重新输入");

						} else {

							window.event.returnValue = false;//如果是IE下执行这个
							$("#username").prop("value", "");
							$("#password").prop("value", "");
							alert("输入不全，请重新输入");

						}
					}
				});
	</script>
</body>
</html>