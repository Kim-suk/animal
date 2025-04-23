<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>회원 탈퇴</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-danger">회원 탈퇴</h2>
    <p class="text-muted">비밀번호를 입력하여 탈퇴를 완료하세요.</p>

    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

    <form method="post" action="/animal/member/deleteForm.do">
        <div class="mb-3">
            <label for="pwd" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="pwd" name="pwd" required>
        </div>
        <input type="hidden" name="id" value="${sessionScope.loginId}">

        <button type="submit" class="btn btn-danger">회원 탈퇴</button>
        <a href="mypage?id=${sessionScope.loginId}" class="btn btn-secondary">취소</a>
    </form>
</div>
</body>
</html>