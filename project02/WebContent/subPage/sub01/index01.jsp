<!-- 로그인하지 않았을 때 sub01 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="images/index.ico"/>
	<script src="../../js/html5div.js"></script>
	<script src="../../js/html5shiv.js"></script>
	<script src="js/jquery-1.9.0.min.js"></script>
	<script src="../../js/rollover.js"></script>
	<script src="js/script.js"></script>
</head>
<body>
	<header id="header" class="cf">
		<%@ include file="main/header.jsp" %>
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
									<li><a href="../sub02/index.jsp" tabIndex="57">안심콜</a></li>
									<li><a href="../sub03/index.jsp" tabIndex="58">보건증</a></li>
									<li><a href="../../index.jsp" tabIndex="59">대학생</a></li>
									<li><a href="../sub02/index.jsp" tabIndex="60">방역콜</a></li>
									<li><a href="../sub03/index.jsp" tabIndex="61">조직도</a></li>
									<li><a href="../../index.jsp" tabIndex="62">폐기물</a></li>
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
						<li class="menuTitle firstMenu"><a href="../sub02/index.jsp" class="menuTitleText" tabIndex="63">새소식</a></li>
						<li class="menuTitle"><a href="../sub03/index.jsp" class="menuTitleText" tabIndex="64">시정소식</a></li>
						<li class="menuTitle"><a href="../../index.jsp" class="menuTitleText" tabIndex="65">동소식 모아보기</a></li>
						<li class="menuTitle"><a href="../sub02/index.jsp" class="menuTitleText" tabIndex="66">부서장 업무추진비 공개</a></li>
						<li class="menuTitle"><a href="../sub03/index.jsp" class="menuTitleText" tabIndex="67">행정정보 사전공표 자료실</a></li>
						<li class="menuTitle"><a href="../../index.jsp" class="menuTitleText" tabIndex="68">고시/공고</a></li>
						<li class="menuTitle"><a href="../sub02/index.jsp" class="menuTitleText" tabIndex="69">사진소식</a></li>
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
				<div id="totalPost">
					<span class="postAll">
						총게시물 :
						<em class="black">1,343</em>
						건
					</span>
					&nbsp;[
					<em class="currentPage">1</em>
					/135 페이지 ]
				</div>
				<table align="center" border="1" width="80%">
		<tr height="10" align="center" bgcolor="lightgreen">
			<td>글번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>작성일</td>
		</tr>
		<c:choose>
			<c:when test="${empty articlesList}">
				<tr height="10">
					<td colspan="4">
						<p align="center">
							<b><span style="font-size : 9pt;">등록된 글이 없습니다.</span></b>
						</p>
					</td>
				</tr>
			</c:when>
			<c:when test="${!empty articlesList}" >
				<c:forEach  var="article" items="${articlesList}" varStatus="articleNum" >
					<tr align="center">
						<td width="5%">${articleNum.count}</td>
						<td width="10%">${article.id }</td>
						<td align='left'  width="35%">
							<span style="padding-right:30px"></span>
					<c:choose>
						<c:when test='${article.level > 1 }'>  
							<c:forEach begin="1" end="${article.level }" step="1">
								<span style="padding-left:20px"></span>    
							</c:forEach>
							<span style="font-size:12px;">[답변]</span>
							<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
						</c:when>
						<c:otherwise>
							<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
						</c:otherwise>
					</c:choose>
					</td>
					<td  width="10%"><fmt:formatDate value="${article.writeDate}" /></td> 
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<a class="cls1" href="#"><p class="cls2">글쓰기</p></a>
				<div id="pagination">
					<div class="imgPprev"><a href="../../index.jsp" tabIndex="80">처음페이지</a></div>
					<div class="imgPrev"><a href="../sub02/index.jsp" tabIndex="81">이전페이지</a></div>
					<span class="split"></span>
					<div class="active"><a href="../sub03/index.jsp" tabIndex="82" class="active">1</a></div>
					<div><a href="../../index.jsp" tabIndex="83">2</a></div>
					<div><a href="../sub02/index.jsp" tabIndex="84">3</a></div>
					<div><a href="../sub03/index.jsp" tabIndex="85">4</a></div>
					<div><a href="../../index.jsp" tabIndex="86">5</a></div>
					<div><a href="../sub02/index.jsp" tabIndex="87">6</a></div>
					<div><a href="../sub03/index.jsp" tabIndex="88">7</a></div>
					<div><a href="../../index.jsp" tabIndex="89">8</a></div>
					<div><a href="../sub02/index.jsp" tabIndex="90">9</a></div>
					<div><a href="../sub03/index.jsp" tabIndex="91">10</a></div>
					<span class="split"></span>
					<div class="imgNext"><a href="../../index.jsp" tabIndex="92">다음페이지</a></div>
					<div class="imgNnext"><a href="../sub02/index.jsp" tabIndex="93">끝페이지</a></div>
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
	<%@ include file="main/footer.jsp" %>
</body>
</html>