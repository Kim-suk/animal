<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <title>회원 정보 수정</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
.edit-container {
  max-width: 600px;
  margin: 100px auto;
  padding: 30px;
  background: rgba(255, 255, 255, 0.07);
  backdrop-filter: blur(8px);
  border-radius: 20px;
  box-shadow: 0 8px 16px rgba(3, 199, 90, 0.3);
  color: white;
}

.edit-title {
  text-align: center;
  font-size: 35px;
  margin-bottom: 30px;
}

.form-control, .form-select {
  background-color: rgba(255, 255, 255, 0.2);
  border: none;
  color: white;
}

.form-control:focus, .form-select:focus {
  background-color: rgba(255, 255, 255, 0.3);
  color: white;
  box-shadow: none;
}

.btn {
  width: 120px;             /* ✅ 동일한 너비 */
  margin: 10px 5px 0 0;
  padding: 10px;
  font-size: 16px;
  font-weight: 500;
  text-align: center;
  border-radius: 30px;
  color: white;
  background-color: #586e65;
  border: none;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
  transition: 0.3s;
}

.btn-secondary {
  background-color: #6c757d !important; /* ✅ Bootstrap 보조 버튼 색상 */
}
.btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}
}
</style>

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

<div class="edit-container">
    <h2 class="edit-title">회원 정보 수정</h2>

    <form method="post" action="${contextPath}/member/edit.do">
        <input type="hidden" name="id" value="${member.id}">

        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" class="form-control" id="name" name="name" value="${member.name}" required>
        </div>

        <div class="mb-3">
            <label for="age" class="form-label">나이</label>
            <input type="number" class="form-control" id="age" name="age" value="${member.age}" required>
        </div>

        <div class="mb-3">
            <label for="gender" class="form-label">성별</label>
            <select class="form-select" id="gender" name="gender">
                <option value="M" ${member.gender == 'M' ? 'selected' : ''}>남성</option>
                <option value="F" ${member.gender == 'F' ? 'selected' : ''}>여성</option>
                <option value="U" ${member.gender == 'U' ? 'selected' : ''}>기타/비공개</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">이메일</label>
            <input type="email" class="form-control" id="email" name="email" value="${member.email}" required>
        </div>

        <button type="submit" class="btn">저장</button>
        <a href="${contextPath}/member/mypage.do?id=${member.id}" class="btn btn-secondary">취소</a>
    </form>
</div>

</body>
</html>
