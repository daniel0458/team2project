<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/helpme.css">
<title> Welcome AskCody </title>


</head>

<body>
<%@include file="./temp/header.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->

<br/>
<h1 id="title"> Look for Your AskCody </h1>

<form action="filterClothes.do" method="get">
<table>
	<tr>
		<td class="column1"> 필터항목</td>
		<td class="column2">
			<label><input type="radio" name="cloth_type" value="alltype"><span class="sbox">전체</span></label>
			<label><input type="radio" name="cloth_type" value="top"><span class="sbox">상의</span></label>
			<label><input type="radio" name="cloth_type" value="bottom"><span class="sbox">하의</span></label>
			<label><input type="radio" name="cloth_type" value="cap"><span class="sbox">모자</span></label>		
			<br/>
			<label><input type="radio" name="cloth_color" value="allcolor"><span class="sbox">전체</span></label>
			<label><input type="radio" name="cloth_color" value="black"><span class="sbox" style="color: black;">Black</span></label>
			<label><input type="radio" name="cloth_color" value="navy"><span class="sbox" style="color: navy;">Navy</span></label>
			<label><input type="radio" name="cloth_color" value="pink"><span class="sbox" style="color: rgb(254, 127, 206);">Pink</span></label>
			<label><input type="radio" name="cloth_color" value="white"><span class="sbox" style="color: silver;">White</span></label>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="search">
			<button type="submit" class="btnsearch" value="Ask Cody">Ask Cody</button>
		</td>
	</tr>
</table>


<!-- !PAGE CONTENT! -->
<div class="w3-padding" style="max-width:1200px; margin: 15px auto;">

<!-- First Photo Grid-->
<div class="w3-row-padding w3-padding-16 w3-center" id="">
<c:forEach var="data" items="${filteredlist}">
	<div class="w3-quarter">
		<a href="#">
			<img src="${data.image}" alt="" style="width:100%; height: 400px;">
		</a>
		<h3>The Perfect Sandwich, A Real NYC Classic</h3>
		<p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
</c:forEach>
</div>

<!-- Second Photo Grid-->

</div>
</form>

<!-- Pagination -->
<div class="w3-center w3-padding-32">
	<div class="w3-bar" id="paging">
		<a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
		<a href="#" class="w3-bar-item w3-black w3-button">1</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">5</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
	</div>
</div>

<div>
</div>


<!-- 여기까지 본문내용 -->
</section>
</div>
<div style="clear: both;"></div>
<%@include file="./temp/footer.jsp" %>
</body>
</html>