<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>결제 성공</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Arial', sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 30px;
        }

        .payment-card {
            background: white;
            border-radius: 12px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            transform: translateY(20px);
            opacity: 0;
            animation: fadeIn 0.6s ease-out forwards;
        }

        @keyframes fadeIn {
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        h1 {
            font-size: 2.5rem;
            color: #444;
            margin-bottom: 10px;
        }

        .status-message {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 30px;
        }

        .payment-info {
            margin: 20px 0;
            font-size: 1rem;
            color: #555;
            line-height: 1.8;
        }

        .payment-info th {
            text-align: left;
            padding-right: 10px;
        }

        .payment-info td {
            text-align: right;
        }

        img {
            border-radius: 8px;
            margin-top: 20px;
            max-width: 200px;
            height: auto;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .actions a {
            display: inline-block;
            background-color: #6a82fb;
            color: white;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 30px;
            transition: background-color 0.3s ease;
        }

        .actions a:hover {
            background-color: #fc5c7d;
        }
    </style>
</head>
<body>
<br><br><br><br><br><br>
    <div class="container">
        <div class="payment-card">
            <h1>결제 성공</h1>
            <p class="status-message">고객님의 결제가 성공적으로 처리되었습니다.</p>
            
            <div class="payment-info">
                <table style="width: 100%; text-align: left;">
                    <tr>
                        <th>주문 번호</th>
                        <td>${orderId}</td>
                    </tr>
                    <tr>
                        <th>결제 금액</th>
                        <td>${amount} 원</td>
                    </tr>
                    <tr>
                        <th>제품 이름</th>
                        <td>${productName}</td>
                    </tr>
                </table>
            </div>

            <img src="${productImage}" alt="제품 이미지">

            <div class="actions">
                <a href="/animal/main.do">홈으로 돌아가기</a>
            </div>
        </div>
    </div>
</body>
</html>