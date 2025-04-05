<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
* {
	box-sizing: border-box;
}

body {
	font-family: "Indie Flower";
	line-height: 1.618em;
	background-color: #e4d4bb;
	background-image: repeating-radial-gradient(circle, #E4D4BB, #E7DAC6 50%, #E7DAC6 100%);
	background-size: 10px 10px;
}

img {
	width: 300px; /* 원하는 크기로 설정 */
	height: 200px; /* 원하는 크기로 설정 */
	object-fit: cover; /* 비율을 유지하면서 자르기 */
}

.wrapper {
	width: 80%;
	padding: 0 2rem;
	text-align: center;
}

.polaroid {
	background: #fff;
	padding: 1rem;
	box-shadow: 0 0.25rem 1rem rgba(0, 0, 0, 0.2);
}

.caption {
	font-size: 1.125rem;
	text	-align: center;
	line-height: 2em;
}

.item {
	display: inline-block;
	margin-top: 2rem;
	filter: grayscale(100%);
}

.item .polaroid:before {
	content: '';
	position: absolute;
	z-index: -1;
	transition: all 0.35s;
}

.item:nth-of-type(4n+1) {
	transform: scale(0.8, 0.8) rotate(5deg);
	transition: all 0.35s;
}

.item:nth-of-type(4n+1) .polaroid:before {
	transform: rotate(6deg);
	height: 20%;
	width: 47%;
	bottom: 30px;
	right: 12px;
	box-shadow: 0 2.1rem 2rem rgba(0, 0, 0, 0.4);
}

.item:nth-of-type(4n+2) {
	transform: scale(0.8, 0.8) rotate(-5deg);
	transition: all 0.35s;
}

.item:nth-of-type(4n+2) .polaroid:before {
	transform: rotate(-6deg);
	height: 20%;
	width: 47%;
	bottom: 30px;
	left: 12px;
	box-shadow: 0 2.1rem 2rem rgba(0, 0, 0, 0.4);
}

.item:nth-of-type(4n+4) {
	transform: scale(0.8, 0.8) rotate(3deg);
	transition: all 0.35s;
}

.item:nth-of-type(4n+4) .polaroid:before {
	transform: rotate(4deg);
	height: 20%;
	width: 47%;
	bottom: 30px;
	right: 12px;
	box-shadow: 0 2.1rem 2rem rgba(0, 0, 0, 0.3);
}

.item:nth-of-type(4n+3) {
	transform: scale(0.8, 0.8) rotate(-3deg);
	transition: all 0.35s;
}

.item:nth-of-type(4n+3) .polaroid:before {
	transform: rotate(-4deg);
	height: 20%;
	width: 47%;
	bottom: 30px;
	left: 12px;
	box-shadow: 0 2.1rem 2rem rgba(0, 0, 0, 0.3);
}

.item:hover {
	filter: none;
	transform: scale(1, 1) rotate(0deg) !important;
	transition: all 0.35s;
}

.item:hover .polaroid:before {
	content: '';
	position: absolute;
	z-index: -1;
	transform: rotate(0deg);
	height: 90%;
	width: 90%;
	bottom: 0%;
	right: 5%;
	box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.2);
	transition: all 0.35s;
}

</style>

<body>
	<div class="wrapper">

		<div class="item">
			<div class="polaroid">
				<img
					src="${pageContext.request.contextPath}/resources/image/poppy.jpeg">
				<div class="caption">By 바둑이</div>
			</div>
		</div>

		<div class="item">
			<div class="polaroid">
				<img
					src="${pageContext.request.contextPath}/resources/image/poppy1.png">
				<div class="caption">By 코코</div>
			</div>
		</div>

		<div class="item">
			<div class="polaroid">
				<img
					src="${pageContext.request.contextPath}/resources/image/cat.jpg">
				<div class="caption">By 말랑</div>
			</div>
		</div>

		<div class="item">
			<div class="polaroid">
				<img
					src="${pageContext.request.contextPath}/resources/image/cat1.jpg">
				<div class="caption">By 너리</div>
			</div>
		</div>

		<div class="item">
			<div class="polaroid">
				<img
					src="${pageContext.request.contextPath}/resources/image/cat2.jpg">
				<div class="caption">By 젤리</div>
			</div>
		</div>

	</div>
</body>