
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div id="contleft" class="contleft">
  <h2 class="gnb6">정보마당</h2>
  <div class="lnbWrap">
    <ul id="lnb" class="lnb">
      <li><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=0" class="current">새소식</a></li>
      <li><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=1">자주묻는질문</a></li>
      <li><a href="<%=request.getContextPath()%>/board?cmd=board_list&pageNum=0&categoryNum=2">민원상담실</a></li>
    </ul>
  </div>
</div>
