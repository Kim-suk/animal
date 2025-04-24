<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제 실패</title>
    <style>
        body {
            font-family: '맑은 고딕', sans-serif;
            background-color: #fff0f0;
            text-align: center;
            padding: 100px;
        }
        h1 {
            color: #cc0000;
        }
        p {
            font-size: 18px;
        }
        .error {
            margin-top: 20px;
            color: #a94442;
            background-color: #f2dede;
            border: 1px solid #ebccd1;
            display: inline-block;
            padding: 15px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>😢 결제에 실패했습니다.</h1>
    <p>다시 시도해 주세요.</p>

    <c:if test="${not empty errorMessage}">
        <div class="error">
            오류 메시지: ${errorMessage}
        </div>
    </c:if>

    <br><br>
     <a href="${pageContext.request.contextPath}/">홈으로 이동</a>
</body>
</html>