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


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<title> Welcome AskCody </title>

<style type="text/css">

#search {
	text-align: center;
}

</style>

<script type="text/javascript">
$(function() {
	/*  */
	$('tr').click(function() {
		let postid = $(this).find('#post_id').text();
		//alert(postid);
		location.href='post.jsp';
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
					<th>사진여부</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="post_id">2</td>
					<td>홍길동</td>
					<td>안녕</td>
					<td>o</td>
					<td>19.09.11</td>
					<td>1</td>
				</tr>
			</tbody>
		</table>
		<a id="write_btn" class="btn btn-default pull-right" href="boardwriter.jsp"> 글쓰기 </a>
		<form id=search action="${pageContext.request.contextPath}/search.do" method="post">
    <table>
        <tr>
           <td>
              <select name="condition">
                  <option value="bookname">도서제목</option>
                  <option value="publisher">출판사</option>
              </select>
              <input type="text" name="keyword">
              <input type="submit" value="검색">
           </td>
        </tr>
    </table>
</form>
	</div>
<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->


<!-- 여기까지 본문내용 -->
</section>
</div>
<div style="clear: both;"></div>
<%@include file="./temp/footer.jsp" %>
</body>
</html>