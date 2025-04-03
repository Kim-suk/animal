<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인</title>

<!-- Bootstrap 5 CDN 추가 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>
   
    .login-container {
        max-width: 500px;
        margin: 90px auto;
        padding: 20px;
        background: white;
        border-radius: 10px;
      	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    }
    .login-title {
        font-size: 24px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }
</style>

<script>
    window.onload = function() {
        <c:choose>
            <c:when test='${param.result == "loginFailed"}'>
                alert('아이디나 비밀번호가 틀립니다. 다시 로그인 하세요.');
            </c:when>
            <c:when test='${param.result == "logout"}'>
                alert('로그아웃 되었습니다. 다시 로그인 하세요.');
            </c:when>
            <c:when test='${param.result == "notLogin"}'>
                alert('로그인이 되어 있지 않습니다. 로그인 하세요.');
            </c:when>
        </c:choose>
    };
</script>
</head>
<body>

<div class="container">
    <div class="login-container">
        <h2 class="login-title">LOGIN</h2>
        <form method="post" action="/animal/member/login.do">
            <div class="mb-3">
                <label for="id" class="form-label">ID</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="mb-3">
                <label for="pwd" class="form-label">PASSWORD</label>
                <input type="password" class="form-control" id="pwd" name="pwd" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">LOGIN</button>
        </form>
    </div>
</div>

</body>
</html>