<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
 
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
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
	
	function fn_enable(obj){
		document.getElementById("i_title").disabled=false;
		document.getElementById("i_content").disabled=false;
		document.getElementById("i_imageFileName").disabled=false;
		document.getElementById("tr_btn_modify").style.display="block";
		document.getElementById("tr_btn").style.display="none";
	}
	
	function fn_modify_article(obj){
		obj.action="${contextPath}/board/modArticle.do";
		obj.submit();
	}
	
	function fn_remove_article(url,articleNO){
		var form = document.createElement("form");
		form.setAttribute("method", "post");
		form.setAttribute("action", url);
		var articleNOInput = document.createElement("input");
		articleNOInput.setAttribute("type","hidden");
		articleNOInput.setAttribute("name","articleNO");
		articleNOInput.setAttribute("value", articleNO);
		
		form.appendChild(articleNOInput);
		document.body.appendChild(form);
		form.submit();
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
	
	function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
	 }
</script>
<style>
	#tr_btn_modify{display : none;}
	.subTitle{color : #333333; font-size : 18px; display : block; margin : 0px 10px; width : 150px;}
	.subText{color : #333333; font-size : 18px; display : block; margin : 0px 10px; width : 1000px;}
	form>ul{border-bottom : 1px solid #dddddd; display : block; box-sizing : border-box;}
	form>ul>li{margin-bottom : 20px; height : 50px; line-height : 50px; display : block; padding : 10px;}
	.cont{color : #333333; font-size : 18px; height : 50px; line-height : 50px;}
</style>
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
		<div style="width : 1420px; display : block; margin : 0 auto; padding : 20px;">
			<h3 style="font-weight : normal; margin-top: 30px; padding: 22px 20px; border-bottom: solid 2px #333333; font-size: 20px;">일반 게시판 > 내용보기</h3>
			<form class="cf" style="width : 1420px; display : block; margin : 0 auto;" name="frmArticle" method="post" action="${contextPath}" enctype="multipart/form-data">
				<ul class="cf">
					<li class="subTitle fl">작성일자</li>
					<li class="subText fl"><input class="cont" type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled /></li>
				</ul>
				<ul class="cf">
					<li class="subTitle fl">글번호</li>
					<li class="subText fl">
						<input class="cont fl" type="text" value="${article.articleNO}" disabled />
						<input class="cont fl" type="hidden" name="articleNO" value="${article.articleNO}" />
					</li>
				</ul>
				<ul class="cf">
					<li class="subTitle fl">작성자</li>
					<li class="subText fl"><input class="cont fl" type=text value="${article.id}" name="writer" disabled /></li>
				</ul>
				<ul class="cf">
					<li class="subTitle fl">제목</li>
					<li class="subText fl"><input class="cont fl" style="width : 1210px;" type=text value="${article.title}" name="title" id="i_title" disabled /></li>
				</ul>
				<ul class="cf">
					<li class="subTitle fl">내용</li>
					<li class="subText fl" style="height : 100%; padding : 15px 0px;"><textarea style="color : #333333; display : block; width : 1210px; height : 300px; border : 1px solid #dddddd; box-sizing : border-box; padding : 10px; line-height : 16px;"   name="content" id="i_content" disabled />${article.content}</textarea></li>
				</ul>
			<c:if test="${not empty article.imageFileName && article.imageFileName!='null'}">  
				<ul class="cf">
					<li class="subTitle fl">첨부파일</li>
					<li class="subText fl" style="height : 100%;">
						<input class="cont" type= "hidden" name="originalFileName" value="${article.imageFileName}" />
						<img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}" id="preview"  /><br>
						<input class="cont" type="file" name="imageFileName" id="i_imageFileName" disabled onchange="readURL(this);" />     
					</li>   
				</ul>
				<h4 style="text-align : right; font-weight : normal; margin-top: 30px; padding: 0px 20px; font-size: 16px; color : #3D72FC">※ 게시글 수정 시, 제목과 내용만 수정가능합니다.</h3>
			</c:if>
				<ul id="tr_btn_modify" style="border : none;">
					<li class="btns fr">
						<input style="font-size : 18px; padding : 10px 20px; background : #cccccc;" type=button value="목록" onClick="backToList(frmArticle)">
						<input style="font-size : 18px; padding : 10px 20px; background : #3D72FC; color : #ffffff;" type=button value="수정완료" onClick="fn_modify_article(frmArticle)"  >
					</li>
				</ul>
				<ul id="tr_btn" style="border : none;">
					<li class="btns fr">
						<input style="font-size : 18px; padding : 10px 20px; background : #cccccc;" type=button value="수정" onClick="fn_enable(this.form)">
						<input style="font-size : 18px; padding : 10px 20px; background : #cccccc;" type=button value="삭제" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
						<input style="font-size : 18px; padding : 10px 20px; background : #cccccc;" type=button value="목록" onClick="backToList(this.form)">
						<input style="font-size : 18px; padding : 10px 20px; background : #3D72FC; color : #ffffff;" type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
					</li>
				</ul>
			</form>
		</div>
	</section>
	<%@ include file="main/footer.jsp" %>
</body>
</html>