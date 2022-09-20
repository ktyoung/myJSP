<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "이순신";
	public String getName(){ return name; }
%>
<% String age = request.getParameter("age"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 연습</title>
</head>
<body>
	<%-- 
	표현식
	<%= %>
	JSP페이지 내에서 사용되는 변수 또는 리턴값이 있는 메소드 결과값을 출력하기 위해 사용. 
	결과값은 String 타입이며, 세미콜론 사용불가 
	--%>
	<h1>안녕하세요 <%=name %>님!</h1>
	<h1>나이는 <%=age %>살입니다.</h1>
	<h1>키는 <%=180 %>cm입니다.</h1>
	<h1>나이+10은 <%=Integer.parseInt(age)+10 %>살입니다.</h1>
</body>
</html>