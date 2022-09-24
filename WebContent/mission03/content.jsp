<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
在content文件中引用来自 include的变量

<% 
out.println(request.getParameter("include"));
%>
</body>
</html>