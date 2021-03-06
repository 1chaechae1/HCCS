<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.cos.dto.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.cos.dao.BoardDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<%@ include file="/layout/header.jsp"%>
<body>
  <div id="wrap">
    <div id="topheader">
      <div id="indexColumn">
        <%@ include file="/layout/gnb.jsp"%>
      </div>
    </div>
    <div id="middle">
      <div id="contbody" class="clearfix">
        <%@ include file="/layout/lnb.jsp"%>
        <div id="contentcore" class="excludeSearch">
          <div class="naviandtitle">
            <h3>새소식</h3>
          </div>
          <div class="contents" id="contents">
            <div class="ttabWrap">
              <ul id="ttab3" class="tabType5 clearfix">
                <li></li>
              </ul>
            </div>
            <c:if test="${param.categoryNum != '0'}">
              <a href="<%=request.getContextPath()%>/board/writeForm.jsp?categoryNum=<%=request.getAttribute("categoryNum")%>" style="color: blue">글쓰기</a>
            </c:if>
            <form name="listForm" id="listForm" method="get" action="">
              <input type="hidden" name="currentPage" value="1"> <input type="hidden" name="searchSelect" value=""> <input type="hidden" name="searchWord" value=""> <input type="hidden" name="searchOrganDeptCd" value=""> <input type="hidden" name="searchCategory" value=""> <input type="hidden" name="idx" value="resultView.idx">
              <div class="boardWrap">
                <table class="board-list">
                  <caption>게시물 리스트</caption>
                  <colgroup>
                    <col style="width: 15%">
                    <col style="width: 40%">
                    <col style="width: 15%">
                    <col style="width: 15%">
                    <col style="width: 15%">                                        
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">제목</th>
                      <th scope="col">등록일</th>
                      <th scope="col">조회수</th>                      
                      <th scope="col">작성자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:if test="${!empty list}">
                      <a href="<%=request.getContextPath()%>/board?cmd=board_view&num=${item.num}" class="btn btn-primary">Read More &rarr;</a>
                      <c:forEach var="item" items="${list}">
                        <tr>
                          <td>${item.num}</td>
                          <td class="title"><a href="<%=request.getContextPath()%>/board?cmd=board_view&num=${item.num}"> ${item.title} </a></td>
                          <td>${item.writedate}</td>
                          <td>${item.readcount}</td>                          
                          <td>${item.username}</td>
                        </tr>
                      </c:forEach>
                    </c:if>
                    <c:if test="${empty list}">
                      <tr>
                        <td colspan='6'>글이 없습니다.</td>
                      </tr>
                    </c:if>
                  </tbody>
                </table>
              </div>
            </form>
            <!-- 페이징 -->
            <div class="pagingWrap">
              <p class="paging">
                <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
                  <c:choose>
                    <c:when test="${i eq paging.pageNo}">
                      <span class="current">${i }</span>
                    </c:when>
                    <c:otherwise>
                      <a href="#page" class="" onclick="javascript:PageMove(${i});">${i }</a>
                    </c:otherwise>
                  </c:choose>
                </c:forEach>
              </p>
            </div>
            <!-- //페이징 -->
            <!-- 게시물 검색 -->
            <form name="searchForm" id="searchForm" method="post" action="#">
              <input type="hidden" name="currentPage" id="searchCurPage" value="1"> <input type="hidden" name="idx" id="idx" value=""> <input type="hidden" name="searchCategory" value="">
              <div id="pageSearch">
                <div class="pageSearch">
                  <div class="schForm">
                    <select name="searchSelect" id="searchSelect" title="검색방식 선택" class="schSel">
                      <option value="title">제목</option>
                      <option value="contents">내용</option>
                      <option value="organ_dept_nm">작성부서</option>
                    </select> <input type="text" name="searchWord" id="searchWord" title="검색어 입력" value="" class="schKwd"> <span class="btn input themeBtn"><a href="#search" id="searchBtn">검색</a></span>
                  </div>
                </div>
              </div>
            </form>
            <!-- //게시물 검색 -->
            <!-- End Of the Real Contents-->
          </div>
          <a href="#body" id="btnTopScroll" title="상단으로 이동">TOP</a>
        </div>
      </div>
    </div>
    <%@ include file="/layout/footer.jsp"%>
  </div>
  <script type="text/javascript">     
  	function PageMove(page){
  		location.href = "<%=request.getContextPath()%>/board?cmd=board_list&page="+page+"&categoryNum="+<%=request.getAttribute("categoryNum")%>
  	}      
  	</script>
</body>
</html>