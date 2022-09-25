
<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%!
	int user_count = 0;
	%>
	
	<%	

	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String age =      request.getParameter("age");
	String address =  request.getParameter("address");

	if(username == "" || password == "" || username == null || password == null)
	{
		out.println("账号或者密码不能为空,三秒钟后回到注册页");
		response.setHeader("refresh","3;register.jsp");
	}	
	else{
		if(application.getAttribute(username) == (null))
		{	
			user_count++;
			application.setAttribute(username, password);
			application.setAttribute(username+"age", age);
			application.setAttribute(username+"count", user_count);
			application.setAttribute(username+"address", address);
			out.println("注册成功，三秒后来到主页");
			response.setHeader("refresh","3;middle.jsp?username="+username+"&password="+password);
		}
		else
		{
			out.println("用户已经被注册过，3秒后回到注册页面");
			response.setHeader("refresh","3;register.jsp");
		}
	}

	%>
		

</body>
</html>

