<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원격지 서버가 응답 시간을 초과했습니다.</title>
<link rel="stylesheet" href="css/style.css"/>
<script src="js/html5div.js"></script>
<script src="js/html5shiv.js"></script>
<script src="js/jquery-1.9.0.min.js"></script>
<script src="js/script.js"></script>
<script src="js/rollover.js"></script>
</head>
<body style="margin : 0; padding : 0;">
	<header id="header" class="cf">
	<%@ include file="../main/header.jsp"%>
	</header>
	<div id="errorWrap" style="width : 100%;">
		<div class="error" style="width : 1420px; height : 650px; display : block; margin : 0 auto;">
			<div class="errorText" style="width : 600px; height : 500px; float : left; margin-top : 100px; padding-left : 100px;">
				<span style="color : #abb0b3; font-size : 15px;">ERROR CODE: 500</span>
				<h2 style="font-size : 50px; font-weight : bold; margin-top : 12px; margin-bottom : 12px; color : #333333;">이런!</h2>
				<p style="font-size : 30px; margin-bottom : 50px; color : #333333;">원격지 서버가<br> 응답 시간을 초과했습니다.</p>
				<ul style="list-style : none;">
					<li style="list-style : none; color : #333333; margin-bottom : 12px;"><p>다음은 도움이 될만한 링크입니다.</p></li>
					<li style="list-style : none;"><a href="${contextPath}/index.jsp" style="text-decoration : underline;">메인 페이지로 이동</a></li>
				</ul>
			</div>
			<div class="errorImage" style="width : 600px; height : 500px; float : right; margin-top : 100px; padding-right : 100px;">
				<img src="${contextPath}/images/error_500.png" style="width : 100%; display : block;" />
			</div>
		</div>
	</div>
	<%@ include file="../main/footer.jsp" %>
</body>
</html>