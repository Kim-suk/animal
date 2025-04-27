<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/animal/resources/css/default.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <title>회원 가입</title>
</head>
<body>

<script>
function join() {
    var form = document.forms['joinForm'];

    if (!form.id.value.trim()) {
        alert("아이디를 입력해주세요.");
        form.id.focus();
        return false;
    }
    if (form.id.value.length < 4 || form.id.value.length > 16) {
        alert("아이디는 4자 이상, 16자 이하로 입력해주세요.");
        form.id.focus();
        return false;
    }
    if (!form.name.value.trim()) {
        alert("이름을 입력해주세요.");
        form.name.focus();
        return false;
    }
    if (!form.pwd.value.trim()) {
        alert("비밀번호를 입력해주세요.");
        form.pwd.focus();
        return false;
    }

    let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
    let hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

    if (!reg.test(form.pwd.value)) {
        alert("비밀번호는 8자리 이상이며, 대문자/소문자/숫자/특수문자를 모두 포함해야 합니다.");
        form.pwd.focus();
        return false;
    }

    if (/(\w)\1\1\1/.test(form.pwd.value)) {
        alert("같은 문자를 4번 이상 사용할 수 없습니다.");
        form.pwd.focus();
        return false;
    }

    if (hangleCheck.test(form.pwd.value)) {
        alert("비밀번호에 한글을 사용할 수 없습니다.");
        form.pwd.focus();
        return false;
    }

    if (form.pwd.value.search(/\s/) !== -1) {
        alert("비밀번호는 공백 없이 입력해주세요.");
        form.pwd.focus();
        return false;
    }

    // 회원가입 완료 alert
    if (confirm("회원가입이 완료되었습니다! 로그인 페이지로 이동할까요?")) {
        form.submit(); // 폼을 실제로 서버에 제출
    }

    return false; // 기본 동작 막기
}
</script>

<style>
      
      .background-wave {
  width: 110vw;
  height: 110vh;
  position: absolute;
  top: -5vh;
  left: -5vw;
  object-fit: cover;
  filter: url(#water);
  position: fixed; /* 화면 스크롤과 상관없이 고정 */
  opacity: 0.3; /* ✅ 투명도 조절 */
  z-index: -1;  /* ✅ 배경으로 보내기 */
   background-size: cover;  
}

    .signup-box {
        max-width: 600px;
        height: 500px;
        margin: 90px auto;
          margin-top:200px;
        padding: 20px;
        background: white;
        border-radius: 10px;
        border : center;
          background: rgba(255, 255, 255, 0.05); /* 반투명 유리 느낌 */
  backdrop-filter: blur(10px);           /* 유리 효과 */
      
        transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
 
         
          /* 유리 효과 */
    min-height: 100vh;

      
        transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
    }
    .signup-title {
        font-family: var(--e-font);
        font-size: 60px;
        font-weight: bold;
        text-align: center;
        color:white;
        margin-bottom: 20px;
    }
    .form-control {
        border-radius: 5px;
        border: 1px solid #ccc;
        padding: 10px;
    }
    .gender-group {
        display: flex;
        gap: 10px;
    }
   .reset {
  width: 100%;
  padding: 8px 0;
  font-size: 16px;
  font-weight: bold;
  color: white;
  background: #586e65;
  border: none;
  border-radius: 18px;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
   margin-bottom: 15px; /* 여백 추가 */
}

.reset:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}
.signup-btn {
  width: 100%;
  padding: 8px 0;
  font-size: 16px;
  font-weight: bold;
  color: white;
  background: #acc2b9;
  border: none;
  border-radius: 18px;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
}

.signup-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}
}
</style>
</head>
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
<div class="container d-flex justify-content-center">
    <div class="col-lg-6 signup-box">
        <div class="signup-title">SIGN UP</div>
        <form name="joinForm" method="post" action="${contextPath }/member/addMember.do" onsubmit="return join();">
            <div class="mb-3">
                <label class="form-label">ID</label>
                <input type="text" name="id" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">PASSWORD</label>
                <input type="password" name="pwd" class="form-control" required>
              <p id="result"></p>
            </div>
            <div class="mb-3">
                <label for="birthdate">AGE</label>
                <input type="date" id="birthdate" name="age" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">NAME</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">GENDER</label>
                <div class="gender-group">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" value="m" required>
                        <label class="form-check-label">Male</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" value="w" required>
                        <label class="form-check-label">Female</label>
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <label class="form-label">EMAIL</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="d-grid gap-2">
                <button type="submit" class="signup-btn">SIGN UP</button>
                <button type="reset" class="reset">RESET</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
