<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  .draggable{ width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0; }
  #droppable1, #droppable-container { width: 500px; height: 500px; padding: 0.5em; float: left; margin: 10px; }
  .img{width: 100px; height: 100px;}
  #main{
  	margin-left: 100px;
  }
  
  </style>

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  
  $( function() {
    $( "#droppable-container .draggable" ).draggable({ revert: "invalid", connectToSortable: "#droppable1", helper: "clone"});
 
    $( "#droppable1, #droppable-container" ).sortable({
        connectWith: ".connectedSortable"
      }).disableSelection();
    $('.img').resizable();
    
    $( "#droppable1,#droppable-container" ).droppable({
      classes: {
        "ui-droppable-active": "ui-state-active",
        "ui-droppable-hover": "ui-state-hover"
      },
      drop: function( event, ui ) {
        $( this )
          .addClass( "ui-state-highlight" )
          .find( "p" )
            .html( "코디북 만들기  시작!!!" );
      }
    });
  } );
  </script>


<title> Welcome AskCody </title>
</head>

<body>
<%@include file="../temp/header.jsp" %>



<div id="main">
<section>
<!-- 여기에서부터 본문내용 시작 -->


<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->
<form action="save.do" method="post">
<div id="droppable1" class="ui-widget-header">
  <p>여기에 옷을 놓아주세요</p>
</div>

<div id="droppable-container" class="ui-widget-header">
	<div class="draggable ui-widget-content">
	<input type="hidden" value="./img/반바지1.jpg" name="coordi_id[]" >
	  <img class="img" src="./img/반바지1.jpg">
	</div>
	<div class="draggable ui-widget-content">
	<input type="hidden" value="./img/반바지2.jpg" name="coordi_id[]" >
	  <img class="img" src="./img/반바지2.jpg">
	</div>
	<div class="draggable ui-widget-content">
	<input type="hidden" value="./img/반바지3.jpg" name="coordi_id[]" >
	  <img class="img" src="./img/반바지3.jpg">
	</div>
</div>
<input type="submit" value="저장">
<input type="reset" value="임시버튼">

<p><a href="./listcoordi.do">코디목록</a></p>
<p><a href="./save.do">코디저장</a>

<!-- 여기까지 본문내용 -->
</form>
</section>
<div style="clear: both;"></div>
</div>

<%@include file="../temp/footer.jsp" %>
</body>
</html>