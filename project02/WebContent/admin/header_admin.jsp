<!-- 로그인 했을 때 header -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<fmt:setLocale value="${param.lo}" />
		<fmt:bundle basename="resource.member">
    
<%
	request.setCharacterEncoding("utf-8");
	String userId = (String) session.getAttribute("login_id");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<div id="gnbWrap">
			<div id="gnb">
				<ul class="gnbLeft">
					<li class="first"><a href="${contextPath}/subPage/sub01/main/index.jsp" tabIndex="1"><fmt:message key="menu.gnb1"/></a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="2"><fmt:message key="menu.gnb2"/></a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="3"><fmt:message key="menu.gnb3"/></a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="4"><fmt:message key="menu.gnb4"/></a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li class="last"><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="5"><fmt:message key="menu.gnb5"/>&nbsp;&or;</a></li>
				</ul>
				<ul class="gnbRight">
					<c:set var="URI" value="${pageContext.request.requestURI}" />
					<c:if test="${URI == '/project02/subPage/sub01/main/index.jsp'}">
					<li><a href="/project02/board/listArticlesLogin.do?lo=en">English</a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="/project02/board/listArticlesLogin.do?lo=ko">한국어</a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					</c:if>
					<c:if test="${URI != '/project02/subPage/sub01/main/index.jsp'}">
					<li><a href="index.jsp?lo=en">English</a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="index.jsp?lo=ko">한국어</a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					</c:if>
					<li><a href="${contextPath}/member/listMembers.do" tabIndex="7"><fmt:message key="menu.gnb9"/></a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="${contextPath}/index.jsp" tabIndex="7"><fmt:message key="menu.gnb8"/></a></li>
					<li>&nbsp;&middot;&nbsp;</li>
					<li><a href="${contextPath}/member/listMembers.do" tabIndex="6"><%= userId %>(관리자)님</a></li>
				</ul>
			</div>
		</div>		
		<div id="logoMenuWrap">
			<div id="menuWrap" class="cf">
				<div id="logo" class="fl">
					<a href="${contextPath}/main/index.jsp" tabIndex="9" class="showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;만안구청 홈페이지로 이동합니다."><div class="logoImg"></div><span class="logoTitle">만안구청</span></a>
				</div>
				<div id="menuTitle" class="fl">
					<ul>
						<li class="margin70 oneDepth1"><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="10" class="showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;만안구 소개">만안구소개</a>
							<div class="twoDepthWrap">
								<div class="twoDepthText">
									<ul class="twoDepth1">
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="11">구청장실</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="12">지명유래</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="13">행정구역변천사</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="14">일반현황</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="15">조직 및 업무</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="16">주요전화번호</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="17">청사안내도</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="18">오시는길</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="19">만안구관내도</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="margin70 oneDepth2"><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="20" class="showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종합민원실">종합민원실</a>
							<div class="twoDepthWrap">
								<div class="twoDepthText">
									<ul class="twoDepth2">
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="21">민원신청</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="22">민원발급</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="23">민원안내</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="24">부동산중개업소 자율점검</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="margin70 oneDepth3"><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="25" class="showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;행정복지센터">행정복지센터</a>
							<div class="twoDepthWrap">
								<div class="twoDepthText">
									<ul class="twoDepth3">
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="26">안양1동</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="27">안양2동</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="28">안양3동</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="29">안양4동</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="30">안양5동</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="31">안양6동</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="32">안양7동</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="33">안양8동</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="34">안양9동</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="35">석수1동</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="36">석수2동</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="37">석수3동</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="38">박달1동</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="39">박달2동</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="margin70 oneDepth4"><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="40" class="showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;열린광장">열린광장</a>
							<div class="twoDepthWrap">
								<div class="twoDepthText">
									<ul class="twoDepth4">
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="41">새소식</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="42">시청소식</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="43">동소식 모아보기</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="44">부서장 업무추진비 공개</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="45">행정정보 사전공표 자료실</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="46">고시/공고</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="47">사진소식</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="margin70 oneDepth5"><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="48" class="showBalloon" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;분야별정보">분야별정보</a>
							<div class="twoDepthWrap">
								<div class="twoDepthText">
									<ul class="twoDepth5">
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="49">소비자/경제</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="50">문화/관광/체육</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="51">복지</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="52">교육</a></li>
										<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="53">환경/보건/위생</a></li>
										<li><a href="${contextPath}/subPage/sub04/main/index.jsp" tabIndex="54">재난/안전</a></li>
										<li><a href="${contextPath}/subPage/sub02/main/index.jsp" tabIndex="55">교통</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="${contextPath}/subPage/sub03/main/index.jsp" tabIndex="56"><div class="sitemapImg"></div></a></li>
					</ul> 
				</div>
			</div>
		</div>
		</fmt:bundle>