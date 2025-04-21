<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
    String currentURL = (String) request.getAttribute("javax.servlet.forward.request_uri");
    String queryString = request.getQueryString();
    String fullURL = currentURL;
    if (queryString != null) {
        fullURL += "?" + queryString;
    }
    String encodedURL = java.net.URLEncoder.encode(fullURL, "UTF-8");
%>

<!-- 기존 JS -->
<script type="text/javascript" src="/animal/resources/script/board.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script> 
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" href="/animal/resources/css/board_r.css">
<link rel="stylesheet" href="/animal/resources/css/boardList.css">


<!-- Swiper CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Swiper 초기화 -->
<script>
  var swiper;
  window.onload = function() {
    swiper = new Swiper(".mySwiper", {
      loop: true,
      autoplay: {
        delay: 3000,
        disableOnInteraction: false
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      }
    });
  };
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>

<br><br><br><br>

	
	<center>
	<h2>모두의 게시판 '${board.bno}번째 게시글'</h2>
		
	<table id="getboard">
		<tr>
			<td><input type="button" value="글목록" onclick="location.href='${contextPath}/board/getBoardList.do?category=${board.category }'" class="w3-button w3-round w3-dark-gray w3-margin"> </td>
			<td id="td2" colspan="2">
				<c:if test="${sessionScope.loginId == board.id}">
					<input type="button" value="글 삭제" onclick="if(confirm('정말 삭제하시겠습니까?')) location.href='deleteBoard.do?category=${category}&bno=${board.bno}'" class="w3-button w3-round w3-dark-gray">
					<input type="button" value="글 수정" onclick="location.href='updateBoard.do?category=${category}&bno=${board.bno}'" class="w3-button w3-round w3-dark-gray">
				</c:if>
				<c:if test="${sessionScope.loginId}">
					<input type="button" value="글쓰기" onclick="location.href='insertBoard.do'" class="w3-button w3-round w3-red">
				</c:if>
			</td>
		</tr>

		<tr>
			<!-- Swiper 이미지 슬라이더 영역 -->
			<td id="img_td" rowspan="7">
				<div class="swiper mySwiper" style="width: 700px; height: auto; min-height: 600px;">
				  <div class="swiper-wrapper">
				    <c:forEach var="img" items="${imageList}">
				      <div class="swiper-slide">
				        <img src="${contextPath}/upload/${img.imageFileName}" style="width:100%; height:auto;">
				      </div>
				    </c:forEach>
				  </div>

				  <!-- 하단 점 -->
				  <div class="swiper-pagination"></div>

				  <!-- 네비게이션 버튼 -->
				  <div class="swiper-button-next"></div>
				  <div class="swiper-button-prev"></div>
				</div>
			</td>

			<td style="font-size:30; height:60px;">&nbsp; <b>${board.title }</b></td>
			<td width="150px">작성자 <b>${board.id }</b> </td>
		</tr>
		
		<tr>
			<td height="20px">&nbsp; <fmt:formatDate value="${board.writedate }" pattern="yy-MM-dd HH:mm:ss"/></td>
			<td>조회수 <b>${board.readcount }</b></td>
		</tr>

		<tr>
			<td colspan="2">
				<div class='table-scroll'>
				<table id="content_table">
					<tr>
						<td><textarea cols="45" rows="13" readonly="readonly">${board.content }</textarea><br></td>
					</tr>
					<tr>
						<td><b>${board.hashtag }</b></td>
					</tr>
					<tr>
						<td>
							<center>
								<form id="like_form">
									<table>
										<input type="hidden" name="bno" value="${board.bno}">
										<tr><input type="button" value="좋아요 ♥" onclick="return like()" class="w3-button w3-round w3-red"> </tr>
										<tr><div id="like_result">${board.like_it}</div> </tr>
									</table>
								</form>
							</center>
						</td>
					</tr>
					<tr>
						<td>
							<c:forEach var="cmt" items="${cmt_list}">
								<b>${cmt.id}</b> &nbsp;
								${cmt.content}  &nbsp;&nbsp;&nbsp;
								<a style="font-size: 10px;text-align: right"><fmt:formatDate value="${cmt.writedate}" pattern="yy-MM-dd HH:mm:ss"/></a><br>
							</c:forEach> 
						</td>
					</tr>
				</table>
				</div>
			</td>		
		</tr>
		
		<tr>
			<td height="10px"colspan="2" id="like_form">
				<a style="font-size: 15px;">
					&nbsp;<img src="/animal/resources/image/comment.png" style="width:15px;height:15px">
					&nbsp;<b>${board.comment_count}</b>&nbsp;&nbsp;
				</a>
			</td>
		</tr>

		<tr>
			<td height="50px" colspan="2">
				<table>
					<tr>
					<c:if test="${sessionScope.loginId != null}">
			            <form id="commentForm" name="commentForm" method="post" action="insertComment.do">
			            	<input type="hidden" name="id" value="${sessionScope.loginId}">
			                <input type="hidden" name="bno" value="${board.bno}">
			                <input type="hidden" name="category" value="${param.category}">
			      			<td width="435px"><input type="text" class="w3-input" name="content" id="content" placeholder="댓글을 입력하세요" ></td>
			                <td><input type="submit" class="w3-button w3-small w3-round w3-red" value="등록" onclick="return commentCheck()"> </td>
			            </form>
		            </c:if>
					<c:if test="${sessionScope.loginId == null}">
		            	<tr><td colspan="3" align="center">  &nbsp; 댓글을 남기려면<a href="<%=request.getContextPath()%>/member/loginForm.do?action=<%=encodedURL%>">로그인</a>을 해주세요 ^^</td></tr>
			        </c:if>
					</tr>  
				</table>
			</td>
		</tr>

		<tr>
			<td colspan="2"></td>
		</tr>
	</table>

	<hr>
	</center>
<br><br><br>
</body>
</html>