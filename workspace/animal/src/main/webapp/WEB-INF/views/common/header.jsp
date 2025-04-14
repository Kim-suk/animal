<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>카테고리</title>

<body>
	<div class="right">
							<nav id="r_menu">
								<!-- 상단메뉴 -->
								<ul id="top_nav">
									<li class="list01"><a class="list"
										href="${contextPath }/main.do">HOME</a></li>
									<li class="list02"><a class="list"
										href="/bbs/board.php?bo_table=table13">HOSPITAL</a>
										<ul class="sub_ul1">
											<li><a href="${contextPath }/hospital/map.do">지도</a></li>
											<li><a href="${contextPath }/hospital/review.do">리뷰</a></li>
										</ul></li>
									<li class="list03"><a class="list"
											href="/sh_page/page10.php">CAT</a>
										<ul class="sub_ul2">
											<li class="mo over"><a
												href="${contextPath }/cat/cat_type.do">묘종</a></li>
											<li><a href="${contextPath }/cat/cat_kitten.do">어린
													고양이</a></li>
											<li><a href="${contextPath }/cat/cat_think.do">고양이를
													기를까 생각중이신가요?</a></li>

										</ul></li>
									<li class="list04"><a class="list"
										href="/bbs/board.php?bo_table=table42">DOG</a>
										<ul class="sub_ul3">
											<li class="mo over"><a
												href="${contextPath }/dog/dog_type.do">품종</a></li>
											<li><a href="${contextPath }/dog/dog_kitten.do">어린
													강아지</a></li>
											<li><a href="${contextPath }/dog/dog_think.do">강아지를
													기를까 생각중이신가요?</a></li>

										</ul></li>
									<li class="list04"><a class="list"
										href="/bbs/board.php?bo_table=table42"> ARTICLE</a>
										<ul class="sub_ul4">
											<li><a href="${contextPath}/board/Board.do">자유 게시판</a></li>
											<li><a href="${contextPath}/board/CatBoard.do">고양이
													게시판</a></li>
											<li><a href="${contextPath}/board/DogBoard.do">강아지
													게시판</a></li>
										</ul></li>
									<li class="list05"><a class="list"
										href="/bbs/board.php?bo_table=table42">PRODUCT</a>
										<ul class="sub_ul5">
											<li><a href="${contextPath }/cat_product/cat_all.do">전체</a></li>
											<li><a href="${contextPath }/cat_product/cat_feed.do">사료</a></li>
											<li><a href="${contextPath }/cat_product/cat_treat.do">간식</a></li>
											<li><a href="${contextPath }/cat_product/cat_sand.do">모래</a></li>
											<li><a href="${contextPath }/cat_product/cat_carrier.do">이동장</a></li>
											<li><a href="${contextPath }/cat_product/cat_toy.do">장난감</a></li>
											<li><a href="${contextPath }/cat_product/cat_bath.do">목욕용품</a></li>
											<li><a href="${contextPath }/cat_product/cat_house.do">하우스</a></li>
											<li><a href="${contextPath }/cat_product/cat_dish.do">식기</a></li>
										</ul></li>

								</ul>
							</nav>
						</div>
		</header>
</body>
</html> --%>