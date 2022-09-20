<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "이순신";
	public String getName(){ return name; }
%>
<%
/* 자바 코드에 대한 주석문 */
/* String age = request.getParameter("age"); */ 
%>
<!DOCTYPE html>
	<!-- HTML 주석문 -->
<html>
<head>
<meta charset="UTF-8">
<title>주석문 연습</title>
</head>
<body>
	
	<!-- 소스코드로 보이는 주석 -->
	<%-- 소스코드로 보이지 않는 주석 --%>
 	
	
	<%-- 
	<h1>안녕하세요 <%=name %>님!</h1>
	<h1>나이는 <%=age %>살입니다.</h1>
	<h1>키는 <%=180 %>cm입니다.</h1>
	<h1>나이+10은 <%=Integer.parseInt(age)+10 %>살입니다.</h1> 
	--%>
</body>
</html>