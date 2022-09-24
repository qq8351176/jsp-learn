<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*,java.awt.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! int i  = 0; %>
<%
int j = 0;
out.println("全局变量i:"+ i++ + "<br>");
out.println("全局变量j:"+ j++);
%>
</body>
</html>