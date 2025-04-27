
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
    <title>마이페이지</title>
    <link rel="stylesheet" href="/css/mypage.css">
    <link rel="stylesheet" href="/animal/resources/css/default.css">
</head>
<style>

 .background-wave {
  width: 110vw;
  height: 110vh;
  position: absolute;
  top: -5vh;
  left: -5vw;
  object-fit: cover;
  filter: url(#water);
  opacity: 0.3; /* ✅ 투명도 조절 */
  z-index: -1;  /* ✅ 배경으로 보내기 */
}


.mypage-container {
  max-width: 1200px;
  margin: 100px auto;
  padding: 40px;
  background: rgba(255, 255, 255, 0.05); /* 반투명 유리 느낌 */
  backdrop-filter: blur(10px); 
  border-radius: 20px;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
  color: white;
  display: flex;
  justify-content: space-between;
  transition: all 0.3s ease;
  gap: 50px;
}

.mypage-left, .mypage-right {
  width: 50%;
}

.mypage-title {
  font-size: 36px;
  margin-bottom: 30px;
  text-align: left;
}

.mypage-profile-img {
  width: 180px;
  height: 180px;
  border-radius: 50%;
  object-fit: cover;
  box-shadow: 0 6px 12px rgba(3, 199, 90, 0.3);
  margin-bottom: 20px;
}

.user-info h3 {
  font-size: 22px;
  margin-top: 20px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
  padding-bottom: 5px;
}

.user-info p {
  font-size: 18px;
  margin: 6px 0;
}

.mypage-buttons {
  margin-top: 40px;
}

.btn {
  display: block;
  margin: 10px 0;
  padding: 10px 20px;
  color: white;
  background: #acc2b9;
  border-radius: 30px;
  text-decoration: none;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
  text-align: center;
}

.btn:hover {
   transform: scale(1.2);
  transition: transform 0.2s ease;
    backdrop-filter: blur(5px);
}

.logout {
  background: #586e65;
}
</style>

<c:if test="${not empty msg}">
    <script>
        alert("${msg}");
    </script>
</c:if>

<body>
<!-- ✅ 배경 애니메이션 SVG 필터 추가 -->
<svg width="0" height="0" xmlns="http://www.w3.org/2000/svg">
  <filter id="water">
    <feTurbulence type="fractalNoise" baseFrequency=".05 .05" numOctaves="1" result="noise1"></feTurbulence>
    <feColorMatrix in="noise1" type="hueRotate" values="0" result="noise2">
      <animate attributeName="values" from="0" to="360" dur="1s" repeatCount="indefinite"/>
    </feColorMatrix>
    <feDisplacementMap xChannelSelector="R" yChannelSelector="G" scale="20" in="SourceGraphic" in2="noise2" />
  </filter>
</svg>

<!-- ✅ 물결 애니메이션 이미지 배경 삽입 -->
<img class="background-wave" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/467/hawaii-water%20small.jpeg" alt="animated water">

<div class="mypage-container">
    <div class="mypage-left">
        <h2 class="mypage-title">마이페이지</h2>
        <img src="/animal/resources/image/profile.jpg" alt="프로필 이미지" class="mypage-profile-img" />
        <div class="user-info">
            <h3>회원 기본 정보</h3>
            <p><strong>아이디:</strong> ${member.id}</p>
            <p><strong>이름:</strong> ${member.name}</p>
            <p><strong>나이:</strong> ${member.age}</p>
            <p><strong>성별:</strong> ${member.gender}</p>
            <p><strong>이메일:</strong> ${member.email}</p>
            <p><strong>가입일:</strong> ${member.joinDate}</p>
        </div>
    </div>

    <div class="mypage-right">
        <div class="user-info">
            <h3>소셜 로그인 정보</h3>
            <p><strong>가입 유형:</strong> ${member.joinType}</p>
            <p><strong>네이버 ID:</strong> ${member.naverId}</p>
            <p><strong>카카오 ID:</strong> ${member.kakaoId}</p>
            <p><strong>구글 ID:</strong> ${member.googleId}</p>
            <p><strong>페이스북 ID:</strong> ${member.facebookId}</p>
            
               <c:if test="${empty products}">
        		<p style="font-size: 18px;">결제한 상품이 없습니다.</p>
   			 </c:if>
   			 
        </div>
        <br><br><br><br><br><br><br><br>
        <div class="mypage-buttons">
            <a href="${contextPath }/member/editForm.do?id=${member.id}" class="btn">정보 수정</a>
            <a href="${contextPath }/member/changePwdForm.do" class="btn">비밀번호 변경</a>
            <a href="${contextPath }/member/deleteForm.do?id=${member.id}" class="btn logout">회원 탈퇴</a>
        </div>
    </div>
</div>

</body>
</html>
