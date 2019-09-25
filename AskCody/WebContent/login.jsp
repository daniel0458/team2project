<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<link rel="stylesheet" href="./css/login.css">
<title> Welcome AskCody </title>
</head>

<body>
<%@include file="./temp/header.jsp" %>
<h3>로그인</h3>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->
<form action="login.do" method="post" onsubmit="return check()"> <!-- action에는 서버에서 처리할 프로세서가 온다. 서블릿이나jsp 입력양식은 form으로 시작 --> 
	<!-- action에는 서버에서 처리할 프로세서가 온다. 서블릿이나jsp 입력양식은 form으로 시작 --> 
	<table border="1">
	<tr>
		<td> <label for="id"> ID</label> </td>  <!--  라벨을 클릭하면 포커즈가 위치하게 해준다. -->
		<td> <input type="text" id="id" name="id" value="${id}" /> </td> <!--id를 위한 로그인창 --> 
	</tr>	
	
	<tr>
	<td> <label for="pw"> PW</label> </td>
		<td> <input type="password" id="pw" name="pw" value="" /> </td> <!--id를 위한 로그인창 --> 
	</tr>	
		<tr>
	<td> <label for="ID/PW기억"> ID/PW기억</label> </td>
		<td> <input type="checkbox" d="remember" name="remember" value="" /> </td> <!--id를 위한 로그인창 --> 
	</tr>	
	<tr>
		
		<td colspan="2"> 
		<input type="submit"  id="lo" value="로그인">
		<input type="reset" id = "de" value="취소">
		
	 <a href="signup.jsp">회원 가입</a> 
	 <span style="color: red;">${msg}</span>
	 
		 </td>
		
	</tr>	
		
	</table>

</form>
<!-- 게시판 링크 수정은 askcody_header에서! -->
<!-- 여기에 본문 내용을 넣어주세요 -->


<!-- 여기까지 본문내용 -->
</section>
</div>
<%@include file="./temp/footer.jsp" %>
<script>
function check() {
		let id = document.querySelector("#id");
		let pw = document.querySelector("#pw");
		
		
		if (id.value.trim().length < 5 ) {
			alert("ID 5글자 이상 입력하세요.")
			id.focus();
			return false;
		}
		return true;
}
</script>
</body>
</html>