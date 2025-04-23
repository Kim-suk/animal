<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <title>회원 정보 수정</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<style>
body {
  background: linear-gradient(to bottom, #000000, #ffffff);
  font-family: 'Arial', sans-serif;
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
  margin: 10px 5px 0 0;
  padding: 10px 20px;
  border-radius: 30px;
  color: white;
  background-color: black;
  border: none;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
  transition: 0.3s;
}

.btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}
</style>

<body>

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
