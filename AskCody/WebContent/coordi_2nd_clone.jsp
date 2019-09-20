<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
 <style>
  #sortable, #basic { 
  	list-style-type: none; 
  	margin: 20px; 
  	padding: 0; 
  	margin-bottom: 10px; 
  	width: 400px;
  	height: 400px;
  	border:2px solid black;
  	float: left;
  	}
  li { 
  margin: 5px; 
  padding: 5px; 
  width: 150px; 
  }
  #img{
  	width: 100px;
  	height: 100px;
  }
  </style>
<title> Welcome AskCody </title>
  <script>
  $( function() {
    $( "#sortable" ).sortable({
      revert: true
    });
    $("#img").resizable();
    $( "#draggable1,#draggable2" ).draggable({
      connectToSortable: "#sortable",
      helper: "clone",
      revert: "invalid"
    });
    $( "ul, li" ).disableSelection();
  } );
  </script>

</head>

<body>
<%@include file="./temp/askcody_header.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->

<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->
<ul id="basic">
  <li id="draggable1" class="ui-state-highlight"><img id ="img" src="./img/반팔-6.jpg"></li>
  <li id="draggable2" class="ui-state-highlight"><img id ="img" src="./img/슬랙스-10.jpg"></li>
</ul>
 
<ul id="sortable">
  <li class="ui-state-default">Item 1</li>
</ul>


<!-- 여기까지 본문내용 -->
</section>
<div style="clear: both;"></div>
</div>
<%@include file="./temp/askcody_footer.jsp" %>
</body>
</html>