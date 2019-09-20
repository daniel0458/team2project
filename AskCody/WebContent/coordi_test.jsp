<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title> Welcome AskCody </title>
<style type="text/css">
	.chang{
		width:500px;
		height:500px;
		border: 2px solid gray;
		float: left;
		margin: 20px;
	}
	#img{
		width: 100px;
		height: 100px;
		margin: 5px;
	}
	.content{
		background-color: white;
		width: 110px;
		height: 110px;
		border: 1px solid gray; 
	}
	li{
		list-style: none;
	}
</style>
<script>
$(function(){
	$('#img').click(function () {
		//$('#img').hide(); test => 
		$('.content').draggable({revert:"invalid"});
	});
})


</script>
</head>

<body>
<%@include file="./temp/askcody_header.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->

<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->
<form action="" method="post">

	<div id="l" class="chang">
		
	</div>

	<div id ="r" class="chang">
	<ul>
		<li class="content"><img id="img" src="./img/jeans2.jpg"></li>
		<li class="content"><img id="img" src="./img/jeans.jpg"></li>
	</ul>
	</div>

</form>


<!-- 여기까지 본문내용 -->
</section>
<div style="clear: both;"></div>
</div>
<%@include file="./temp/askcody_footer.jsp" %>
</body>
</html>