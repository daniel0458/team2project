<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_login.css">
<title> AskCody - Login </title>
</head>

<body>
<br/><br/><br/>
<%@include file="../common/askcody_loginheader.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->


<br/>

<h2 id="title"> LOGIN </h2>

<br/><br/>

<form action="login.do" method="post" onsubmit="return check()">

	<table>
		<tr>
			<td><input type="text" id="id" name="id" value="${id}" placeholder="아이디"/></td>
		</tr>
		<tr>
			<td><input type="password" id="pw" name="pw" value="" placeholder="비밀번호"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="로그인" id="btnlogin"></td>
		<tr/>
	</table>

<hr class="midline"/>

<div class="signup">
	<a href="askcody_signup.html" id="btnsignup"> 회원가입 </a>
</div>

</form>

<br/><br/><br/>

<script>
function check(){
	let id = document.querySelector("#id");
	let pw = document.querySelector("#pw");
	
	if(id.value.trim().length < 5 ){
		alert("ID를 5글자 이상 입력하세요.");
		id.focus();
	}
}
</script>

<!-- 여기까지 본문내용 -->
</section>
</div>
<div style="clear: both;"></div>
<%@include file="../common/askcody_footer.jsp" %>
</body>
</html>