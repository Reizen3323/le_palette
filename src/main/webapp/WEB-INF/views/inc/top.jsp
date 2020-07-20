<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/styles/index.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/styles/main.css'/>">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.5.1.js'/>"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$('.category-btn').hover(function(){
			$(this).css("background","#5edfdf");
			$('.category-hover').slideDown();
		},function(){			
			$(this).css("background","none");
			$('.category-hover').slideUp();
		});
		
		$('.big-category').hover(function(){
			$(this).css("color","#5edfdf");
			$(this).css("background","#d1edef");
			$(this).find(".small-category").show();
		},function(){			
			$(this).css("color","white");
			$(this).css("background","#5edfdf");
			$(this).find(".small-category").hide();
		});
		
		$('.small-category ul li').hover(function(){
			$(this).css("color","#5edfdf");
			$(this).css("background","#d1edef");
		},function(){			
			$(this).css("color","white");
			$(this).css("background","#5edfdf");
		});
		
	});
</script>
</head>
<body>
<div class="main-header">
	<div class="category-btn">
	    <button class="main-slide-menu"></button>
	    <div class="category-hover">
			 <ul>
			 <c:forEach var="i" items="${bigList }">
			 	<li>${i }
			 		<div>
			 			<ul>
			 				<c:forEach var="j" items="${smallList }">
								<li>${j }</li>
			 				</c:forEach>
			 			</ul>
			 		</div>
			 	</li>
			 </c:forEach>
			 	<li class="big-category">big cate1
			 		<div class="small-category">
			 			<ul>
				 			<li>small cate1</li>
				 			<li>small cate1</li>
				 			<li>small cate1</li>
				 			<li>small cate1</li>
				 			<li>small cate1</li>
				 			<li>small cate1</li>
				 			<li>small cate1</li>
			 			</ul>
			 		</div>
			 	</li>
			 	<li class="big-category">big cate2
			 		<div class="small-category">
			 			<ul>
				 			<li>small cate2</li>
				 			<li>small cate2</li>
				 			<li>small cate2</li>
				 			<li>small cate2</li>
				 			<li>small cate2</li>
				 			<li>small cate2</li>
			 			</ul>
			 		</div>
			 	</li>
			 	<li class="big-category">big cate3
			 		<div class="small-category">
			 			<ul>
				 			<li>small cate3</li>
				 			<li>small cate3</li>
				 			<li>small cate3</li>
				 			<li>small cate3</li>
				 			<li>small cate3</li>
			 			</ul>
			 		</div>
			 	</li>
			 </ul>
		</div>
	</div>
    <a href="#"><img alt="로고" src="<c:url value='/resources/icon/logo.PNG'/>"></a>
   	<form name="frmSearch" action="">
	    <div class="main-header-search">
		    <input class="main-header-search-text" type="text"/>
		    <input class="main-header-search-btn" type="submit" value=""/>
	    </div>
   	</form>
    <div class="main-header-icon">
      <button class="icon-login "></button>
      <button class="icon-myPage"></button>
      <button class="icon-favorit"></button>
    </div>
 </div>