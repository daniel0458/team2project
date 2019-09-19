<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
  <style>
  #draggable, #draggable2, #draggable3 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0; }
  #droppable1,#droppable2 { width: 400px; height: 400px; padding: 0.5em; float: left; margin: 10px; }
  img{width: 100px; height: 100px;}
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#draggable" ).draggable({ revert: "valid" });
    $( "#draggable2" ).draggable({ revert: "invalid" });
    $( "#draggable3" ).draggable({ revert: "invalid" });
 
    $( "#droppable1, #droppable2" ).sortable({
        connectWith: ".connectedSortable"
      }).disableSelection();
    $('img').resizable();
    
    $( "#droppable1,#droppable2" ).droppable({
      classes: {
        "ui-droppable-active": "ui-state-active",
        "ui-droppable-hover": "ui-state-hover"
      },
      drop: function( event, ui ) {
        $( this )
          .addClass( "ui-state-highlight" )
          .find( "p" )
            .html( "코디북 만들기 시작" );
      }
    });
  } );
  </script>


<title> Welcome AskCody </title>
</head>

<body>
<%@include file="../common/askcody_header.jsp" %>
<div>

<section style="width: 100%; height: 100px;">
<!-- 여기에서부터 본문내용 시작 -->


<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->

<div id="droppable1" class="ui-widget-header">
  <p>여기에 옷을 놓아주세요</p>
</div>

<div id="droppable2" class="ui-widget-header">
	<div id="draggable2" class="ui-widget-content">
	  <img src="./img/da1.gif">
	</div>
	<div id="draggable3" class="ui-widget-content">
	  <img src="./img/da2.gif">
	</div>
</div>

<!-- 여기까지 본문내용 -->
</section>


</div>
<%@include file="../common/askcody_footer.jsp" %>
</body>
</html>