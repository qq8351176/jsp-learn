<%@page import="javax.websocket.Session"%>
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
int num = 0;
%>

<%
String username = (String)session.getAttribute("loginid");
if(username == null)
{
out.println("请先登录再访问,3秒后返回");
response.setHeader("Refresh", "3;url=login.jsp");
}
else{
	
	out.println("欢迎"+username+"登录</br>");
	out.println("今年"+application.getAttribute(username+"age")+"岁</br>");
	out.println("住址:"+application.getAttribute(username+"address")+"</br>");
	out.println("您是第"+application.getAttribute(username+"count")+"位注册的用户</br>");
	out.println("您是今天第"+ ++num +"位登录本网站的用户:</br>");
}
%>
</body>
</html>