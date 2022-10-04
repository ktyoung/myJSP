<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>
 
<head>
	<meta charset="UTF-8">
	<title>만안구청 - 회원정보수정</title>
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
		form{background-color : #ffffff; padding : 20px; color : #333333;}
		input{display : block; width : 100%; text-align : left; display : inline-block; font-size : 18px; padding : 15px; border-radius : 5px; border : 1px solid #dddddd; color : #333333;}
		input:disabled{background-color : #d9d9d9;}
		
		.modInput > input{text-align : center; padding : 20px;}
		.modInput > input.submit{width : 320px; margin-right : 40px; background-color : #3D72FC; color : #ffffff;}
		.modInput > input.submit:hover{background-color : #648efd;}
		.modInput > input.submit:focus{background-color : #315bca;}
		.modInput > input.reset{width : 320px; margin-left : 40px; float : right;}
		.modInput > input.reset:hover{background-color : #f3f3f3;}
		.modInput > input.reset:focus{background-color : #c0c0c0;}
		div[class*="mod"] {background-color : #ffffff; padding : 20px;}
		div.modId {padding : 0px 20px 20px 20px;}
		.modTitle{font-size : 20px; display : block; font-weight : bold; margin-bottom : 10px;}
		#footerWrap{height : 306px;}
	</style>
</head>
<body>
	<header id="header" class="cf">
		<%@ include file="header_admin.jsp" %>
	</header>
	<section style="width : 100%; background-color : #f8f8f8;">
		<article class="manageMem" style="width : 1420px; padding-bottom : 20px; display : block; margin : 0 auto;">
			<div style="width : 800px; display : block; margin : 0 auto;">
				<p style="font-weight : bold; line-height : 50px; display : block; margin : 0 auto; color : #555555;">관리자 모드 > 회원 정보 수정</p>
				<form  method="post" action="${contextPath}/member/modMember.do?id=${memInfo.id}">
					<p style="margin-bottom : 30px; display : block; color : #555555;">※ 아이디와 가입일자는 수정할 수 없습니다.</p>
					<div class="modId">
						<span class="modTitle">아이디</span>
						<input type="text" name="id" value="${memInfo.id}" disabled >
					</div>
					<div class="modPwd">
						<span class="modTitle">비밀번호</span>
						<input type="password" name="pwd" value="${memInfo.pwd}" />
					</div>
					<div class="modName">
						<span class="modTitle">이름</span>
						<input type="text" name="name" value="${memInfo.name}" />
					</div>
					<div class="modEmail">
						<span class="modTitle">이메일</span>
						<input type="text" name="email" value="${memInfo.email}" />
					</div>
					<div class="modDate">
						<span class="modTitle">가입일</span>
						<input type="text" name="joinDate" value="${memInfo.joinDate}" disabled />
					</div>
					<div class="modInput">
						<input class="submit" type="submit" value="수정하기" />
						<input class="reset" type="reset" value="다시입력" />
					</div>
				</form>
			</div>
		</article>
	</section>
	<%@ include file="footer_login.jsp" %>
</body>
</html>