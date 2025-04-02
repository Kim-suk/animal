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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
    .signup-box {
        margin-top: 75px;
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
        <form method='post' action='${contextPath }/member/addMember.do'>
            <div class="mb-3">
                <label class="form-label">ID</label>
                <input type="text" name="id" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">PASSWORD</label>
                <input type="password" name="pwd" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">AGE</label>
                <input type="number" name="age" class="form-control" required>
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