<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/layout/header.jsp"%>

<style>
	{margin:0;padding:0;}
	 
	.section input[id*="slide"] {display:none;}

	.section .slidewrap {max-width:1000px; height:500px;margin:0 auto;overflow:hidden;}
	.section .slidelist {white-space:nowrap;font-size:0;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative;}
	.section .slidelist > li > a img {width:100%;}

	.section .slidelist label {position:absolute;z-index:1;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {left:30px;background:url('left.png') center center / 100% no-repeat;}
	.section .slidelist .right {right:30px;background:url('right.png') center center / 100% no-repeat;}

	.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
	</style>

  <div id="wrap">
    <div id="topheader">
      <div id="indexColumn">
        <%@ include file="/layout/gnb.jsp"%>
      </div>
    </div>

	<section>
	<center>
	<iframe src="iframe.html" height="300" scrolling="no" overflow= "auto" width= 75% border=0></iframe>
	</center>
	</section>


<div class="section">
	<input type="radio" name="slibe" id="slide01" checked> 
	<input type="radio" name="slibe" id="slide02" >
	<input type="radio" name="slibe" id="slide03" >
	
	<div class="slidewrap">
		<ul class="slidelist">
			<li>
				<a>
					<label for="slide03" class="left"></label>
					<img src="poster.jpeg">
					<label for="slide02" class="right"></label>
				</a>
			</li>	
			<li>
				<a href="https://www.mfds.go.kr/vaccine_covid19.jsp">
					<label for="slide01" class="left"></label>
					<img src="vaccine.png">
					<label for="slide03" class="right"></label>
				</a>
			</li>	
			<li>
				<a href="https://coronaboard.kr/">
					<label for="slide02" class="left"></label>
					<img src="plate.png">
					<label for="slide01" class="right"></label>
				</a>
			</li>	
		</ul>
	</div>
</div>
    

    <%@ include file="/layout/footer.jsp"%>
  </div>
