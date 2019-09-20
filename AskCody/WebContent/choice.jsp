<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/askcody_choice.css">

<title> Welcome AskCody </title>
</head>

<body>
<%@include file="./temp/header.jsp" %>
<div>
<section>
<!-- 여기에서부터 본문내용 시작 -->


<!-- !PAGE CONTENT! -->
<div class="w3-padding" style="max-width:1200px; margin: 15px auto;">

<!-- First Photo Grid-->
<div class="w3-row-padding w3-padding-16 w3-center" id="food">
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans1.jpg" alt="Sandwich" style="width:100%">
		</a>
		<h3>The Perfect Sandwich, A Real NYC Classic</h3>
		<p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans2.jpg" alt="Steak" style="width:100%">
		</a>
		<h3>Let Me Tell You About This Steak</h3>
		<p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans3.jpg" alt="Cherries" style="width:100%">
		</a>
		<h3>Cherries, interrupted</h3>
		<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
		<p>What else?</p>
	</div>
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans4.jpg" alt="Pasta and Wine" style="width:100%">
		</a>
		<h3>Once Again, Robust Wine and Vegetable Pasta</h3>
		<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
</div>
  
<!-- Second Photo Grid-->
<div class="w3-row-padding w3-padding-16 w3-center" id="food">
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans3.jpg" alt="Sandwich" style="width:100%">
		</a>
		<h3>The Perfect Sandwich, A Real NYC Classic</h3>
		<p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans1.jpg" alt="Steak" style="width:100%">
		</a>
		<h3>Let Me Tell You About This Steak</h3>
		<p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans4.jpg" alt="Cherries" style="width:100%">
		</a>
		<h3>Cherries, interrupted</h3>
		<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
		<p>What else?</p>
	</div>
	<div class="w3-quarter">
		<a href="#">
			<img src="./img/jeans2.jpg" alt="Pasta and Wine" style="width:100%">
		</a>
		<h3>Once Again, Robust Wine and Vegetable Pasta</h3>
		<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
	</div>
</div>

</div>


<!-- Pagination -->
<div class="w3-center w3-padding-32">
	<div class="w3-bar">
		<a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
		<a href="#" class="w3-bar-item w3-black w3-button">1</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
	</div>
</div>


<!-- 여기까지 본문내용 -->
</section>
</div>
<div style="clear: both;"></div>
<%@include file="./temp/footer.jsp" %>
</body>
</html>