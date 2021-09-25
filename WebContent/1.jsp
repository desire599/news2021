<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hello jsp哈喽
</body>
<%

int i = 50;
float f = 3.14f;
Date date = new Date();
out.println(i);
out.println(f);
out.println(date);

%>

<%
int j = 30;
char c = 'A';
%>

<%=j %><br/>
<%=c %><br/>
<%=date %><br/>
</html>