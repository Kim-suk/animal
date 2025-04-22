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
            <div class="id">제품 아이디 : <c:out value="${product.id}" /></div>
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
            <button id="payment-button" data-product-id="${product.id}"
                style="margin-top: 20px; padding: 10px 20px; font-size: 16px;">
                결제하기
            </button>
           
           
   <!-- 장바구니 담기 버튼 -->
            <form id="cartForm" action="/animal/cart/add" method="post" style="margin-top: 20px;">
                <input type="hidden" name="productId" value="${product.id}" />
                <input type="hidden" name="productName" value="${product.name}" />
                <input type="hidden" name="price" value="${product.price}" />
                <input type="hidden" name="imageUrl" value="${product.image_url}" />
                <input type="hidden" name="quantity" value="1" />
                <button type="button" onclick="checkLoginBeforeAddToCart()" style="padding: 10px 20px; font-size: 16px;">장바구니에 담기</button>
            </form>

            <!-- 장바구니 보기 버튼 -->
            <form action="/animal/cart/list" method="get" style="margin-top: 10px;">
                <button type="submit" style="padding: 10px 20px; font-size: 16px;">장바구니 보기</button>
            </form>
        </div>
    </div>

<c:if test="${not empty sessionScope.cartSuccessMessage}">
    <script>
        alert("${sessionScope.cartSuccessMessage}");
    </script>
    <c:remove var="cartSuccessMessage" scope="session" />
</c:if>

<!-- 토스 페이먼츠 JS -->
<script src="https://js.tosspayments.com/v1/payment"></script>
<script>
    const button = document.getElementById("payment-button");
    const productId = button.dataset.productId;
    const tossPayments = TossPayments("test_ck_XZYkKL4MrjDqGEyZ5Oya30zJwlEW");

    button.addEventListener("click", () => {
        tossPayments.requestPayment("토스페이", {
            amount: Number("<c:out value='${product.price}'/>"),
            orderId: "order-" + productId,
            orderName: "<c:out value='${product.name}'/>",
            customerName: "${sessionScope.loginName}",
            successUrl: "http://localhost:8080/animal/payment/success.do",
            failUrl: "http://localhost:8080/animal/payment/fail.do"
        });
    });
    
    // 로그인 되어야 장바구니 기능 이용 가능
    function checkLoginBeforeAddToCart() {
    	var loginId = '${sessionScope.loginId}';
            if (!loginId) {
                alert("로그인이 필요합니다.");
                location.href = '${pageContext.request.contextPath}/member/loginForm.do'; // 로그인 페이지로 이동
                return;
            }
            // 로그인 되어 있으면 장바구니 담기
            document.getElementById("cartForm").submit();
        }
    
    
</script>

</body>
</html>
