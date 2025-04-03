<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>쿠팡 스타일 필터</title>
    
    <!-- jQuery 및 Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* 전체 레이아웃 */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        
        /* 고정형 사이드바 */
        #sidebar-left {
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #f8f9fa;
            border-right: 1px solid #ccc;
            padding: 20px;
            overflow-y: auto;
        }

        #sidebar-left h4 {
            font-size: 18px;
            margin-bottom: 10px;
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
        }

        #sidebar-left ul {
            list-style-type: none;
            padding: 0;
        }

        #sidebar-left ul li {
            padding: 8px;
            font-size: 16px;
        }

        #sidebar-left ul li a {
            text-decoration: none;
            color: #333;
            display: block;
        }

        #sidebar-left ul li a:hover {
            background-color: #007bff;
            color: white;
        }

        /* 필터 스타일 */
        .filter-group {
            margin-bottom: 20px;
        }

        .filter-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
        }

        /* 메인 콘텐츠 */
        #content {
            width: calc(100% - 250px);
            margin-left: 250px;
            padding: 20px;
        }
    </style>
    
    <script>
        $(document).ready(function() {
            // 필터 변경 시 이벤트
            $(".filter-group input").on("change", function() {
                let selectedCategories = [];
                let selectedPrice = $("input[name='price']:checked").val();

                $("input[name='category']:checked").each(function() {
                    selectedCategories.push($(this).val());
                });

                // 콘솔에 선택된 값 출력 (나중에 상품 필터링 로직 추가 가능)
                console.log("선택된 카테고리:", selectedCategories);
                console.log("선택된 가격 범위:", selectedPrice);
            });
        });
    </script>

</head>

<body>

    <!-- 사이드바 -->
    <div id="sidebar-left">
        <h4>카테고리</h4>
        <ul>
            <li><a href="#">홈</a></li>
            <li><a href="#">베스트 상품</a></li>
            <li><a href="#">신상품</a></li>
            <li><a href="#">할인 상품</a></li>
        </ul>

        <!-- 필터 -->
        <div class="filter-group">
            <h4>상품 필터</h4>

            <label>카테고리</label>
            <input type="checkbox" name="category" value="전자제품"> 전자제품<br>
            <input type="checkbox" name="category" value="패션"> 패션<br>
            <input type="checkbox" name="category" value="생활용품"> 생활용품<br>
            <input type="checkbox" name="category" value="식품"> 식품<br>

            <label>가격 범위</label>
            <input type="radio" name="price" value="low"> 1만원 이하<br>
            <input type="radio" name="price" value="mid"> 1만원 ~ 5만원<br>
            <input type="radio" name="price" value="high"> 5만원 이상<br>
        </div>
    </div>

    <!-- 메인 콘텐츠 -->
    <div id="content">
        <h1>쿠팡 스타일 필터 적용</h1>
        <p>필터를 선택하면 콘솔에 값이 출력됩니다. 이후 상품 필터링 기능을 추가할 수 있습니다.</p>
    </div>

</body>
</html>
