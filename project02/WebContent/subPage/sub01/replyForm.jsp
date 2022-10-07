<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
	request.setCharacterEncoding("UTF-8");
%> 

<head>
<meta charset="UTF-8">
	<title>만안구청 - 열린광장</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="김태영"/>
	<meta name="Keywords" content="김태영, KimTaeYoung, 포트폴리오, 김태영 포트폴리오, portfolio, TaeYoung's portfolio, 프로젝트, Project, 김 태영, 김 태 영, 태영 김, 태영, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="김태영의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="${contextPath}/subPage/sub01/css/style.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="${contextPath}/images/index.ico"/>
	<script src="${contextPath}/subPage/sub01/js/html5div.js"></script>
	<script src="${contextPath}/subPage/sub01/js/html5shiv.js"></script>
	<script src="${contextPath}/subPage/sub01/js/jquery-1.9.0.min.js"></script>
	<script src="${contextPath}/subPage/sub01/js/rollover.js"></script>
	<script src="${contextPath}/subPage/sub01/js/script.js"></script>
<script>
	function backToList(obj){
		obj.action="${contextPath}/board/listArticles.do";
		obj.submit();
	}
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
			    $('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script> 
</head>
<body>
	<header id="header" class="cf">
		<c:choose>
		<c:when test="${login_id == 'admin'}">
			<%@ include file="/admin/header_admin.jsp" %>
		</c:when>
		<c:when test="${login_id != 'admin'}">
			<%@ include file="main/header_login.jsp" %>
		</c:when>
		</c:choose>
	</header>
	<section style="width : 100%; margin-bottom : 50px; color : #333333;">
		<div style="width : 1420px; margin : 0 auto; font-size : 19px;">
			<h3 style="font-weight : normal; margin-top: 30px; padding: 22px 20px; border-bottom: solid 2px #333333; font-size: 20px;">일반 게시판 > 답글쓰기</h3>
			<form name="frmReply" method="post" action="${contextPath}/board/addReply.do" enctype="multipart/form-data">
				<ul style="font-size : 19px;" class="cf">
					<li class="cf" style="padding: 25px 40px; border-bottom: solid 1px #dddddd;">
						<span style="display: block; width: 10%; float : left;">제목 : </span>
						<span style="display: block; width: 90%; float : left;">
							<input name="title" type="text" style="width: 100%; height: 35px; line-height: 35px; font-size: 19px; padding: 0px 10px; box-sizing: border-box; border : 1px solid #dddddd; font-family: '맑은 고딕', Verdana, 돋움, Dotum, sans-serif; letter-spacing: -0.063em;" />
						</span>
					</li>
					<li class="cf" style="padding: 25px 40px; border-bottom: solid 1px #dddddd;">
						<span style="display: block; width: 10%; float : left;">내용 : </span>
						<span style="display: block; width: 90%; float : left;">
							<textarea name="content" style="width: 100%; height: 400px; padding: 10px 10px; box-sizing: border-box; font-size: 19px; line-height: 30px; border : 1px solid #dddddd; font-family: '맑은 고딕', Verdana, 돋움, Dotum, sans-serif; letter-spacing: -0.063em;"></textarea>
						</span>
					</li>
					<li class="cf" style="padding: 25px 40px; border-bottom: solid 1px #dddddd;">
						<span style="display: block; width: 10%; float : left;">첨부파일</span>
						<span style="display: block; width: 90%; float : left;"><input type="file" name="imageFileName" onchange="readURL(this);" style="width: 100%; height: 35px; line-height: 35px; font-size: 19px; padding: 0px 10px; box-sizing: border-box;" /></span>
						<span><img id="preview" src="#" style="display : none;" /></span>
					</li>
				<ul style="text-align: right; margin: 20px 0 40px 0;">
					<li style="display: inline-block;"><input style="text-align: center; font-size: 18px; border-radius: 2px; padding: 8px 20px; border: 1px solid #cccccc; background-color: #cccccc; color: #555555; margin-right: 5px; cursor: pointer;" type="button" value="목록보기" onClick="backToList(this.form)" /></li>
					<li style="display: inline-block;"><input style="text-align: center; font-size: 18px; border-radius: 2px; padding: 8px 20px; border: 1px solid #cccccc; background-color: #3D72FC; color: #ffffff; margin-right: 5px; cursor: pointer;" type="submit" value="작성하기" /></li>
				</ul>
			</form>
		</div>
	</section>
	<%@ include file="main/footer.jsp" %>
</body>
</html>