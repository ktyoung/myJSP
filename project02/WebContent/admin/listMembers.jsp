<%@ page language="java" contentType="text/html; charset=UTF-8"
	import=" java.util.*,memberControl.*"
	pageEncoding="UTF-8"
	isELIgnored="false" 
%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 

<%
	request.setCharacterEncoding("UTF-8");
%>  

<!DOCTYPE html>
<html>
<head>
	<c:choose>
		<c:when test='${msg=="addMember"}'>
			<script>
				window.onload = function() {
					alert("회원을 등록했습니다.");
				}
			</script>
		</c:when>
		<c:when test='${msg=="modified"}'>
			<script>
				window.onload = function() {
					alert("회원 정보를 수정했습니다.");
				}
			</script>
		</c:when>
		<c:when test= '${msg=="deleted"}'>
			<script>
				window.onload = function() {
					alert("회원 정보를 삭제했습니다.");
				} 
			</script>
		</c:when>
	</c:choose>
	<meta charset="UTF-8">
	<title>만안구청 - 관리자모드</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="김태영"/>
	<meta name="Keywords" content="김태영, KimTaeYoung, 포트폴리오, 김태영 포트폴리오, portfolio, TaeYoung's portfolio, 프로젝트, Project, 김 태영, 김 태 영, 태영 김, 태영, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="김태영의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link href="http://mozilla.github.io/foundation-icons/assets/foundation-icons.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="../css/style.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="../images/index.ico"/>
	<script src="../js/html5div.js"></script>
	<script src="../js/html5shiv.js"></script>
	<script src="../js/jquery-1.9.0.min.js"></script>
	<script src="../js/jquery.cookie.js"></script>
	<script src="../js/rollover.js"></script>
	<script src="../js/script.js"></script>
	<style>
		.memInput{padding : 5px 10px; border-radius : 5px; border : 1px solid #333333; font-size : 14px;}
		.memInput:hover{background-color : #f5f5f5;}
		.memInput:focus{background-color : #d9d9d9;}
		span{overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
	</style>
</head>
<body>
	<header id="header" class="cf">
		<%@ include file="header_admin.jsp" %>
	</header>
	<section style="width : 100%; background-color : #f8f8f8;">
		<article class="manageMem" style="width : 1420px; padding-bottom : 20px; display : block; margin : 0 auto;">
			<div style="width : 800px; display : block; margin : 0 auto;">
				<p style="font-weight : bold; line-height : 50px; width : 800px; display : block; margin : 0 auto; color : #555555;">관리자 모드 > 회원 관리</p>
				<ul style="color : #333333;">
					<li style="padding : 10px 10px; display : block; margin : 0 auto; font-weight: bold; border-top: solid 2px #dddddd; border-bottom: solid 2px #dddddd; background-color: #eeeeee;">
						<span style="width : 100px; text-align : center; display : inline-block;">아이디</span>
						<span style="width : 100px; text-align : center; display : inline-block;">비밀번호</span>
						<span style="width : 100px; text-align : center; display : inline-block;">이름</span>
						<span style="width : 116.5px; text-align : center; display : inline-block;">이메일</span>
						<span style="width : 116.5px; text-align : center; display : inline-block;">가입일</span>
						<span style="width : 100px; text-align : center; display : inline-block;">정보수정</span>
						<span style="width : 100px; text-align : center; display : inline-block;">회원삭제</span>
					</li>
					<c:choose>
						<c:when test="${empty membersList}" >
							<p>등록된 회원이 없습니다.</p>
						</c:when>  
						<c:when test="${!empty membersList}" >
							<c:forEach  var="mem" items="${membersList}" >
								<li style="padding : 10px 10px; display : block; margin : 0 auto; border-bottom: solid 1px #dddddd; background-color: #ffffff;">
									<span style="line-height : 35px; width : 100px; text-align : center; display : inline-block; font-size : 14px;">${mem.id}</span>
									<span style="line-height : 35px; width : 100px; text-align : center; display : inline-block; font-size : 14px;">${mem.pwd}</span>
									<span style="line-height : 35px; width : 100px; text-align : center; display : inline-block; font-size : 14px;">${mem.name}</span>     
									<span style="line-height : 35px; width : 116.5px; text-align : center; display : inline-block; font-size : 14px;">${mem.email}</span>     
									<span style="line-height : 35px; width : 116.5px; text-align : center; display : inline-block; font-size : 14px;">${mem.joinDate}</span	>
									<c:if test="${mem.id == 'admin'}">
									<span style="line-height : 35px; width : 200px; text-align : center; display : inline-block; font-size : 14px; color:#3D72FC;">
										관리자 계정은 수정/삭제 불가
									</span>
									</c:if>   
									<c:if test="${mem.id != 'admin'}">
									<span style="line-height : 35px; width : 100px; text-align : center; display : inline-block; font-size : 14px;">
										<form method="post" action="${contextPath}/member/modMemberForm.do?id=${mem.id}">
											<c:if test="${mem.id != 'admin'}">
											<input class="memInput" type="submit" value="수정"/>
											</c:if>
										</form>
									</span>
									<span style="line-height : 35px; width : 100px; text-align : center; display : inline-block; font-size : 14px;">
										<form method="post" action="${contextPath}/member/delMember.do?id=${mem.id}">
											<c:if test="${mem.id != 'admin'}">
											<input class="memInput" type="submit" value="삭제"/>
											</c:if>
										</form>
									</span>
									</c:if>       
								</li>
							</c:forEach>
						</c:when>
					</c:choose>
				</ul>
			</div>
		</article>
	</section>
	<%@ include file="footer_login.jsp" %>
</body>
</html>