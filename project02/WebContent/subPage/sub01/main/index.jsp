<!-- 로그인 했을 때 sub01 -->

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
		var url = window.location.pathname;
		if (url == "/project02/subPage/sub01/main/index.jsp") {
			window.location.href = "${contextPath}/board/listArticlesLogin.do";
		}
	</script>
	<style>
		/* 게시글 상단 */
		#container>#noticeBoardWrap>#noticeBoard>#postContents{display : block; width : 1090px; height : 100%; margin : 0 auto; float : left; margin-left : 10px; font-size : 19px; color : #333333;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.contentTitle{display : block; width : 1090px; height : 60px; background : #ffffff;  margin : 0 auto; float : left; border-top : 2px solid #222222; box-sizing : border-box; border-bottom : 1px solid #d9d9d9;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.contentTitle>ul>li{display : block; text-align : center; color : #222222; line-height : 60px; text-align : center;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.contentTitle>ul>li.num{display : block; width : 75px; height : 60px; margin : 0 auto; float : left;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.contentTitle>ul>li.title{display : block; width : 735px; height : 60px; margin : 0 auto; float : left;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.contentTitle>ul>li.dept{display : block; width : 140px; height : 60px; margin : 0 auto; float : left;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.contentTitle>ul>li.date{display : block; width : 140px; height : 60px; margin : 0 auto; float : left;}
		/* 게시글 내용 */
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo{display : block; width : 1090px; height : 75px; margin : 0 auto; float : left;border-bottom : 1px solid #d9d9d9; box-sizing : border-box; background : #ffffff;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo>ul>li{float : left; display : block; text-align : center;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo>ul>li.postNum{display : block; width : 75px; height : 75px; margin : 0 auto; float : left; text-align : center; line-height : 75px;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo>ul>li.postTitle{display : block; width : 735px; height : 75px; margin : 0 auto; float : left; line-height : 75px; text-align : left;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo>ul>li.postTitle>a:hover{color : #202e70;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo>ul>li.postDept{display : block; width : 140px; height : 75px; margin : 0 auto; float : left; text-align : center; line-height : 75px;}
		#container>#noticeBoardWrap>#noticeBoard>#postContents>.postInfo>ul>li.postDate{display : block; width : 140px; height : 75px; margin : 0 auto; float : left; text-align : center; line-height : 75px;}
	</style>
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
									<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="57">안심콜</a></li>
									<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="58">보건증</a></li>
									<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="59">대학생</a></li>
									<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="60">방역콜</a></li>
									<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="61">조직도</a></li>
									<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="62">폐기물</a></li>
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
		<div id="noticeBoardWrap">
			<div id="sideMenu">
				<div class="sideMenuTitle">
					<strong>열린광장</strong>
				</div>
				<div class="sideMenuContents">
					<ul>
						<li class="menuTitle firstMenu"><a href="${contextPath}/subPage/sub02/main/index.jsp" class="menuTitleText" tabIndex="63">새소식</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub03/main/index.jsp" class="menuTitleText" tabIndex="64">시정소식</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub04/main/index.jsp" class="menuTitleText" tabIndex="65">동소식 모아보기</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub02/main/index.jsp" class="menuTitleText" tabIndex="66">부서장 업무추진비 공개</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub03/main/index.jsp" class="menuTitleText" tabIndex="67">행정정보 사전공표 자료실</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub04/main/index.jsp" class="menuTitleText" tabIndex="68">고시/공고</a></li>
						<li class="menuTitle"><a href="${contextPath}/subPage/sub02/main/index.jsp" class="menuTitleText" tabIndex="69">사진소식</a></li>
					</ul>
				</div>
			</div>
			<section id="noticeBoard">
				<div id="noticeHead">
					<div class="noticeHeadTitle">
						<h2>열린광장</h2>
					</div>
					<div class="breadCrumbs">
						<ul>
							<li><div class="homeIcon"></div></li>
							<li class="next"><span>열린광장</span></li>
							<li class="next last"><span>새소식</span></li>
						</ul>
					</div>
				</div>
				<div id="boardSearchWrap">
					<div class="searchMenu">
						<div class="searchForm">
							<div class="searchFormGroup">
								<select name="searchCategory" id="searchCategory" class="searchInput" title="검색영역선택">
									<option value="title">제목</option>
									<option value="txt">내용</option>
								</select>
								<input type="text" name="searchKeyword" id="searchKeyword" class="searchTxtInput" title="검색단어 입력" value="검색단어 입력"/>
								<span>
									<button type="submit" class="searchBtn black" >검색</button>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div id="postContents">
					<div class="contentTitle">
						<ul>
							<li class="num">번호</li>
							<li class="title">제목</li>
							<li class="dept">작성자</li>
							<li class="date">작성일</li>
						</ul>
					</div>
					<c:choose>
							<c:when test="${empty articlesList}">
								<li style="list-style : none; display : block; width : 1090px; height : 75px; margin : 0 auto; float : left;border-bottom : 1px solid #d9d9d9; box-sizing : border-box; background : #ffffff; text-align : center; line-height : 75px;">등록된 글이 없습니다.</li>
							</c:when>
							<c:when test="${!empty articlesList}" >
								<c:forEach  var="article" items="${articlesList}" varStatus="articleNum" >
									<div class="postInfo">
										<ul>
											<li class="postNum">${article.articleNO}</li>
											<c:choose>
												<c:when test='${article.level > 1}'>
													<li class='postTitle'><a class="postDept" href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}"><c:forEach begin="2" end="${article.level}" step="1">
														<span style="font-size:12px;">[답변]</span>    
													</c:forEach>
													${article.title}></a></li>
												</c:when>
												<c:otherwise>
													<li class='postTitle'><a class="postDept" href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a></li>
												</c:otherwise>
											</c:choose>
											<li class="postDept">${article.id}</li>
											<li class="postDate"><fmt:formatDate value="${article.writeDate}" /></li> 
										</ul>
									</div>
								</c:forEach>
							</c:when>
					</c:choose>
				</div>
				<a style="float : right; padding : 10px 20px; background : #3d72fc; color : #ffffff; margin-top : 30px;" href="${contextPath}/board/articleForm.do">글쓰기</a>
				<div class="page_Wrap">
					<div class="con_page">
						 <c:if test="${totArticles != null }" >
					      <c:choose>
					        <c:when test="${totArticles >100 }">  <!-- 글 개수가 100 초과인경우 -->
						      <c:forEach var="page" begin="1" end="10" step="1" >
						         <c:if test="${section >1 && page==1 }">
						          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; &lt; </a>
						         </c:if>
						          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
						         <c:if test="${page == 10 }">
						          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; &gt; </a>
						         </c:if>
						      </c:forEach>
					        </c:when>
					        <c:when test="${totArticles == 100 }" >  <!--등록된 글 개수가 100개인경우  -->
						      <c:forEach var="page" begin="1" end="10" step="1" >
						        <a class="no-uline"  href="#">${page } </a>
						      </c:forEach>
					        </c:when>
					        <c:when test="${totArticles< 100 }" >   <!--등록된 글 개수가 100개 미만인 경우  -->
						      <c:forEach   var="page" begin="1" end="${totArticles/10 +1}" step="1" >
						         <c:choose>
						           <c:when test="${page==pageNum }">
						            <a class="sel-page"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
						          </c:when>
						          <c:otherwise>
						            <a class="no-uline"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
						          </c:otherwise>
						        </c:choose>
						      </c:forEach>
					        </c:when>
					      </c:choose>
					    </c:if>
					</div> 
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