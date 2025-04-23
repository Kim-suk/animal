<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
    <title>마이페이지</title>
    <link rel="stylesheet" href="/css/mypage.css">
</head>
<style>
body {
  background: linear-gradient(to bottom, #000000, #ffffff);
  font-family: 'Arial', sans-serif;
}

.mypage-container {
  max-width: 1000px; /* 전체 컨테이너의 크기 */
  margin: 100px auto;
  padding: 30px;
  background: rgba(255, 255, 255, 0.07);
  backdrop-filter: blur(8px);
  border-radius: 20px;
  box-shadow: 0 8px 16px rgba(3, 199, 90, 0.3);
  color: white;
  display: flex; /* Flexbox 사용 */
  justify-content: space-between; /* 아이템들을 양쪽으로 배치 */
  align-items: center; /* 수직 중앙 정렬 */
}

.mypage-left, .mypage-right {
  width: 48%; /* 왼쪽과 오른쪽 영역의 크기 */
}

.mypage-title {
  text-align: center;
  font-size: 40px;
  margin-bottom: 30px;
}

.user-info h3 {
  margin-top: 25px;
  font-size: 22px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
  padding-bottom: 5px;
}

.user-info p {
  font-size: 18px;
  margin: 8px 0;
}

.mypage-buttons {
  margin-top: 40px;
  text-align: center;
}

.btn {
  display: inline-block;
  margin: 0 10px;
  padding: 10px 20px;
  color: white;
  background: black;
  border-radius: 30px;
  text-decoration: none;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
}

.btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}

.logout {
  background: crimson;
}

.mypage-right img {
  width: 200px;
  height: 200px;
  border-radius: 50%;
  box-shadow: 0 8px 16px rgba(3, 199, 90, 0.3);
}

.mypage-buttons a {
  margin-top: 10px;
  display: block;
  width: 100%;
}
</style>
<c:if test="${not empty msg}">
    <script>
        alert("${msg}");
    </script>
</c:if>
<body>

<div class="mypage-container">
    <div class="mypage-left">
        <h2 class="mypage-title">마이페이지</h2>

        <div class="user-info">
            <h3>회원 기본 정보</h3>
            <p><strong>아이디:</strong> ${member.id}</p>
            <p><strong>이름:</strong> ${member.name}</p>
            <p><strong>나이:</strong> ${member.age}</p>
            <p><strong>성별:</strong> ${member.gender}</p>
            <p><strong>이메일:</strong> ${member.email}</p>
            <p><strong>가입일:</strong> ${member.joinDate}</p>

            <h3>소셜 로그인 정보</h3>
            <p><strong>가입 유형:</strong> ${member.joinType}</p>
            <p><strong>네이버 ID:</strong> ${member.naverId}</p>
            <p><strong>카카오 ID:</strong> ${member.kakaoId}</p>
            <p><strong>구글 ID:</strong> ${member.googleId}</p>
            <p><strong>페이스북 ID:</strong> ${member.facebookId}</p>
        </div>

        <div class="mypage-buttons">
            <a href="${contextPath }/member/editForm.do?id=${member.id}" class="btn">정보 수정</a>
            <a href="${contextPath }/member/changePwdForm.do" class="btn">비밀번호 변경</a>
            <a href="${contextPath }/member/deleteForm.do?id=${member.id}" class="btn logout">회원 탈퇴</a>
            <form action="/member/uploadProfile" method="post" enctype="multipart/form-data" style="margin-top: 20px;">
                <input type="file" name="profileimg" />
                <button type="submit" class="btn">프로필 이미지 업로드</button>
            </form>
        </div>
    </div>

    <div class="mypage-right">
        <c:if test="${not empty member.profileimg}">
            <div style="margin-top: 30px; text-align: center;">
                <img src="/upload/${member.profileimg}" alt="프로필 이미지">
            </div>
        </c:if>
    </div>
</div>

</body>
</html>
