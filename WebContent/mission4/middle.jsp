<%@page import="sun.invoke.empty.Empty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String username = request.getParameter("username");
String password = request.getParameter("password");

/* 非法访问判断 */
if(username == null || password == null || username.isEmpty() || password.isEmpty())
{
	out.println("账号或密码不可以为空，三秒后回到登录页面");
	response.setHeader("refresh","3;login.jsp"); 
}


if(application.getAttribute(username) != null)
{
	if(application.getAttribute(username).equals(password))
	{
		out.println("登录成功，三秒后来到主页.");
		session.setAttribute("loginid", username);
		
	}
	String ch = request.getParameter("ch");
	if(ch != null)
	{
		int time =Integer.parseInt(ch);
		Cookie c = new Cookie("loginid",username);
		c.setMaxAge(time);
		response.addCookie(c);
	}
	response.setHeader("Refresh", "3;url=main.jsp");
	
}

else 
{
	out.println("当前用户不存在，三秒后回到登录页面");
	response.setHeader("refresh","3;login.jsp"); 
}

%>
</body>
</html>