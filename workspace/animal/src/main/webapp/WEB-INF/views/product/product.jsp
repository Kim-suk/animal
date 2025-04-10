<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제품 상세 페이지</title>
    <style>
        .container {
            display: grid;
            grid-template-columns: 2fr 3fr 1fr;
            grid-template-rows: auto auto auto;
            gap: 20px;
            padding: 30px;
            font-family: '맑은 고딕', sans-serif;
        }

        .photo {
            grid-row: 1 / 2;
            grid-column: 1 / 2;
            background-color: #f3f3f3;
            border: 2px solid #ccc;
            padding: 20px;
            text-align: center;
        }

        .info {
            grid-row: 1 / 2;
            grid-column: 2 / 3;
        }

        .info .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .info .price {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .category {
            grid-column: 1 / 3;
            grid-row: 2 / 3;
            background-color: #f9f9f9;
            padding: 10px;
            border-left: 5px solid #666;
            font-weight: bold;
        }

        .description {
            grid-column: 1 / 3;
            grid-row: 3 / 4;
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 20px;
        }

        .animal-photo {
            grid-column: 3 / 4;
            grid-row: 3 / 4;
            background-color: #f0f0f0;
            padding: 20px;
            text-align: center;
        }

        img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="photo">
            <p>제품 사진</p>
            <img src="${product.image_url}" alt="제품 이미지">
        </div>
        <div class="info">
            <div class="title">제품 이름 : ${product.name}</div>
            <div class="price">가격: ${product.price }원</div>
        </div>
        <div class="category">
            카테고리: ${product.category}
        </div>
        <div class="description">
            <h3>${product.description}</h3>
        </div>
        <div class="animal-photo">
    <c:choose>
        <c:when test="${product.animal_type == '강아지'}">
            <img src="https://image.store.bemypet.kr/content/uploads/2021/05/03104401/%EC%8D%B8%EB%84%A4%EC%9D%BC-%EB%A6%AC%EB%A6%AC-2.png" alt="강아지 이미지">
        </c:when>
        <c:when test="${product.animal_type == '고양이'}">
            <img src="https://image.store.bemypet.kr/content/uploads/2021/05/03104459/%EC%8D%B8%EB%84%A4%EC%9D%BC-%EC%82%BC%EC%83%89-2-600x600.png" alt="고양이 이미지">
        </c:when>
    </c:choose>
</div>
    </div>
</body>
</html>
