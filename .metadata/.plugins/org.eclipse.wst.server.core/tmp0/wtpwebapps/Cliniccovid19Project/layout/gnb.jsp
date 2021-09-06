<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<header id="header">
  <div class="headerInner clearfix">
    <div class="siteMenuGroup clearfix">
      <div id="siteMenu" class="siteMenu">
        <ul class="memUtil clearfix">
          <li><a href="<%=request.getContextPath()%>/page.jsp">메인페이지</a></li>
        <c:choose>
          <c:when test="${sessionScope.id=='admin'}">
            <li><a class="nav-item nav-link" href="<%=request.getContextPath()%>/member?cmd=admin">관리자</a></li>
          </c:when>
        </c:choose>

          <li class="langs"><a href="#open" title="언어 선택" class="button">Language</a>
            <ul>
              <li id="kr" style="display: none;"><a href="https://www.seongnam.go.kr/health" title="새창에서 열림" target="_blank" class="kr">한국어</a></li>
            </ul></li>
          <c:choose>
            <c:when test="${empty sessionScope.id}">
              <li><a href="<%=request.getContextPath()%>/member/joinForm.jsp" class="gnbJoin">회원가입</a></li>
              <li><a href="<%=request.getContextPath()%>/member/loginForm.jsp" class="gnbLogin">로그인</a></li>
            </c:when>
            <c:otherwise>
              <li><a class="nav-item nav-link" href="<%=request.getContextPath()%>/member?cmd=member_update">회원정보</a></li>
              <li><a class="nav-item nav-link" href="<%=request.getContextPath()%>/member?cmd=member_logout">로그아웃</a></li>
            </c:otherwise>
          </c:choose>
        </ul>

      </div>
    </div>
    <h1 id="logo" class="Health">
      <a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/images/logo1.png" alt="테스트"></a>
    </h1>
    <!-- Top SearchBox -->
    <a href="#searchOpen" id="btnSearchTop" title="검색창 열기"><span>검색창열기</span></a>
    <div id="searchBoxArea" class="topSearch">
      <h2 class="blind">통합검색(X)</h2>
      <form name="wisenutForm" id="wisenutForm" action="/search/search.jsp">
        <fieldset>
          <legend class="blind">테스트청 통합검색 영역</legend>
          <div id="searchBox" class="searchBoxWrap">
            <div class="searchBox">
              <select name="collection" id="collection" title="검색방식선택" disabled>
                <option value="ALL" selected="selected">통합검색</option>
              </select>
              <div class="keywordInput">
                <label for="query" class="blind">검색어 입력(X)</label> <input type="text" name="query" id="query" class="schInput1" placeholder="검색어 입력(X)" style="ime-mode: active;" disabled>
              </div>
            </div>
          </div>
        </fieldset>
      </form>
    </div>
    <!-- //Top SearchBox -->
    <a href="#open" id="mobileIndexOpen"><span>메뉴 열기</span></a> <a href="#back" id="blackBG"><span class="blind">이전으로 돌아가기</span></a>
    <nav id="gnbNav">
      <div id="mobileIndexClose">
        <img src="<%=request.getContextPath()%>/images/logo.png" class="logo" alt="테스트"> <a href="#close" class="close"><span>메뉴 닫기</span></a>
      </div>
      <ul id="gnb" class="clearfix" style="overflow: hidden;">
        <li id="gnb1" class="health_top_menu"><a href="<%=request.getContextPath()%>/JSP20161552.jsp">코로나 현황</a>
          <ul style="display: none;">
         
          </ul></li>
        <li id="gnb2" class="health_top_menu"><a href="<%=request.getContextPath()%>/sctest/main_search.jsp">진료소 찾기</a>
          <ul style="display: none;">
            <li id="gnb2_1"><a href="<%=request.getContextPath()%>/sctest/Search_Center_tsc.jsp">임시선별진료소</a></li>
            <li id="gnb2_2"><a href="<%=request.getContextPath()%>/sctest/Search_Center_sc.jsp">선별진료소</a></li>
          </ul></li>
        <li id="gnb3" class="health_top_menu"><a href="<%=request.getContextPath()%>/reservation/reserveform.jsp">진료소 예약</a>
          <ul style="display: none;">
            <li id="gnb3_1"><a class="<%=request.getContextPath()%>/reservation/reserveform.jsp">선별진료소 예약</a></li>
          </ul></li>
      
        <li id="gnb6" class="health_top_menu fbC"><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=0">정보마당</a>
          <ul style="display: none;">
            <li id="gnb6_1"><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=0" class="current">새소식</a></li>
            <li id="gnb6_2"><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=1">자주묻는질문</a></li>
            <li id="gnb6_3"><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=2">민원상담실</a></li>
          </ul></li>
      </ul>
      <div id="submenuArea" style="display: none;"></div>
    </nav>
  </div>
</header>