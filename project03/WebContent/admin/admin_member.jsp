<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    import="signIn.*"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html>
<head>
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
</head>
<body>
	<header id="header" class="cf">
		<%@ include file="header_admin.jsp" %>
	</header>
	<section style="width : 100%; background-color : #f8f8f8;">
		<article class="manageMem" style="width : 1420px; padding-bottom : 20px; display : block; margin : 0 auto;">
			<div style="width : 800px; display : block; margin : 0 auto;">
				<p style="font-weight : bold; line-height : 50px; width : 800px; display : block; margin : 0 auto; color : #333333;">관리자 모드 > 회원 관리</p>
				<%@ include file="member.jsp" %>
			</div>
		</article>
	</section>
	<%@ include file="footer_login.jsp" %>
</body>
</html>