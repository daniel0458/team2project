<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1">

<link rel="stylesheet" href="./css/askcody_cssTemplate.css">

<link rel="stylesheet" href="./css/askcody_singup.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>users form 처리</title>

<style type="text/css">
.error {
	color: red;
}

</style>
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


	$(function() {
		$('#pw').keyup(function(){
			$('#checkNotice').html('');
		});
		
		$('#pw_check').keyup(function(){
			
			if($('#pw').val() != $('#pw_check').val()) {
				$('#checkNotice').html('비밀번호 일치하지 않음');
				$('#checkNotice').attr('color', 'red');
			} else {
				$('#checkNotice').html('비밀번호 일치함');
				$('#checkNotice').attr('color', 'blue');
			}
		});
	});
	
	
</script>

</head>

<body>

	<%@include file="./temp/header.jsp"%>

	<h3>SingUp</h3>

	<h4>아래 사항을 기입해주세요.</h4>

	<form action="insertusers.do" method="post">

		<table border="2">

			<!-- 요즘엔 border 안쓴다. -->

			<td><label for="id"> ID</label></td>

			<td><input type="text" id="id" name="id" value="" /> 
			<input type="button" value="ID중복체크" id="id_check"> <br> 
			<span id="msg1" class="error"></span></td>

			</tr>

			<tr>

				<td><label for="password"> password</label></td>
				<td><input type="password" id="pw" name="password" value="" required="required" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{5,}"/></td> <br> 
				
			</tr>
			
			<tr>	
			
				<td><label for="password"> password_check</label></td>
				<td> <input type="password"  id="pw_check" value=""/> <br> <span
				id="msg5" class="error"></span> <font id="checkNotice" size="2"></font>
				</td>
				
			</tr>
				


			</tr>

			<tr>

				<td><label for="name"> name</label></td>

				<td><input type="text" id="name" name="user_name" value="" /></td>

			</tr>

			<tr>

				<td><label for="birthday"> birthday</label></td>

				<td><input type="date" min="1950-01-01" max="2018-01-01"
					name="birthday" value="" /></td>

			</tr>


			<tr>

				<td><label for="email"> email</label></td>

				<td><input type="text" name="email" value="" /> </label></td>

				</td>

			</tr>

			<tr>

				<td><label for="name"> role</label></td>

				<td><input type="radio" name="role" value="admin">admin

					<input type="radio" name="role" value="user">user</td>
			</tr>

			<tr>

				<td colspan="2"><input type="submit" id="s" value="회원가입">

					<input type="reset" id="u" value="취소"></td>
		</table>

	</form>

	<%@include file="./temp/footer.jsp"%>

</body>

</html>
</html>