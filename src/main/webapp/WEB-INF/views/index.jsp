<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/resources/js/banner.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/styles/banner.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/styles/index2.css'/>">
<div class="main-section">
	<div class="main-banner">
		<!-- Slideshow container -->
		<section class="slideshow-container">
		  <!-- Full-width images with number and caption text -->
		  <div class="mySlides fade">
		    <div class="numbertext">1 / 3</div>
		    <img src="<c:url value='/resources/images/img1.jpg'/>" style="width:1000px">
		    <div class="text">Caption Text</div>
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">2 / 3</div>
		    <img src="<c:url value='/resources/images/img2.jpg'/>" style="width:1000px">
		    <div class="text">Caption Two</div>
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">3 / 3</div>
		    <img src="<c:url value='/resources/images/img3.jpg'/>" style="width:1000px">
		    <div class="text">Caption Three</div>
		  </div>
		
		  <!-- Next and previous buttons -->
		  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		  <a class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>
		<br>
		
		<!-- The dots/circles -->
		<div style="text-align:center">
		  <span class="dot" onclick="currentSlide(1)"></span>
		  <span class="dot" onclick="currentSlide(2)"></span>
		  <span class="dot" onclick="currentSlide(3)"></span>
		</div>
	</section>
	</div>
	<div class="main-contents">
		<section class="sec-1 side-inner">
                    <div class="m-title">palette store</div>
                    <div class="more-link">
                    	<a href="#">더보기 ▶</a>
                    </div>
                    <ul class="product round">
                        <c:forEach begin="0" end="3">
                	        <li>
            	                <div class="ms-img"></div>
        	                    <div class="ms-text">[로티캠프] 접이식 에코 암체어 1+1 캠핑 낚시 의자/로티캠프</div>
    	                        <div class="ms-price">28,600<span>원</span></div>
	                        </li>
                        </c:forEach>
                    </ul>
         </section>
	</div>
<%@include file="inc/bottom.jsp"%>