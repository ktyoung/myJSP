<!-- 로그인하지 않았을 때 sub03 -->
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
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>만안구청 - 로그인</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="김태영"/>
	<meta name="Keywords" content="김태영, KimTaeYoung, 포트폴리오, 김태영 포트폴리오, portfolio, TaeYoung's portfolio, 프로젝트, Project, 김 태영, 김 태 영, 태영 김, 태영, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="김태영의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="images/index.ico"/>
	<script src="../../js/html5div.js"></script>
	<script src="../../js/html5shiv.js"></script>
	<script src="js/jquery-1.9.0.min.js"></script>
	<script src="../../js/rollover.js"></script>
	<script src="js/script.js"></script>
	<script>
		function fn_validate(){
			var loginForm = document.loginForm;
			var userId = loginForm.userId.value;
			var userPw = loginForm.userPw.value;
			
			if((userId.length==0 || userId=="") || (userPw.length==0 || userPw=="")) {
				alert("아이디와 비밀번호는 필수입니다.");
			} else if(userId === "admin") {
				alert("관리자 권한으로 로그인합니다.");
				loginForm.method = "post";
				loginForm.action = "${contextPath}/member/listMembers.do";
				loginForm.submit();
			}
			else {
				loginForm.method = "post";
				loginForm.action = "/project02/main/index.jsp";
				loginForm.submit();
			}
		}
	</script>
</head>
<body>
	<header id="header" class="cf">
		<%@ include file="main/header.jsp" %>
	</header>
		
	<div id="container" class="cf">
		<div id="loginWrap">
			<section id="loginBoard">
				<div id="loginHeadWrap">
					<div id="loginHead">
						<div class="loginHeadTitle"><h3>로그인</h3></div>
						<div class="breadCrumbs">
							<a href="../sub01/index.jsp" tabIndex="57"></a>
							<div class="arrowImg"></div>
							<span>회원정보</span>
							<div class="arrowImg"></div>
							<span>로그인</span>
						</div>
						<div class="snsBtnArea"></div>
					</div>
				</div>
				<div id="mainDisplay">
					<div id="sideMenu">
						<div class="sideMenuTitle">
							<strong>회원정보</strong>
						</div>
						<div class="sideMenuContents">
							<ul>
								<li class="menuTitle firstMenu"><a href="../sub02/index.jsp" class="menuTitleText" tabIndex="58">로그인</a></li>
								<li class="menuTitle"><a href="../sub04/index.jsp" class="menuTitleText" tabIndex="59">아이디찾기</a></li>
								<li class="menuTitle"><a href="../sub01/index.jsp" class="menuTitleText" tabIndex="60">비밀번호 재발급</a></li>
								<li class="menuTitle"><a href="../sub04/index.jsp" class="menuTitleText" tabIndex="61">회원가입</a></li>
							</ul>
						</div>
					</div>
					<div id="loginBrowser">
						<form name="loginForm" id="loginForm" class="loginForm" method="post">
							<div class="loginGroup cf">
								<div class="loginArea">
									<div class="userInfo">
										<div class="inpArea">
											<label for="userId"></label>
											<input type="text" id="userId" name="userId" value="admin" placeholder="아이디"/>
										</div>
										<div class="inpArea">
											<label for="userPw"></label>
											<input type="password" id="userPw" name="userPw" value="admin1234" placeholder="비밀번호"/>
										</div>
									</div>
									<input type="button" id="loginBtn" title="로그인" value="로그인" onClick="fn_validate()" class="btnLogin themeBtn"/>
									<div class="checkArea">
										<a href="../sub04/index.jsp" tabIndex="62">아이디 찾기</a>
										<a href="../sub01/index.jsp" tabIndex="63">비밀번호 재발급</a>
										<a href="../sub02/index.jsp" tabIndex="64">회원가입</a>
									</div>
								</div>
							</div>
						</form>
						<div class="loginDesc">
							<ul>
								<li>안양시 통합회원으로 가입한 경우 <a href="../sub04/index.jsp" tabIndex="65">안양시신규회원등록(새창)</a> 페이지에서 최초 1회 로그인 후 안양시 홈페이지 이용이 가능합니다.</li>
								<li>로그인이 안되시는 경우 한/영 키와 Caps Lock 키가 눌러져 있지 않은지 확인하세요.</li>
								<li>계속해서 로그인이 안되시는 경우 관리자에게 문의하시기 바랍니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<%@ include file="main/footer.jsp" %>
</body>
</html>