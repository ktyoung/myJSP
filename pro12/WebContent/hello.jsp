<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	String name = "듀크";
	public String getName() { return name; }
%>
<!DOCTYPE html>
<!-- 선언문 -->
<!-- 
1. JSP에서 사용될 변수나 메서드를 선언할 수 있는 요소
2. JSP페이지 내에서 변수 및 메서드를 선언 후, 변수나 메서드를 이용하여 동적으로 HTML 코드를 생성하는 데 사용
3. 선언문에 선언된 변수를 멤버 변수라 한다. 
-->
<html>
<head>
<meta charset="UTF-8">
<title>선언문 연습</title>
</head>
<body>
	<!-- 표현식 -->
	<%-- 
	1. 동적인 JSP 페이지를 브라우저로 표현을 하기 위한 요소
	2. 변수를 출력하거나, 계산식 또는 메서드의 결괏값을 브라우저에 출력
	3. 스크립트릿 코드 내에서 out 이라는 내장 객체를 통해 브라우저에 출력하는 것과 결과가 같음
	4. 스크립트릿과 달리 변수나 메서드를 출력하고자 할 때 세미콜론(;)을 표기하지 않음
	5. 표현식 문법
	<%= 변수 혹은 메서드 %> // <% 와 = 사이에 공백이 있으면 안 됨 
	--%>
	<h1>안녕하세요 <%=name %> 님!</h1>
</body>
</html>