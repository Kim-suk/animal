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
<meta charset="UTF-8">
<title>회원 가입</title>
<script>
/**
 * 회원가입 유효성 검사
 
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

    if (form.pwd.value !== form.password_re.value) {
        alert("비밀번호가 일치하지 않습니다.");
        form.password_re.focus();
        return false;
    }

    alert("회원가입이 완료되었습니다!");
    */
    // 폼 제출 후 로그인 페이지로 이동
    setTimeout(function () {
        form.submit();
        window.location.href = "/animal/member/loginForm.do"; 
    }, 1000);

    return false; // 폼이 즉시 제출되는 것을 방지하고 setTimeout을 기다리도록 함
}

 // ID 중복 검사
function checkDuplicate() {
            var userId = $("#userId").val();

            if (userId.trim() === "") {
                $("#result").css("color", "red").text("아이디를 입력하세요.");
                return;
            }

            $.ajax({
                type: "GET",
                url: "/user/checkId",
                data: { userId: userId },
                success: function(response) {
                    if (response === "available") {
                        $("#result").css("color", "green").text("사용 가능한 아이디입니다.");
                    } else {
                        $("#result").css("color", "red").text("이미 사용 중인 아이디입니다.");
                    }
                },
                error: function() {
                    $("#result").css("color", "red").text("서버 오류가 발생했습니다.");
                }
            });
}
</script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/animal/resources/css/default.css">
<style>
    .signup-box {
        margin-top: 200px;
        margin-bottom: 100px;
        padding: 40px;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
        border-radius: 10px;
        background: #ffffff;
    }
    .signup-title {
        font-size: 30px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }
    .form-control {
        border-radius: 5px;
        border: 1px solid #ccc;
        padding: 10px;
    }
    .btn-custom {
        width: 100%;
        font-weight: bold;
        border-radius: 5px;
    }
    .gender-group {
        display: flex;
        gap: 10px;
    }
</style>
</head>
<body>
<div class="container d-flex justify-content-center">
    <div class="col-lg-6 signup-box">
        <div class="signup-title">SIGN UP</div>
        <form name="joinForm" method="post" action="${contextPath }/member/addMember.do" onsubmit="return join();">
            <div class="mb-3">
                <label class="form-label">ID</label>
                <input type="text" name="id" class="form-control" required>
                <button type="button" onclick="checkDuplicate()">중복 검사</button>
            </div>
            <div class="mb-3">
                <label class="form-label">PASSWORD</label>
                <input type="password" name="pwd" class="form-control" required>
        		<p id="result"></p>
            </div>
            <div class="mb-3">
                <label class="form-label">CONFIRM PASSWORD</label>
                <input type="password" name="password_re" class="form-control" required>
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
                <button type="submit" class="btn btn-primary btn-custom">SIGN UP</button>
                <button type="reset" class="btn btn-secondary btn-custom">RESET</button>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
