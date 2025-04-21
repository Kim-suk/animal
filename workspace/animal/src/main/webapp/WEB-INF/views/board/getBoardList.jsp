<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/animal/resources/css/boardList.css">

<title>글 목록</title>
</head>
<body>
	<!-- 헤더 -->

	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="outwrap">
		<div class="inwrap">

			<!-- 게시글 컨테이너 -->
			<div class="w3-row-padding w3-margin-top"
				style="width: 90%; margin-left: 200px">
				<!-- 검색 시작 -->
				<div style="width: 77%;">
					<form action="getBoardList.do?category=${category}" method="post">
						<table id="card">
							<tr>
								<td>
									<div class="w3-row" style="width: 400px">
										<div class="w3-container w3-twothird">
											<input name="searchKeyword" type="text"
												placeholder="내용을 입력하세요  "
												class="w3-input w3-border w3-round-large"
												style="width: 260px" />
										</div>
										<div class="w3-container w3-third">
											<input type="submit" class="w3-button w3-round  w3-dark-gray"
												value="검색" />
										</div>
									</div>
								</td>
								<td id="td2"><c:if test="${sessionScope.loginId != null}">
										<button type="button"
											onclick="location.href='insertBoard.do?category=${category}'"
											class="w3-button w3-round w3-red">
											<img src="/animal/resources/image/edit.png"
												style="width: 15px; height: 15px">&nbsp;글쓰기
										</button>
									</c:if></td>
							</tr>
						</table>
					</form>
				</div>

				<!-- 카테고리 선택 -->
				<div>
					<c:choose>
						<c:when test="${category == 'hospital'}">
							<button class="w3-button w3-round w3-dark-gray">동물병원 게시판</button>
						</c:when>
						<c:when test="${category == 'free'}">
							<button class="w3-button w3-round w3-dark-gray">자유게시판</button>
						</c:when>
						<c:when test="${category == 'cat'}">
							<button class="w3-button w3-round w3-dark-gray">고양이게시판</button>
						</c:when>
						<c:when test="${category == 'dog'}">
							<button class="w3-button w3-round w3-dark-gray">강아지게시판</button>
						</c:when>
					</c:choose>
				</div>

				<!-- 게시글 리스트 -->
				<c:forEach items="${boardList }" var="board">
					<div class="w3-third" style="width: 350px; height: 350px">
						<div class="w3-card">
							<a href="getBoard.do?bno=${board.bno}&category=${category}">
								<img
								src="${pageContext.request.contextPath}/upload/${board.thumbnail}"
								class="w3-hover-opacity" style="width: 335px; height: 300px">
							</a>
							<div class="w3-container">
								<table id="card">
									<tr>
										<td><b>${board.title }</b></td>
										<td id="td2"><img
											src="/animal/resources/image/comment.png"
											style="width: 15px; height: 15px">&nbsp;${board.comment_count}&nbsp;&nbsp;
											<img src="/animal/resources/image/love.png"
											style="width: 15px; height: 15px">&nbsp;${board.like_it}
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<br>
			<br>
		</div>
	</div>
	<br>
	<br>
	<!-- 푸터 -->

</body>
</html>