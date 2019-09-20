<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/askcody_post.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<title> Welcome AskCody </title>
</head>

<body>
<%@include file="./temp/header.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->


<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->
<div id="post">
	<div id=titlediv>
	<table>
	<tbody>
	<tr><td>
	<span id="title" >안녕하세요</span> 
	</td>
	<td class="bordertd">|</td>
	<td>
	<a id="golist" href="freeboard.jsp">목록으로</a>
	<a id="modify" href="modify.do">수정</a>
	<a id="delete" href="delete.do">삭제</a>
	</td>
	</tr>
	</tbody>
	</table>
	</div>
	<hr>
	<p>hello world</p>
</div>

<!-- 여기까지 본문내용 -->
</section>
</div>
<div style="clear: both;"></div>
<%@include file="./temp/footer.jsp" %>
</body>
</html>