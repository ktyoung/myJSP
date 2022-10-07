<!-- 로그인 했을 때 sub04 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>만안구청 - 회원가입</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="김태영"/>
	<meta name="Keywords" content="김태영, KimTaeYoung, 포트폴리오, 김태영 포트폴리오, portfolio, TaeYoung's portfolio, 프로젝트, Project, 김 태영, 김 태 영, 태영 김, 태영, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="김태영의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="../css/style.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="../images/index.ico"/>
	<script src="../../../js/html5div.js"></script>
	<script src="../../../js/html5shiv.js"></script>
	<script src="../js/jquery-1.9.0.min.js"></script>
	<script src="../../../js/rollover.js"></script>
	<script src="../js/script.js"></script>
	<script src="../js/signScript.js"></script>
	<script>
		function fn_sendMember(){
		   var memberForm=document.memberForm;
		   var id=memberForm.id.value;
		   var pwd=memberForm.pass.value;
		   var name=memberForm.name.value;
		   var email=memberForm.email.value;
		   if(id.length==0 || id=="") {
			  alert("아이디는 필수입니다.");
		   } else if(pwd.length==0 || pwd=="") {
			  alert("비밀번호는 필수입니다.");
		   } else if(name.length==0 || name=="") {
			  alert("이름은 필수입니다.");
		   } else if(email.length==0 || email=="") {
			  alert("이메일은 필수입니다.");
		   } else {
				memberForm.method="POST";
				memberForm.action="/project02/checkMember";
				memberForm.submit();
		   } 
		}
	</script>
</head>
<body>
	<header id="header" class="cf">
		<%@ include file="header_login.jsp" %>
	</header>
		
	<div id="container" class="cf">
		<div id="loginWrap" class="cf">
			<section id="loginBoard">
				<div id="loginHeadWrap">
					<div id="loginHead">
						<div class="loginHeadTitle"><h3>회원가입</h3></div>
						<div class="breadCrumbs">
							<a href="../../../main/index.jsp" tabIndex="57"></a>
							<div class="arrowImg"></div>
							<span>회원정보</span>
							<div class="arrowImg"></div>
							<span>회원가입</span>
						</div>
						<div class="snsBtnArea"></div>
					</div>
				</div>
			</section>
			<section id="signInWrap">
				<div class="signIn">
					<div id="joinBox" class="joinBox">
					<form name="memberForm" method="post" action="index.jsp">
<script>
	var checkIdVar = 'false';
	var currentCheckId;
</script>

										
						<div class="form id">
							<div class="col1">아이디</div>
							<div class="col2">
								<label>
									<input autocomplete="off" maxlength="11" type="text" name="id" />
									<div class="idImage infoImage"></div>
								</label>
							</div>
							<div class="idInfoBox">
								<div class='idInfo signupInfo'></div>
								<div class="idCheckText">아이디 확인중입니다.</div>	
							</div>								
						</div>
						<div class="form password">
							<div class="col1">비밀번호</div>
							<div class="col2">
								<label>
									<input autocomplete="off" maxlength="15" type="password" name="pass">
									<div class="passImage infoImage"></div>
								</label>
							</div>
							<div class="passwordInfo signupInfo"></div>
						</div>
						<div class="form passConfirm">
							<div class="col1">비밀번호 확인</div>
							<div class="col2">
								<label>
									<input autocomplete="off" maxlength="15" type="password" name="passConfirm">
									<div class="passConfirmImage infoImage"></div>
								</label>
							</div>
							<div class="passConfirmInfo signupInfo"></div>
						</div>
						<div class="form name">
							<div class="col1">이름</div>
							<div class="col2">
								<input autocomplete="off" maxlength="5" type="text" name="name">
							</div>
							<div class="nameInfo signupInfo"></div>
						</div>
						<div class="form email">
							<div class="col1">이메일</div>
							<div class="col2 cf">
								<input autocomplete="off" maxlength="35" type="text" name="email" class="fl">
							</div>
							<div class="emailInfo signupInfo"></div>
						</div>
						<div class="bottomLine"></div>
						<div class="buttons cf">
							<a class="resetButton fl" href="index.jsp" title="다시하기">다시하기</a>
							<a class="saveButton fl" href="#" title="가입하기" onclick="fn_sendMember()">가입하기</a>						
						</div>
						<input type="hidden" name="command" value="addMember" />	
					</form>
				</div> <!-- joinBox -->
				</div>
			</section>
		</div>
	</div>
	
	<%@ include file="footer_login.jsp" %>
</body>
</html>