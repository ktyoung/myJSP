<!-- 로그인 했을 때 sub02 -->
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
	<title>만안구청 - 자주하는 질문</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="김태영"/>
	<meta name="Keywords" content="김태영, KimTaeYoung, 포트폴리오, 김태영 포트폴리오, portfolio, TaeYoung's portfolio, 프로젝트, Project, 김 태영, 김 태 영, 태영 김, 태영, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="김태영의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="${contextPath}/subPage/sub02/css/style.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="${contextPath}/images/index.ico"/>
	<script src="${contextPath}/subPage/sub02/js/html5div.js"></script>
	<script src="${contextPath}/subPage/sub02/js/html5shiv.js"></script>
	<script src="${contextPath}/subPage/sub02/js/jquery-1.9.0.min.js"></script>
	<script src="${contextPath}/subPage/sub02/js/rollover.js"></script>
	<script src="${contextPath}/subPage/sub02/js/script.js"></script>
	<script src="${contextPath}/subPage/sub02/js/ajax.js"></script>
</head>
<body>
	<header id="header" class="cf">
		<c:choose>
		<c:when test="${login_id == 'admin'}">
			<%@ include file="/admin/header_admin.jsp" %>
		</c:when>
		<c:when test="${login_id != 'admin'}">
			<%@ include file="header_login.jsp" %>
		</c:when>
		</c:choose>
		<div id="searchBoxWrap">
			<div id="searchBox">
				<h2 class="blind">검색</h2>
				<div class="searchBox">
					<form name="searchNeoForm" id="searchNeoForm" method="get">
						<fieldset>
							<legend>검색</legend>
							<div class="searchForm">
								<label>
									<input type="search" class="searchQuery" name="query" id="searchQuery" title="검색어" value="무엇을 찾고 계시나요?"/>
								</label>
								<input type="submit" title="검색" value="검색" class="searchSubmit"/>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="searchKeyword">
					<h3 class="blind">인기검색어</h3>
					<div class="keyword">
						<div class="keywordList">
							<div class="keywordTxt">
								<ul>
									<li><a href="${contextPath}/subPage/sub01/main/index.jsp" tabIndex="57">안심콜</a></li>
									<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="58">보건증</a></li>
									<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="59">대학생</a></li>
									<li><a href="${contextPath}/subPage/sub01/main/index.jsp" tabIndex="60">방역콜</a></li>
									<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="61">조직도</a></li>
									<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="62">폐기물</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="keywordControl">
						<button class="prevBtn"></button>
						<button class="autoBtn"></button>
						<button class="nextBtn"></button>
					</div>
				</div>
			</div>			
		</div>
	</header>
		
	<div id="container" class="cf">
		<div id="qnaBoardWrap">
			<div id="sideMenu">
				<div class="sideMenuTitle">
					<strong>전자민원</strong>
				</div>
				<div class="sideMenuContents">
					<ul>
						<li class="menuTitle firstMenu"><a href="${contextPath}/subPage/sub01/main/index.jsp" class="menuTitleText" tabIndex="63">종합민원안내</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub03/main/index.jsp" class="menuTitleText" tabIndex="64">안양시에 바란다</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub02/main/index.jsp" class="menuTitleText" tabIndex="65">청렴안양클린신고</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub01/main/index.jsp" class="menuTitleText" tabIndex="66">자동차민원</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub03/main/index.jsp" class="menuTitleText" tabIndex="67">건설기계민원</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub02/main/index.jsp" class="menuTitleText" tabIndex="68">이륜자동차민원</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub01/main/index.jsp" class="menuTitleText" tabIndex="69">여권발급민원</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub03/main/index.jsp" class="menuTitleText" tabIndex="70">민원편람</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub02/main/index.jsp" class="menuTitleText" tabIndex="71">행정서비스헌장</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub01/main/index.jsp" class="menuTitleText" tabIndex="72">콜센터</a></li>
					</ul>
				</div>
			</div>
			<section id="qnaBoard">
				<div id="qnaHead">
					<div class="qnaHeadTitle">
						<h2>전자민원</h2>
					</div>
					<div class="breadCrumbs">
						<ul>
							<li><div class="homeIcon"></div></li>
							<li class="next"><span>전자민원</span></li>
							<li class="next"><span>여권발급민원</span></li>
							<li class="next last"><span>자주하는 질문</span></li>
						</ul>

					</div>
				</div>			
				<div id="qnaSubject">
					<h3>여권에 대하여 자주 하는 질문입니다.</h3>
				</div>
				<div id="qnaContents">
					<ul class="menu">
					</ul>
				</div>
				<div id="satisfaction">
					<div class="koglOpen">
						<div class="koglImg"></div>
						<p>안양시가 창작한 <span>"새소식"</span> 저작물은 공공누리 제<span>4</span>유형으로 <span>"출처표시 + 상업적 이용금지 + 변경금지"</span> 조건에 따라 이용할 수 있습니다.
						</p>
					</div>
					<div class="questionWrap">
						<p class="question">이 페이지에서 제공하는 정보에 대하여 어느 정도 만족하셨습니까?</p>
						<form method="post" name="contentEval" id="contentEval">
							<fieldset>
								<div class="inputRadio">
									<label for="value5">
										<input type="radio" name="eval" id="value5"/>
										매우 만족
									</label>
									<label for="value4">
										<input type="radio" name="eval" id="value4"/>
										만족
									</label>
									<label for="value3">
										<input type="radio" name="eval" id="value3"/>
										보통
									</label>
									<label for="value2">
										<input type="radio" name="eval" id="value2"/>
										불만족
									</label>							
									<label for="value1">
										<input type="radio" name="eval" id="value1"/>
										매우 불만족
									</label>
								</div>
								<div class="opinion">
									<input type="text" name="contentOpinion" id="contentOpinion" title="의견을 입력해주세요" value="의견을 입력해주세요"/>
								</div>
								<span>
									<input type="submit" value="의견등록" id="mainOpnion"/>
								</span>
							</fieldset>
						</form>
					</div>
					<h3 class="blind">담당자 정보</h3>
					<div class="managerInfoWrap">
						<ul>
							<li class="dept">
								<span>담당부서</span>안양시 열린콜센터
							</li>
							<li class="call">
								<span>전화번호</span>031-8045-7000
							</li>							
						</ul>
					</div>
				</div>	
			</section>
		</div>
	</div>
	<%@ include file="footer_login.jsp" %>
</body>
</html>
