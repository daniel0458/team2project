<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>

<div id="users">
	<span><a href="login.jsp" class="reg"> LOGIN </a></span> 
	<span><a href="signup.jsp" class="reg"> SIGN UP </a></span>
</div>
<br/>

<div id="logo">
	<a href="index.jsp">
		<img src="./img/logo.png" alt="로고">
	</a>
</div>
<br/>

<div id="dropdown">
	<ul>
		<li><a href="#" class="menu"> OOTD </a>
			<ul>
				<li><a href="gallery.jsp"> Gallery </a></li>
				<li><a href="#"> submenu2 </a></li>
				<li><a href="#"> submenu3 </a></li>
			</ul>
		</li>
		<li><a href="#" class="menu"> SELECT </a>
			<ul>
				<li><a href="choice.jsp"> Choice </a></li>
				<li><a href="#"> submenu2 </a></li>
				<li><a href="#"> submenu3 </a></li>
			</ul>
		</li>
		<li><a href="#" class="menu"> BOARD </a>
			<ul>
				<li><a href="#"> Notice </a></li>
				<li><a href="event.jsp"> Event </a></li>
				<li><a href="#"> FreeBoard </a></li>
			</ul>
		</li>
		<li><a href="#" class="menu"> ASKCODY </a>
			<ul>
				<li><a href="about.jsp"> About </a></li>
				<li><a href="growth.jsp"> Growth </a></li>
				<li><a href="location.jsp"> Location </a></li>
			</ul>
		</li>
	</ul>
</div>
<br/><br/>

<hr noshade/>
</header>