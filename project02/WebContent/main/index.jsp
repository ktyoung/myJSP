<!-- 로그인 했을 때 index -->
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
	<title>만안구청 - 안양시</title>
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
	<script src="../js/dDayCount_login.js"></script>
	<script src="../js/weather_login.js"></script>
	<script src="../js/script.js"></script>
</head>
<body onLoad="ddaycount()">
	<!-- 팝업 -->
	<div class="pop">
		<div class="popupTitle">
			<span>민생경제 회복지원금(재난지원금) 안내</span>
		</div>
		<div class="popupText">
			<p>&middot;&nbsp;&nbsp;<span class="red">중복수령은 불가</span>하오니, 지원금액을 확인 후 <span class="blue">1번만 신청</span>바랍니다.</p>
			<p>&middot;&nbsp;&nbsp;거짓이나 그 밖에 부정한 방법으로 지원금을 받은 경우, <span class="red">「공공재정 부정청구 금지 및 부정이익 환수 등에 관한 법률」</span>에 따라 해당금액을 <span class="red">환수</span>하고 <span class="red">최대 5배에 해당하는 금액이 부과</span>될 수 있습니다.</p>
			<table>
				<caption>민생경제 회복지원금(재난지원금)</caption>
				<colgroup>
					<col/>
					<col/>
					<col/>
					<col/>
					<col/>
					<col/>
				</colgroup>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">지원액</th>
						<th scope="col">온라인접수</th>
						<th scope="col">오프라인접수</th>
						<th scope="col">담당부서</th>
						<th scope="col">전화번호</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>소상공인</td>
						<td>100만원</td>
						<td>5.2(월) 09시<br/>~ 6.10(금) 24시</td>
						<td>5.16(월)<br/>~ 6.10(금) 18시</td>
						<td>기업경제과</td>
						<td>031-8045-6980,6983</td>
					</tr>
					<tr>
						<td>지역예술인</td>
						<td>100만원</td>
						<td>6.13(월) 09시<br/>~ 6.30(목) 18시</td>
						<td>-</td>
						<td>문화관광과</td>
						<td>031-8045-5594</td>
					</tr>					
					<tr>
						<td>특수형태노동종사자,<br/>프리랜서</td>
						<td>50만원</td>
						<td>5.13(금)<br/>~ 별도 공고일까지</td>
						<td>5.25(수)<br/>~ 별도 공고일까지</td>
						<td>고용노동과</td>
						<td>031-8045-5173</td>
					</tr>
					<tr>
						<td>여행업체,<br/>여행업 종사자</td>
						<td>100만원</td>
						<td>5.12(목)<br/>~ 5.27(금)<br/>※ E-mail 접수만 가능<br/> (yoonahhong@korea.kr)</td>
						<td>-</td>
						<td>문화관광과</td>
						<td>031-8045-5496</td>
					</tr>
					<tr>
						<td>개인택시</td>
						<td>100만원</td>
						<td>-</td>
						<td>4.29(금)<br/>~ 5.6(금)</td>
						<td>대중교통과</td>
						<td>031-8045-5647</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div>
			<div id="countwrap">
				<h2 id="countment">신청마감까지</h2>
				<div class="counter">
					<ul class="cf">
						<li id="counterD" class="firstli fl">
							<img src="../images/num0.png" width="40" id="day100" class="fl" alt="일100의자리"/>
							<img src="../images/num0.png" width="40" id="day10" class="fl" alt="일10의자리"/>
							<img src="../images/num0.png" width="40" id="day1" class="fl" alt="일1의자리"/>
							<p>일</p>
						</li>
						<li class="fl">
							<img src="../images/countSepe.png" width="10" class="fl" alt="구분기호"/>
						</li>
						<li id="counterH" class="fl">
							<img src="../images/num0.png" width="40" id="hour10" class="fl" alt="시간10의자리" />
							<img src="../images/num0.png" width="40" id="hour1" class="fl" alt="시간1의자리" />
							<p>시간</p>
						</li>
						<li class="fl">
							<img src="../images/countSepe.png" width="10" class="fl" alt="구분기호"/>
						</li>						
						<li id="counterM" class="fl">
							<img src="../images/num0.png" width="40" id="min10" class="fl" alt="분10의자리" />
							<img src="../images/num0.png" width="40" id="min1" class="fl" alt="분1의자리" />
							<p>분</p>
						</li>
						<li class="fl">
							<img src="../images/countSepe.png" width="10" class="fl" alt="구분기호"/>
						</li>
						<li id="counterS" class="fl">
							<img src="../images/num0.png" width="40" id="sec10" class="fl" alt="초10의자리" />
							<img src="../images/num0.png" width="40" id="sec1" class="fl" alt="초1의자리" />
							<p>초</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<button>닫기</button>
	</div>
	<header id="header" class="cf">
		<div id="topBannerWrap">
			<div id="topBanner">
				<div class="topBanner">
					<a href="https://www.anyang.go.kr/covid/index.do" target="_blank" class="topLink">
						<div class="textBox">
							<p class="title">안양시 <em class="yellow">코로나19 방역지침</em> 종합 안내</p>
							<p class="btn">자세히보기</p>
						</div>
					</a>
				</div>
				<div class="topClose">
					<span class="topCloseBtn">창닫기</span>
					<button type="button" class="topCloseBtn">Ⅹ</button>
				</div>
			</div>
		</div>
		<c:choose>
		<c:when test="${login_id == 'admin'}">
			<%@ include file="/admin/header_admin.jsp" %>
		</c:when>
		<c:when test="${login_id != 'admin'}">
			<%@ include file="header_login.jsp" %>
		</c:when>
		</c:choose>
		<div id="favoriteMenuWrap" class="fl">
			<div id="favoriteMenu">
				<div class="favoriteMenuTitle fl">
					<h2>자주 찾는 메뉴</h2>
					<div class="borBot"></div>
					<button type="button" class="favoriteBtn showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;열기"></button>
					<button type="button" class="favoriteBtn2 showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;닫기"></button>
				</div>
				<ul>
					<li class="oneLine"><a href="../subPage/sub01/main/index.jsp" tabIndex="57" class="covid" ><div class="covidIcon"></div><span class="favoriteMenuText">코로나19현황</span></a></li>
					<li class="oneLine"><a href="../subPage/sub02/main/index.jsp" tabIndex="58" class="building"><div class="buildingIcon"></div><span class="favoriteMenuText">청사안내</span></a></li>
					<li class="oneLine"><a href="../subPage/sub03/main/index.jsp" tabIndex="59" class="book"><div class="bookIcon"></div><span class="favoriteMenuText">부서안내</span></a></li>
					<li class="oneLine"><a href="../subPage/sub04/main/index.jsp" tabIndex="60" class="map"><div class="mapIcon"></div><span class="favoriteMenuText">찾아오시는길</span></a></li>
					<li class="oneLine"><a href="../subPage/sub01/main/index.jsp" tabIndex="61" class="center"><div class="centerIcon"></div><span class="favoriteMenuText">행정복지센터</span></a></li>
					<li class="oneLine"><a href="../subPage/sub02/main/index.jsp" tabIndex="62" class="doc"><div class="docIcon"></div><span class="favoriteMenuText">민원발급</span></a></li>
					<li class="twoLine"><a href="../subPage/sub03/main/index.jsp" tabIndex="63" class="fam"><div class="famIcon"></div><span class="favoriteMenuText">가족관계<br/>등록</span></a></li>
					<li class="last twoLine"><a href="../subPage/sub04/main/index.jsp" tabIndex="64" class="calc"><div class="calcIcon"></div><span class="favoriteMenuText">세금<br/>(지방세)</span></a></li>
					<li class="secondFMenu twoLine"><a href="../subPage/sub01/main/index.jsp" tabIndex="65" class="penalty"><div class="penaltyIcon"></div><span class="favoriteMenuText">주정차<br/>과태료</span></a></li>
					<li class="secondFMenu twoLine"><a href="../subPage/sub02/main/index.jsp" tabIndex="66" class="kiosk"><div class="kioskIcon"></div><span class="favoriteMenuText">무인민원<br/>발급기</span></a></li>
					<li class="secondFMenu twoLine"><a href="../subPage/sub03/main/index.jsp" tabIndex="67" class="carSms"><div class="carSmsIcon"></div><span class="favoriteMenuText">주정차<br/>문자알림</span></a></li>					
				</ul>
				
			</div>
		</div>
	</header>
		
	<section id="slideBanner" class="cf">
		<h2 class="blind">슬라이드 배너</h2>
		<div id="leftSlideBanner" class="fl">
			<div class="imgBox">
				<img class="img on" src="../images/leftSlideBannerContent.png" alt="슬라이드배너1" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent2.png" alt="슬라이드배너2" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent3.png" alt="슬라이드배너3" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent4.png" alt="슬라이드배너4" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent5.png" alt="슬라이드배너5" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent6.png" alt="슬라이드배너6" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent7.png" alt="슬라이드배너7" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent8.png" alt="슬라이드배너8" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent9.png" alt="슬라이드배너9" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent10.png" alt="슬라이드배너10" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent11.png" alt="슬라이드배너11" width="940" height="470"/>
				<img class="img" src="../images/leftSlideBannerContent12.png" alt="슬라이드배너12" width="940" height="470"/>
			</div>
			<div class="slideControl">
				<div class="countBox">
					<span class="currentPage">01</span>
					<span>/</span>
					<span class="totalPage">12</span>
				</div>
				<div class="controlBox">
					<button type="button" class="prev">이전</button>
					<button type="button" class="next">다음</button>
					<button type="button" class="auto">재생</button>
				</div>
				<button type="button" class="more">모아보기</button>
			</div>
		</div>
		<div id="rightSlideBanner" class="fl">
			<div id="searchBox">
				<form>
					<fieldset>
						<div class="searchForm">
							<label>
								<input type="search" class="searchQuery gray" name="query" id="searchQuery" title="검색어" value="무엇을 찾고 계시나요?"/>
							</label>
							<input type="submit" title="검색" value="검색" class="searchSubmit"/>
						</div>
					</fieldset>
				</form>
				<div class="searchKeyword cf">
					<div class="keywordImg fl"></div>
					<div class="keywordList fl">
						<ul>
							<li><a href="../subPage/sub01/main/index.jsp" tabIndex="68">폐기물</a></li>
							<li>&nbsp;&#124;&nbsp;</li>
							<li><a href="../subPage/sub02/main/index.jsp" tabIndex="69">채용공고</a></li>
							<li>&nbsp;&#124;&nbsp;</li>
							<li><a href="../subPage/sub03/main/index.jsp" tabIndex="70">안심콜</a></li>
							<li>&nbsp;&#124;&nbsp;</li>
							<li><a href="../subPage/sub04/main/index.jsp" tabIndex="71">보건증</a></li>
							<li>&nbsp;&#124;&nbsp;</li>
							<li><a href="../subPage/sub01/main/index.jsp" tabIndex="72">대학생</a></li>
							<li>&nbsp;&#124;&nbsp;</li>
							<li><a href="../subPage/sub02/main/index.jsp" tabIndex="73">방역콜</a></li>
							<li>&nbsp;&#124;&nbsp;</li>
							<li><a href="../subPage/sub03/main/index.jsp" tabIndex="74">조직도</a></li>
						</ul>
					</div>
					<div class="kewordControl">
						<button class="prevButton"></button>
						<button class="autoButton"></button>
						<button class="nextButton"></button>
					</div>
				</div>
			</div>
			<div id="photoNews">
				<ul>
					<li>
						<a href="../subPage/sub01/main/index.jsp" tabIndex="75"><div class="rightSlideBannerContent">
							<div>
								<span>2022.7.5. [작은 나눔, 행복 한끼 나눔 캠페인]</span>
							</div>
						</div></a>
					</li>
					<li>
						<a href="../subPage/sub02/main/index.jsp" tabIndex="76"><div class="rightSlideBannerContent2">
							<div>
								<span>2022.7.5. 만안구 여성합창단 위촉장 수여</span>
							</div>
						</div></a>
					</li>
					<li>
						<a href="../subPage/sub03/main/index.jsp" tabIndex="77"><div class="rightSlideBannerContent3">
							<div>
								<span>2022.7.1. #잘 지내줘서 고마워요 "토닥토닥" 거리공연</span>
							</div>
						</div></a>
					</li>
					<li>
						<a href="../subPage/sub04/main/index.jsp" tabIndex="78"><div class="rightSlideBannerContent4">
							<div>
								<span>2022.6.24. #잘 지내줘서 고마워요 "토닥토닥" 거리공연</span>
							</div>
						</div></a>
					</li>					
				</ul>
				<!-- <div class="slideControl">
					<div class="countBox">
						<span class="currentPage">1</span>
						<span class="gap">/</span>
						<span class="totalPage">4</span>
					</div>
					<div class="controlBox">
						<button type="button" class="photoNewsPrev"></button>
						<button type="button" class="photoNewsAuto"></button>
						<button type="button" class="photoNewsNext"></button>
					</div>
				</div> -->
			</div>
			
		</div>
	</section>
	<section id="tabContentsWrap" class="cf">
		<h2 class="blind">탭메뉴</h2>
		<div id="tabTitle">
			<ul>
				<li class="active"><button type="button" class="active tabButton firstTab"><span>구청소식</span></button></li>
				<li><button type="button" class="tabButton middleTab"><span>동소식</span></button></li>
				<li><button type="button" class="tabButton middleTab"><span>시청소식</span></button></li>
				<li><button type="button" class="tabButton"><span>고시공고</span></button></li>
			</ul>
		</div>
		<div id="tabContent">
			<div class="wardNews">
				<ul>
					<li class="mainContent1"><a href="../subPage/sub01/main/index.jsp" tabIndex="79">
						<div class="title">
							<p>2022년 「어게인 안양일번가 거리공연」 참가자 모집 안내</p>
						</div>
						<div class="txt">
							<p>지역예술인들에게는 예술활동의 자리를 마련하고 안양9경인 안양일번가에 활기를 불어 넣으며, 시민들에게는 특별한 문화예술 향유의 기회를 제공하고자 재능있는 거리공연 참가자를 공개모집하오니 많은 참여 바랍니다.</p>
						</div>
						<span>2022.07.11</span>
					</a></li>
					<li class="mainContent2"><a href="../subPage/sub02/main/index.jsp" tabIndex="80">
						<div class="title">
							<p>2022 만안구 환경사랑 글ㆍ그림 공모전 개최 안내</p>
						</div>
						<div class="txt">
							<p>관내 초등학교 학생 등을 대상으로 지구 환경 위기를 스스로 이해하고 환경사랑을 실천하는 계기를 심어주고자 「2022 만안구 환경사랑 글‧그림 공모전」 을 개최하오니 많은 관심과 참여 바랍니다.</p>
						</div>
						<span>2022.06.16</span>
					</a></li>
					<li class="mainContent3"><a href="../subPage/sub03/main/index.jsp" tabIndex="81">
						<div class="title">
							<p>#잘지내줘서 고마워요 "토닥토닥" 거리공연 출연팀 선정 공고</p>
						</div>
						<div class="txt">
							<p>#잘지내줘서 고마워요 "토닥토닥" 거리공연 출연팀을 다음과 같이 선정하여 공고합니다.</p>
						</div>
						<span>2022.06.08</span>
					</a></li>
					<li class="mainContent4"><a href="../subPage/sub04/main/index.jsp" tabIndex="82">
						<div class="title">
							<p>2022년 만안구 여성합창단 신규 단원 공개모집 공고</p>
						</div>
						<div class="txt">
							<p>「안양시 여성합창단 지원 조례」제5조제1항에 따라 만안구 여성합창단을 이끌어 갈 신규 단원을 다음과 같이 모집합니다.</p>
						</div>
						<span>2022.06.08</span>
					</a></li>
				</ul>
			</div>
			
			<div class="townNews">
				<ul>
					<li class="mainContent1"><a href="../subPage/sub01/main/index.jsp" tabIndex="83">
						<div class="title">
							<p>[안양9동]「인천 영종 A41블록 한신더휴 민간분양 사전청약」장애인 특별공급 안내</p>
						</div>
						<div class="txt">
							<p>○ 공급위치 : 인천광역시 중구 중산동 1913-10
							○ 입주자 모집공고 예정일: '22. 08. 12.(금) 예정
							○ 문의전화 : 견본주택 및 분양문의 T.1533-0262

							※ 상기 세대수 및 분양일정은 예정사항으로 분양승인
							   내용에 따라 변경될 수 있음
							○ 접수 및 신청 : 거주지 읍·면·동 주민센터(장애인담당) 
							  ○ 신청기간 : ‘22. 8. 3.(수) ~ ‘22. 8. 8.(월) 18:00 방문 신청
							  ○ 문 의 처 : 거주지 시․군 및 읍·면·동 주민센터(장애인담당) 
							  ○ 구비서류 : 공동주택 특별공급 신청 구비서류(아래 참조)</p>
						</div>
						<span>2022.07.28</span>
					</a></li>			
					<li class="mainContent2"><a href="../subPage/sub02/main/index.jsp" tabIndex="84">
						<div class="title">
							<p>[석수2동]「인천 영종 A41블록 한신더휴 민간분양 사전청약」 장애인 특별공급 안내안내</p>
						</div>
						<div class="txt">
							<p>「인천 영종 A41블록 한신더휴 민간분양 사전청약」 장애인 특별공급을 안내하오니, 신청자께서는 붙임서식에 의거하여 관련서류를 22.08.03.(수)부터 08.08.(월)까지 관할 행정복지센터로 제출하여 주시기 바랍니다.</p>
						</div>
						<span>2022.07.28</span>
					</a></li>			
					<li class="mainContent3"><a href="../subPage/sub03/main/index.jsp" tabIndex="85">
						<div class="title">
							<p>[안양9동]파주운정3지구 A23BL 기관추천 특별공급 안내(다문화가족)</p>
						</div>
						<div class="txt">
							<p>* 아래 '기관추천 특별공급 안내문'을 참고하여 주시기 바라며, 특별공급 안내문 외 자세한 사항은 LH 청약센터(apply.lh.or.kr)에 게시 예정인 입주자 모집공고문을 참고하여 특별공급 신청접수일에 별도청약신청하여야 함을 안내드립니다.</p>
						</div>
						<span>2022.07.28</span>
					</a></li>			
					<li class="mainContent4"><a href="../subPage/sub04/main/index.jsp" tabIndex="86">
						<div class="title">
							<p>[안양4동]「인천 영종 A41블록 한신더휴 민간분양 사전청약」장애인 특별공급 안내</p>
						</div>
						<div class="txt">
							<p>○ 공급위치 : 인천광역시 중구 중산동 1913-10
							○ 신청기간 : ‘22. 8. 3.(수) ~ ‘22. 8. 8.(월) 18:00 방문 신청
							○ 문의전화 : 견본주택 및 분양문의 T.1533-0262
							
							※ 상기 세대수 및 분양일정은 예정사항으로 분양승인
							   내용에 따라 변경될 수 있음
							※ 「인천 영종 A41블록 한신더휴 민간분양 사전청약」 장애인 특별공급 배정내역을 알려드리오니 신청하실 분은 첨부된 문서를 확인하여 신청기간 내 주민센터 방문신청 하시기 바랍니다.</p>
						</div>
						<span>2022.07.27</span>
					</a></li>			
				</ul>
			</div>
			
			<div class="cityNews">
				<ul>
					<li class="mainContent1"><a href="../subPage/sub01/main/index.jsp" tabIndex="87">
						<div class="title">
							<p>「인천 영종 A41블록 한신더휴 민간분양 사전청약」 장애인 특별공급 안내</p>
						</div>
						<div class="txt">
							<p>「인천 영종 A41블록 한신더휴 민간분양 사전청약」 장애인 특별공급 안내

							○ 공급위치 : 인천광역시 중구 중산동 1913-10
							○ 신청기간 : ‘22. 8. 3.(수) ~ ‘22. 8. 8.(월) 18:00 주소지 관할 주민센터 방문 신청
							○ 입주자 모집공고 예정일: '22. 08. 12.(금) 예정
							○ 문의전화 : 견본주택 및 분양문의 T.1533-0262

							※ 세대수 및 분양일정은 예정사항으로 분양승인내용에 따라 변경될 수 있음</p>
						</div>
						<span>2022.07.27</span>
					</a></li>					
					<li class="mainContent2"><a href="../subPage/sub02/main/index.jsp" tabIndex="88">
						<div class="title">
							<p>2022 안양시민학당(제7강~제9강) 안내</p>
						</div>
						<div class="txt">
							<p>「2022 안양시민학당(제7강~제9강)」을 아래와 같이 운영하니 관심 있는 분들의 참여바랍니다.</p>
						</div>
						<span>2022.07.27</span>
					</a></li>					
					<li class="mainContent3"><a href="../subPage/sub03/main/index.jsp" tabIndex="89">
						<div class="title">
							<p>파주운정3 특별공급 안내(다문화가족)</p>
						</div>
						<div class="txt">
							<p>파주운정3 특별공급(다문화가족)을 안내하오니 참고하시기 바랍니다.</p>
						</div>
						<span>2022.07.27</span>
					</a></li>					
					<li class="mainContent4"><a href="../subPage/sub04/main/index.jsp" tabIndex="90">
						<div class="title">
							<p>안양시 「월간 기업정보」 8월호</p>
						</div>
						<div class="txt">
							<p>‣ 구성내용 
							 - 기업체 주요 동향 및 공장 등록 현황
							 - 유관 기관 주요 동향
							  → 산업진흥원, 지식산업센터
							 - 기업 자금지원 관련 정보
							 - 지식산업센터 분양 정보, 현황도
							 - 2022. 1분기 소상공인 손실보상 신청
							 - 2022. 안양시 소상공인 창업 입문 2차 컨설팅 신청자 모집
						   
							○ 문    의 : 기업경제과 김소영(8045-2285)</p>
						</div>
						<span>2022.07.26</span>
					</a></li>				
				</ul>
			</div>
			
			<div class="publicNews">
				<ul>
					<li class="mainContent1"><a href="../subPage/sub01/main/index.jsp" tabIndex="91">
						<div class="title">
							<p>삼성천 보 수위 관찰용 CCTV 설치를 위한 행정예고</p>
						</div>
						<div class="txt">
							<p>삼성천 보 수위 관찰용 CCTV 설치를 위한 행정예고
							<br/>>> 상세페이지로 이동
							</p>
						</div>
						<span>2022.07.28</span>
					</a></li>					
					<li class="mainContent2"><a href="../subPage/sub02/main/index.jsp" tabIndex="92">
						<div class="title">
							<p>미등록 이륜자동차 운행 및 과태료 처분 사전통지서 공시...</p>
						</div>
						<div class="txt">
							<p>미등록 이륜자동차 운행 및 과태료 처분 사전통지서 공시...
							<br/>>> 상세페이지로 이동
							</p>
						</div>
						<span>2022.07.28</span>
					</a></li>				
					<li class="mainContent3"><a href="../subPage/sub03/main/index.jsp" tabIndex="93">
						<div class="title">
							<p>장애인주차구역 위반차량 과태료처분에 대한 사전통보 공시...</p>
						</div>
						<div class="txt">
							<p>장애인주차구역 위반차량 과태료처분에 대한 사전통보 공시...
							<br/>>> 상세페이지로 이동
							</p>
						</div>
						<span>2022.07.28</span>
					</a></li>					
					<li class="mainContent4"><a href="../subPage/sub04/main/index.jsp" tabIndex="94">
						<div class="title">
							<p>담배소매업 폐업에 따른 담배소매인 지정신청 공고</p>
						</div>
						<div class="txt">
							<p>담배소매업 폐업에 따른 담배소매인 지정신청 공고
							<br/>>> 상세페이지로 이동
							</p>
						</div>
						<span>2022.07.28</span>
					</a></li>				
				</ul>
			</div>
			
		</div>
	</section>
	<section id="covidWrap" class="cf">
		<div id="covidTitle">
			<h2>안양시<span>코로나 19</span></h2>
			<p>2022. 7. 17. 00시 기준</p>
			<div class="viewDetails"><div class="detailsBtn"><span class="txt">자세히</span><a href="../subPage/sub03/main/index.jsp" tabIndex="95"><span class="plus">+</span></a></div></div>
		</div>
		<div id="covidInfo" class="cf">
			<div id="covidSituation" class="fl">
				<h3><span>상<br/>황<br/>알<br/>림</span></h3>
				<div class="covidSituationInner">
					<ul>
						<li>
							<span>확진</span>
							<p class="divLine">-</p>
							<p>209,859</p>
							<span class="confirmedIncrease">+504</span>
						</li>
						<li>
							<div class="dotImg"></div>
							<span>퇴원</span>
							<p class="divLine">-</p>
							<p>207,271</p>
							<span class="dischargeIncrease">+165</span>
						</li>
						<li>
							<div class="dotImg"></div>
							<span>치료중</span>
							<p class="divLine">-</p>
							<p>2,391</p>
							<span class="cureIncrease">+339</span>
						</li>
						<li>
							<div class="dotImg"></div>
							<span>사망</span>
							<p class="divLine">-</p>
							<p>197</p>
							<span class="deadIncrease">-</span>
						</li>
					</ul>
				</div>
			</div>
			<div id="covidVaccine" class="fl">
				<h3><span>백<br/>신<br/>접<br/>종</span></h3>
				<div class="covidVacInner fl">
					<div class="vacTitle">
						<span>1차</span>
						<span>2차</span>
						<span>3차</span>
					</div>
					<ul>
						<li class="vacTarget">
							<div class="vacTargetFisrt">
								<span class="targetTitleFst">대상</span>
								<p>543,480</p>
							</div>
							<div class="vacTargetSecond">
								<span class="targetTitleSnd">대상</span>
								<p>543,480</p>
							</div>
							<div class="vacTargetThird">
								<span class="targetTitleTrd">대상</span>
								<p>543,480</p>
							</div>	
						</li>
						<li class="vacInoculation">
							<div class="vacInocFirst">
								<div class="dotImg"></div>
								<span class="inocTitleFst">접종</span>
								<p class="inocNum">473,285</p>
								<p class="inocIncrease">0</p>
							</div>
							<div class="vacInocSecond">								
								<span class="inocTitleSnd">접종</span>
								<p class="inocNumSecond">468,984</p>
								<p class="inocIncrease">0</p>
							</div>
							<div class="vacInocThird">
								<span class="inocTitleTrd">접종</span>
								<p class="inocNumThird">345,326</p>
								<p class="inocIncrease">0</p>
							</div>	
						</li>
						<li class="vacInocRate">
							<div class="vacInocRateFirst">
								<div class="dotImg"></div>
								<span class="inocRateTitleFst">접종률</span>
								<p class="inocRate">87.1%</p>
							</div>
							<div class="vacInocRateSecond">
								<span class="inocRateTitleSnd">접종률</span>
								<p class="inocRateSecond">86.3%</p>
							</div>
							<div class="vacInocRateThird">
								<span class="targetTitleTrd">접종률</span>
								<p class="inocRateThird">63.5%</p>
							</div>	
						</li>
					</ul>					
				</div>			
			</div>
		</div>
	</section>
	<section id="snsContentsWrap">
		<div id="snsContentsTitle">
			<ul class="tabList">
				<li class="tabMenuTitle active">
					<button type="button" class="tabBtn">
						<span><b>SNS</b>소식</span>
					</button>
				</li>
				<li class="tabMenuTitle">
					<button type="button" class="tabBtn">
						<span class="notActive">청년</span>
					</button>
				</li>
				<li class="tabMenuTitle">
					<button type="button" class="tabBtn">
						<span class="notActive">일자리</span>
					</button>
				</li>
				<li class="tabMenuTitle">
					<button type="button" class="tabBtn">
						<span class="notActive">관광</span>
					</button>
				</li>
			</ul>
		</div>
		<div id="snsContents" class="cf">
			<div class="snsNews">
				<ul>
					<li>
						<div class="snsLeftContent fl">
							<div class="snsAnyang">
								<a href="../subPage/sub01/main/index.jsp" tabIndex="96">
									<div class="ayImgWrap"><div class="ayImg"></div><h4><span class="blind">안양SNS</span></h4></div>
									<span class="ayTitle">안양시농협 사랑의 쌀 전달식…</span>
									<p class="text">최근 행사소식 - 포토 갤러리</p>
									<p class="divLine"></p>
									<span class="date">2022.07.17</span>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>
						</div>
					</li>
					<li>
						<div class="snsMiddleContent fl">
							<div class="ytAnyang">
								<a href="../subPage/sub02/main/index.jsp" tabIndex="97">
									<div class="ytImgWrap"><div class="ytImg"></div><h4><span class="blind">안양유튜브</span></h4></div>
									<span class="ytTitle">[2022 안양시민학당] 그리스 로마 신화에서…</span>
									<p class="text">[2022 안양시민학당] 그리스 로마 신화에서 배우는 삶의 지혜｜김헌 교수</p>
									<p class="divLine"></p>
									<span class="date">2022.07.15</span>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>
						</div>
					</li>
					<li>
						<div class="snsRightContent fl">
							<div class="ayNewsletter">
								<a href="../subPage/sub03/main/index.jsp" tabIndex="98">
									<div class="nlImgWrap"><div class="nlImg"></div><h4><span class="blind">안양뉴스레터</span></h4></div>
									<span class="newsletterTitle">안양 소식지</span>
									<p class="text">우리안양 eBook 2022년 7월호</p>
									<p class="divLine"></p>
									<span class="date">2022년 7월호</span>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
				</ul>
			</div>
			
			<div class="youthNews">
				<ul>
					<li>
						<div class="youthFirstContent fl">
							<div class="youthContent">
								<a href="../subPage/sub01/main/index.jsp" tabIndex="99">
									<span class="youthTitle">청년창업펀드</span>
									<p class="divLine"></p>
									<p class="text">관내 우수한 청년·초기기업을 발굴하여 직접 투자</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>		
					<li>
						<div class="youthSecondContent fl">
							<div class="youthContent">
								<a href="../subPage/sub02/main/index.jsp" tabIndex="100">
									<span class="youthTitle">인터레스트 지원사업</span>
									<p class="divLine"></p>
									<p class="text">청년들의 주거비 경감 지원 사업</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>	
						</div>
					</li>
					<li>
						<div class="youthThirdContent fl">
							<div class="youthContent">
								<a href="../subPage/sub03/main/index.jsp" tabIndex="101">
									<span class="youthTitle">범계역 청년출구</span>
									<p class="divLine"></p>
									<p class="text">청년들이 미래를 설계할 수 있는 활동 공간</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>	
					<li>
						<div class="youthFourthContent fl">
							<div class="youthContent">
								<a href="../subPage/sub04/main/index.jsp" tabIndex="102">
									<span class="youthTitle">안양시 청년정책</span>
									<p class="divLine"></p>
									<p class="text">안양청년광장 홈페이지 바로가기</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
				</ul>		
			</div>
			
			<div class="jobNews">
				<ul>
					<li>
						<div class="jobFirstContent fl">
							<div class="jobContent">
								<a href="../subPage/sub01/main/index.jsp" tabIndex="103">
									<span class="youthTitle">안양맨투맨컨설팅</span>
									<p class="divLine"></p>
									<p class="text">1:1 입사서류 컨설팅을 통해 구직서류 및 면접역량 강화를 위한 온 · 오프라인 상담 지원</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>					
					<li>
						<div class="jobSecondContent fl">
							<div class="jobContent">
								<a href="../subPage/sub02/main/index.jsp" tabIndex="104">
									<span class="youthTitle">AI/VR 면접체험</span>
									<p class="divLine"></p>
									<p class="text">면접트렌드를 반영하고 구직자가 AI·VR 전용공간에서 스스로 면접 실전트레이닝 가능하도록 지원</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>					
					<li>
						<div class="jobThirdContent fl">
							<div class="jobContent">
								<a href="../subPage/sub03/main/index.jsp" tabIndex="105">
									<span class="youthTitle">안양청년옷장</span>
									<p class="divLine"></p>
									<p class="text">정장 구입에 대한 부담없이 자신감을 가지고 면접에 임하여 취업에 성공할 수 있도록 정장 무료대여 지원</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>					
					<li>
						<div class="jobFourthContent fl">
							<div class="jobContent">
								<a href="../subPage/sub04/main/index.jsp" tabIndex="106">
									<span class="youthTitle">안양시 일자리정책</span>
									<p class="divLine"></p>
									<p class="text">안양시 일자리센터 홈페이지<br/><br/>바로가기</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
				</ul>					
			</div>
			
			<div class="tourNews">
				<ul>
					<li>
						<div class="tourFirstContent fl">
							<div class="tourContent">
								<a href="../subPage/sub01/main/index.jsp" tabIndex="107">
									<span class="tourTitle">안양9경</span>
									<p class="divLine"></p>
									<p class="text">17년만에 재지정된 안양9경 <br/><br/>둘러보기</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
					<li>
						<div class="tourSecondContent fl">
							<div class="tourContent">
								<a href="../subPage/sub02/main/index.jsp" tabIndex="108">
									<span class="tourTitle">안양예술공원</span>
									<p class="divLine"></p>
									<p class="text">예술·자연·역사·맛이 공존하는 안양예술공원</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
					<li>
						<div class="tourThirdContent fl">
							<div class="tourContent">
								<a href="../subPage/sub03/main/index.jsp" tabIndex="109">
									<span class="tourTitle">APAP 트리엔날레</span>
									<p class="divLine"></p>
									<p class="text">안양을 배경으로 3년마다 열리는 국내 유일의 공공예술축제</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
					<li>
						<div class="tourFourthContent fl">
							<div class="tourContent">
								<a href="../subPage/sub04/main/index.jsp" tabIndex="110">
									<span class="tourTitle">360° 공공예술 VR여행</span>
									<p class="divLine"></p>
									<p class="text">앉아서 즐기는 360° 안양여행!</p>
									<div class="thumbnail"></div>
									<span class="more">+</span>
								</a>
							</div>				
						</div>
					</li>
				</ul>
			</div>
			
		</div>
	</section>
	<section id="newsWrap" class="cf">
		<div id="news">
			<div id="leftNews" class="fl">
				<div id="leftNewsTitle">
					<h2>안양<span>알림</span></h2>
				</div>
				<div id="leftNewsSlide">			
					<ul>
						<li class="topNews">
							<a href="../subPage/sub01/main/index.jsp" tabIndex="111" class="topNews1 on"></a>
							<a href="../subPage/sub02/main/index.jsp" tabIndex="112" class="topNews2"></a>
							<a href="../subPage/sub03/main/index.jsp" tabIndex="113" class="topNews3"></a>
							<a href="../subPage/sub04/main/index.jsp" tabIndex="114" class="topNews4"></a>
							<a href="../subPage/sub01/main/index.jsp" tabIndex="115" class="topNews5"></a>
							<a href="../subPage/sub02/main/index.jsp" tabIndex="116" class="topNews6"></a>
							<a href="../subPage/sub03/main/index.jsp" tabIndex="117" class="topNews7"></a>
							<a href="../subPage/sub04/main/index.jsp" tabIndex="118" class="topNews8"></a>
							<a href="../subPage/sub01/main/index.jsp" tabIndex="119" class="topNews9"></a>
						</li>
						<li class="botNews">
							<a href="../subPage/sub02/main/index.jsp" tabIndex="120" class="botNews1 on"></a>
							<a href="../subPage/sub03/main/index.jsp" tabIndex="121" class="botNews2"></a>
							<a href="../subPage/sub04/main/index.jsp" tabIndex="122" class="botNews3"></a>
							<a href="../subPage/sub01/main/index.jsp" tabIndex="123" class="botNews4"></a>
							<a href="../subPage/sub02/main/index.jsp" tabIndex="124" class="botNews5"></a>
							<a href="../subPage/sub03/main/index.jsp" tabIndex="125" class="botNews6"></a>
							<a href="../subPage/sub04/main/index.jsp" tabIndex="126" class="botNews7"></a>
							<a href="../subPage/sub01/main/index.jsp" tabIndex="127" class="botNews8"></a>
							<a href="../subPage/sub02/main/index.jsp" tabIndex="128" class="botNews9"></a>
						</li>
					</ul>
				</div>
			</div>			
			<div id="middleNews" class="fl">
				<div id="midNewsTitle">
					<h2>안양<span>연락</span></h2>
				</div>
				<div id="contact">
					<div id="midTopNews">
						<h3>안양시 열린콜센터</h3>
						<p class="divLine"></p>
						<div class="numberBox">
							<p class="txt">평일 주간(09-18시)</p>
							<span class="num">031-8045-7000</span>
						</div>
					</div>
					<div id="midBotNews">
						<h3>만안구청 당직실</h3>
						<p class="divLine"></p>
						<div class="numberBox">
							<p class="txt">평일 야간(18-09시)<br/>토·일 / 공휴일</p>
							<span class="num">031-8045-3222</span>
						</div>
					</div>
				</div>
			</div>
			<div id="rightNews" class="fl">
				<div id="rightNewsTitle">
					<h2>유관기관소식</h2>
				</div>
				<ul>
					<li class="rightNewsContent">
						<a href="../subPage/sub01/main/index.jsp" tabIndex="129" class="on"><div class="contentOne"></div></a>
						<a href="../subPage/sub02/main/index.jsp" tabIndex="130"><div class="contentTwo"></div></a>
						<a href="../subPage/sub03/main/index.jsp" tabIndex="131"><div class="contentThree"></div></a>
						<a href="../subPage/sub04/main/index.jsp" tabIndex="132"><div class="contentFour"></div></a>
						<a href="../subPage/sub01/main/index.jsp" tabIndex="133"><div class="contentFive"></div></a>
						<a href="../subPage/sub02/main/index.jsp" tabIndex="134"><div class="contentSix"></div></a>
						<a href="../subPage/sub03/main/index.jsp" tabIndex="135"><div class="contentSeven"></div></a>
						<a href="../subPage/sub04/main/index.jsp" tabIndex="136"><div class="contentEight"></div></a>
					</li>
				</ul>
			</div>
		</div>
	</section>
	<section id="botContentsWrap">
		<h2 class="blind">하단 컨텐츠</h2>
		<div class="botContents">
			<div class="promotionWrap cf">
				<div class="promoBox1">
					<div class="box1Content">
						<h3 class="promoTitle">Facebook</h3>
						<a href="https://www.facebook.com/anyanglove/" tabIndex="137" target="_blank"><img src="../images/botFacebook.png" alt="방역지침종합안내메인" width="280" height="280"/></a>
						<p class="promoText">Facebook 더보기</p>
						<div class="boxConImg cf">
							<div class="boxImgDeco">
								<div class="boxImg">
									<a href="https://www.facebook.com/anyanglove/" tabIndex="138" target="_blank"><img src="../images/botFacebook2.png" alt="확진자및접촉자관리방안" width="280" height="280"/></a>
									<p class="promoImgText">안양의 색을 찾다</p>
								</div>
							</div>
							<div class="boxImgDeco">
								<div class="boxImg">
									<a href="https://www.facebook.com/anyanglove/" tabIndex="139" target="_blank"><img src="../images/botFacebook3.png" alt="진단검사체계" width="280" height="280"/></a>
									<p class="promoImgText">어린이 국가예방접종비 지원 사업</p>
								</div>
							</div>
							<div class="boxImgDeco">
								<div class="boxImg last">
									<a href="https://www.facebook.com/anyanglove/" tabIndex="140" target="_blank"><img src="../images/botFacebook4.png" alt="PCR우선순위대상" width="280" height="280"/></a>
									<p class="promoImgText">안양의 힐링 포레스트</p>
								</div>
							</div>							
						</div>
					</div>
				</div>
				<div class="promoBox2">
					<div class="box2Content">
						<h3 class="promoTitle">Instagram</h3>
						<a href="https://www.instagram.com/anyang_city/?hl=ko" tabIndex="141" target="_blank"><img src="../images/botInsta.png" alt="방역지침종합안내메인" width="280" height="280"/></a>
						<p class="promoText">Instagram 더보기</p>
						<div class="boxConImg cf">
							<div class="boxImgDeco">
								<div class="boxImg">
									<a href="https://www.instagram.com/anyang_city/?hl=ko" tabIndex="142" target="_blank"><img src="../images/botInsta2.png" alt="확진자및접촉자관리방안" width="280" height="280"/></a>
									<p class="promoImgText">재택치료 개편사항</p>
								</div>
							</div>
							<div class="boxImgDeco">
								<div class="boxImg">
									<a href="https://www.instagram.com/anyang_city/?hl=ko" tabIndex="143" target="_blank"><img src="../images/botInsta3.png" alt="진단검사체계" width="280" height="280"/></a>
									<p class="promoImgText">알뜰교통카드</p>
								</div>
							</div>
							<div class="boxImgDeco">
								<div class="boxImg last">
									<a href="https://www.instagram.com/anyang_city/?hl=ko" tabIndex="144" target="_blank"><img src="../images/botInsta4.png" alt="PCR우선순위대상" width="280" height="280"/></a>
									<p class="promoImgText">먹는 치료제</p>
								</div>
							</div>							
						</div>
					</div>
				</div>
				<div class="promoBox3">
					<div class="box3Content">
						<h3 class="promoTitle">Youtube</h3>
						<iframe width="280" height="280" src="https://www.youtube.com/embed/ifFRNL9oFFo" title="YouTube video player" style="border:0;" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<p class="promoText">Youtube 더보기</p>
						<div class="boxConImg cf">
							<div class="boxImgDeco">
								<div class="boxImg">
									<iframe width="280" height="280" src="https://www.youtube.com/embed/RfIafu0D3js" title="YouTube video player" style="border:0;" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									<p class="promoImgText">보이스피싱 전달책 검거하는 시민?</p>
								</div>
							</div>
							<div class="boxImgDeco">
								<div class="boxImg">
									<iframe width="280" height="280" src="https://www.youtube.com/embed/RSE651z4Bwc" title="YouTube video player" style="border:0;" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									<p class="promoImgText">기후대응에 앞장서는 안양시</p>
								</div>
							</div>
							<div class="boxImgDeco">
								<div class="boxImg last">
									<iframe width="280" height="280" src="https://www.youtube.com/embed/ZoKs5D9yxvk" title="YouTube video player" style="border:0;" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									<p class="promoImgText">역시 ‘청년’특별도시 안양시</p>
								</div>
							</div>							
						</div>
					</div>				
				</div>
				<div class="promoBox4">
					<div class="box4Content">
						<h3 class="promoTitle">날씨</h3>
						<div class="todayWeather">
							<span class="todayTitle">안양시 날씨</span>
							<div class="weatherIconBg cf">
								<img class="todayWeatherIcon fl" src="../images/weather/01d.png" alt="오늘날씨이미지"/>
								<span class="todayTempText fl">&#8451;</span>
							</div>
							<div class="weatherTextBox cf">
								<p class="todayDateText"></p>
								<span class="todayMinTempText fl">&#8451; </span>
								<span class="todayMaxTempText fr">&#8451; </span>
								<span class="todayFeelTempText fl">&#8451;</span>
								<span class="todayHumidityText fr"></span>
							</div>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</section>
	<section id="bannerCompWrap">
		<h2 class="blind">배너모음</h2>
		<div id="bannerComp">
			<div class="bannerTitle"></div>
			<div class="bannerMenu">
				<ul>
					<li><a href="../subPage/sub01/main/index.jsp" tabIndex="145">공유누리</a></li>
					<li><div class="divDot"></div></li>
					<li><a href="../subPage/sub02/main/index.jsp" tabIndex="146">정부/지자체 조직도</a></li>
					<li><div class="divDot"></div></li>
					<li><a href="../subPage/sub03/main/index.jsp" tabIndex="147">경기도 민생범죄통계</a></li>
					<li><div class="divDot"></div></li>
					<li><a href="../subPage/sub04/main/index.jsp" tabIndex="148">당번약국</a></li>
					<li><div class="divDot"></div></li>
					<li><a href="../subPage/sub01/main/index.jsp" tabIndex="149">정부24</a></li>
					<li><div class="divDot"></div></li>
					<li><a href="../subPage/sub02/main/index.jsp" tabIndex="150">위택스</a></li>
					<li><div class="divDot"></div></li>
					<li><a href="../subPage/sub03/main/index.jsp" tabIndex="151">성범죄자 알림e</a></li>				
				</ul>
			</div>
			<div class="bannerControl">
				<button type="button" class="prevButton"></button>
				<button type="button" class="autoButton"></button>
				<button type="button" class="nextButton"></button>
			</div>
		</div>
		<button class="fBtn icon-arrow-down"></button>
		<button class="fBtn2 icon-arrow-down"></button>
	</section>
	
	<%@ include file="footer_login.jsp" %>
</body>
</html>