<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제 성공</title>
    <style>
        body {
            font-family: '맑은 고딕', sans-serif;
            background-color: #f0fff0;
            text-align: center;
            padding: 100px;
        }
        h1 {
            color: #2e8b57;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>🎉 결제가 성공적으로 완료되었습니다!</h1>
    <p>이용해 주셔서 감사합니다.</p>
     <a href="${pageContext.request.contextPath}/">홈으로 이동</a>
    
</body>
</html>