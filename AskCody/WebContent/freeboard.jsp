<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>

<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<title> Welcome AskCody </title>

<style type="text/css">

#search {
	margin: auto;
}
#move {
	text-align: center;
}
</style>

<script type="text/javascript">
$(function() {
	/*  */
	$('.list').click(function() {
		let postid = $(this).find('#post_id').text();
		
		location.href='post.do?post_id='+postid;
	})
})

</script>

</head>

<body>
<%@include file="./temp/header.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->
<div id="main">
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<!-- <th>사진여부</th> -->
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="data" items="${boardlist}">
				<tr class="list">
					<td id="post_id">${data.post_id}</td>
					<td>${data.user_id}</td>
					<td>${data.title}</td>
					<%-- <td>${data.has_picture}</td>  --%>
					<td>${data.post_date}</td>
					<td>${data.count}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<p id=move>
		<a class="move_board" href="moveboard.do?keyword=${keyword}&condition=${condition}&board_num=1"><<&nbsp</a>
		<c:set var="list_num" value="${list_num}"/>
		<%
		int list_num = (int)pageContext.getAttribute("list_num");
			
		for(int i=1; i <= list_num;i++) { %>
			<a class="move_board" href="moveboard.do?keyword=${keyword}&condition=${condition}&board_num=<%=i%>"><%=i%></a>
		<%}%>
		<a class="move_board" href="moveboard.do?keyword=${keyword}&condition=${condition}&board_num=${list_num}">&nbsp>></a>
		</p>
		<br>		
		<a id="write_btn" class="btn btn-default pull-right" href="boardwriter.jsp"> 글쓰기 </a>
		<form action="${pageContext.request.contextPath}/board_search.do" method="post">
    <table id=search>
        <tr>
           <td>
              <select name="condition">
                  <option value="title">제목</option>
                  <option value="user_name">작성자</option>
              </select>
              <input type="text" name="keyword">
              <input type="submit" value="검색">
           </td>
        </tr>
    </table>
</form>
	</div>
<!-- 여기까지 본문내용 -->
</section>
</div>
<div style="clear: both;"></div>
<%@include file="./temp/footer.jsp" %>
</body>
</html>