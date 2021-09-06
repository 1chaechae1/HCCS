<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- footer -->
<div id="footer">
  <div class="footerInner">
    <h1 class="logo">
    </h1>
    <ul class="fnb clearfix">
      <li><a target="_blank" title="새창에서 열림">개인정보처리방침</a></li>
     <br> <li><a>제작자 - 김선철 이지훈 이정민 임채현</a></li>
    </ul>
    <div class="addr">
      <address>
        [TEST] (11111) 서울시 ㅁㅁㅁ ㅁㅁㅁ ㅁㅁㅁ 123-123 | TEL 123-123-1234 | FAX 111-111-1111
      </address>
      <cite>Copyright ⓒ web programing</cite>
    </div>
  </div>
</div>
  
  <script type="text/javascript">   
  $("#gnb > li > ul > li > a").each(function(i,v){
      $(v).removeClass("current")
  })
  $("#lnb > li > a").each(function(i,v){
   $(v).removeClass('current'); 
  })  
  initMenu(6, <%=request.getAttribute("categoryNum") %>+1, 0, 0, 0);
  $(function() {
    $("#btnTopScroll").click(function() {
      $("body,html").animate({
        scrollTop : 0
      }, 300);
      return false;
    });
  });
  </script>
<!-- //footer -->