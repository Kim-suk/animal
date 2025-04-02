<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function(){
        $(".nav-item").hover(
            function(){ 
                $(this).find(".submenu").stop(true, true).slideDown(200); 
            }, 
            function(){ 
                $(this).find(".submenu").stop(true, true).slideUp(200); 
            }
        );
    });
</script>
<body>
	<table border="0" width="100%">
		<tr>
			<nav class="navbar navbar-expand-sm bg-light navbar-light">
				<div class="container-fluid">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"	
							href="hospital.do">동물병원</a></li>
						<li class="nav-item">고양이<ul class="submenu">
								<li><a href="${contextPath }/cat/cat_type.do">묘종</a></li>
								<li><a href="${contextPath }/cat/cat_kitten.do">어린 고양이</a></li>
								<li><a href="${contextPath }/cat/cat_think.do">고양이를 기를까 생각 중이신가요</a></li>
								<li><a href="${contextPath }/cat/cat_all.do">고양이에 대한 모든 것</a></li>
							</ul>
						</li>
						<li class="nav-item">강아지
							<ul class="submenu">
								<li><a href="${contextPath }/dog/dog_type.do">품종</a></li>
								<li><a href="${contextPath }/dog/dog_puppy.do">어린 강아지</a></li>
								<li><a href="${contextPath }/dog/dog_think.do">강아지를 기를까 생각 중이신가요</a></li>
								<li><a href="${contextPath }/dog/dog_all.do">강아지에 대한 모든 것</a></li>
							</ul>
						</li>
						<li class="nav-item">게시판<ul class="submenu">
								<li><a href="${contextPath }/cat_board/cat_listArticles.do">고양이</a></li>
								<li><a href="${contextPath }/dog_board/dog_listArticles.do">강아지</a></li>
								<li><a href="${contextPath }/board/listArticles.do">자유게시판</a></li>
							</ul>
						</li>
						<li class="nav-item">용품<ul class="submenu">
								<li><a href="#">고양이</a></li>
								<li><a href="${contextPath }/cat_product/cat_feed.do">사료</a></li>
								<li><a href="${contextPath }/cat_product/cat_.do">간식</a></li>
		
								<li><a href="#">강아지</a></li>
								<li><a href="#">사료</a></li>
								<li><a href="#">용품</a></li>
								
							</ul>
						</li>
						<li class="nav-item"><a class="nav-link" href='${contextPath }/main.do'>홈</a>
						</li>

						</li>
					</ul>
				</div>
			</nav>
			<c:choose>
				<c:when test="${isLogin == true }">
					<td>
						<h3>${loginId }</h3>
						<h3>
							<a href="/animal/member/logout.do">로그아웃</a>
						</h3>
					</td>
				</c:when>
				<c:otherwise>
					<td><a href="/animal/member/loginForm.do"><h3>로그인</h3></a></td>
					<td><a href="/animal/member/joinMember.do"><p class="cls2">회원가입</p></a></td>
				</c:otherwise>
			</c:choose>
		</tr>
	</table>
</body>
</html>