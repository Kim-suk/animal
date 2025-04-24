<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>비밀번호 변경</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/animal/resources/css/default.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
.container{
margin-top:100px;
 padding: 100px 60px;
}
.btn{
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

<script>

        function validateChangePwdForm() {
            var oldPwd = document.getElementById("oldPwd").value;
            var newPwd = document.getElementById("newPwd").value;
            var confirmPwd = document.getElementById("confirmPwd").value;

            if (oldPwd === "" || newPwd === "" || confirmPwd === "") {
                alert("모든 필드를 입력해주세요.");
                return false;
            }

            if (newPwd !== confirmPwd) {
                alert("새 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                return false;
            }

            // 비밀번호 복잡도 체크 (예시: 8자 이상, 숫자와 특수문자 포함)
            var pwdPattern = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*]).{8,}$/;
            if (!pwdPattern.test(newPwd)) {
                alert("비밀번호는 8자 이상, 숫자와 특수문자를 포함해야 합니다.");
                return false;
            }

            return true;
        }
    </script>
    
    <script>
    function ajaxChangePassword() {
        var oldPwd = $("#oldPwd").val();
        var newPwd = $("#newPwd").val();
        var confirmPwd = $("#confirmPwd").val();
        var userId = "${sessionScope.member.id}";

        if (newPwd !== confirmPwd) {
            alert("새 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
            return false;
        }

        $.ajax({
            type: "POST",
            url: "changePwd",
            data: {
                id: userId,
                oldPwd: oldPwd,
                newPwd: newPwd
            },
            success: function(response) {
                if (response === "success") {
                    alert("비밀번호 변경이 완료되었습니다.");
                    window.location.href = "mypage?id=" + userId;
                } else {
                    alert("비밀번호 변경에 실패했습니다.");
                }
            },
            error: function() {
                alert("서버 오류가 발생했습니다.");
            }
        });

        return false; // 폼이 제출되지 않도록 막음
    }

    $("form").submit(function(event) {
        event.preventDefault();  // 기본 제출을 막고
        ajaxChangePassword();  // AJAX로 비밀번호 변경 처리
    });
</script>
</head>
<body>
<div class="container mt-5">
    <h2>비밀번호 변경</h2>

    <c:if test="${not empty error}">
        <div class="alert alert-danger mt-3">${error}</div>
    </c:if>

    <form method="post" action="/animal/member/changePwd.do" onsubmit="return validateChangePwdForm()">
        <div class="mb-3">
            <label for="oldPwd" class="form-label">현재 비밀번호</label>
            <input type="password" class="form-control" id="oldPwd" name="oldPwd" required>
        </div>
        <div class="mb-3">
            <label for="newPwd" class="form-label">새 비밀번호</label>
            <input type="password" class="form-control" id="newPwd" name="newPwd" required>
        </div>
        <div class="mb-3">
            <label for="confirmPwd" class="form-label">새 비밀번호 확인</label>
            <input type="password" class="form-control" id="confirmPwd" name="confirmPwd" required>
        </div>
        <input type="hidden" name="id" value="${sessionScope.loginId}">

        <button type="submit" class="btn btn-primary">변경</button>
        <a href="/animal/member/mypage.do?id=${sessionScope.loginId}" class="btn btn-secondary">취소</a>
    </form>
</div>
</body>
</html>

</body>
</html>
