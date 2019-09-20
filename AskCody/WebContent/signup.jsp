<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="./css/askcody_cssTemplate.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>users form 처리</title>

<script type="text/javascript">
	const log = console.log;
	let xdata;
	$(function() {

		$('#id_check').click(function() {
			idcheck();
		});
	});

	function idcheck() {
		$.ajax({

			url : 'json/id_check.jsp',
			dataType : 'json',
			data : {
				id : $('#id').val()
			},
			success : function(data) {
			
				if (data.id == undefined) {
					$('#msg1').html('사용가능한아이디입니다.')
				} else {
					$('#msg1').html('사용중인아이디입니다.')
				}
			},
			error : function() {
				alert("error " + e);
			}

		});
	}
</script>
</head>
<body>
<%@include file="./temp/header.jsp" %>
	<h3>회원가입</h3>
	<form action="insertusers.do" method="post">
		<table border="1">
			<!-- 요즘엔 border 안쓴다. -->
			<tr>
				<td><label for="id"> ID</label></td>
				<td><input type="text" id="id" name="id" value="" /> <input
					type="button" value="ID중복체크" id="id_check"> <br> <span
					id="msg1" class="error"></span></td>
			</tr>

			<tr>
				<td><label for="password"> password</label></td>
				<td><input type="password" id="pw" name="password" value="" /></td>
				<!-- name은 로그인창에 변수같은것 이다. id는 users 객채 와 이름을 같게한다. -->
				<!-- value는 그창에 입력된 값 -->
			</tr>


			<tr>
				<td><label for="name"> name</label></td>
				<td><input type="text" id="name" name="user_name" value="" /></td>
			</tr>

			<tr>
				<td><label for="birthday"> birthday</label></td>
				<td><input type="date" min="1950-01-01" max="2018-01-01" name="birthday" value="" />
				</td>
			</tr>

			<tr>
				<td><label for="email"> email</label></td>
				<td><input type="text" name="email" value=""/> </label></td>
		
				</td>
			</tr>


			<tr>
				<td><label for="name"> role</label></td>
				<td><input type="radio" name="role" value="admin">admin
					<input type="radio" name="role" value="user">user</td>
			</tr>


			<tr>
				<td colspan="2"><input type="submit" value="회원가입"> <input
					type="reset" value="취소"></td>


				<td></td>
			</tr>
		</table>
	</form>
	<%@include file="./temp/footer.jsp" %>
</body>
</html>