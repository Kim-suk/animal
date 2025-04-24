<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
.container {
  margin-top: 150px;
  display: flex;
  justify-content: space-between;
  padding: 100px 60px;
  font-family: '맑은 고딕', sans-serif;
}

.cart-items {
	width: 70%;
}

.cart-item {
	display: flex;
	align-items: center;
	border-bottom: 1px solid #ccc;
	padding: 15px 0;
}

.cart-item img {
	width: 100px;
	margin-right: 20px;
}

.cart-item-details {
	flex-grow: 1;
}

.cart-summary {
	width: 25%;
	border: 1px solid #ddd;
	padding: 20px;
	background-color: #f9f9f9;
}

.cart-summary h3 {
	margin-bottom: 20px;
}

.price-label {
	font-weight: bold;
}

.quantity-input {
	width: 50px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="cart-items">
			<c:forEach var="cart" items="${cartList}">
				<div class="cart-item">
					<input type="checkbox" class="cart-checkbox"
						value="${cart.productId}" data-price="${cart.price}"
						data-quantity="${cart.quantity}"
						data-product-name="${cart.productName}"> <img
						src="${cart.imageUrl}" alt="${cart.productName}">
					<div class="cart-item-details">
						<div>상품명: ${cart.productName}</div>
						<div>
							가격: <span class="price">${cart.price * cart.quantity} 원</span>
						</div>
						<div>
							수량: <input type="number" class="quantity-input"
								value="${cart.quantity}" min="1"
								data-product-id="${cart.productId}" data-price="${cart.price}">
						</div>
						<button type="button" class="delete-btn"
						        data-product-id="${cart.productId}" 
						        data-member-id="${cart.memberId}">
						    삭제
						</button>

					</div>
				</div>
			</c:forEach>
		</div>

		<div class="cart-summary">
			<h3>결제 요약</h3>
			<div class="price-label">
				총 가격: <span id="totalPrice">0</span> 원
			</div>
			<button onclick="submitSelected()">결제하기</button>
		</div>
	</div>
<script src="https://js.tosspayments.com/v1/payment-widget"></script>
<script>
  const clientKey = "test_ck_XZYkKL4MrjDqGEyZ5Oya30zJwlEW"; // 발급받은 클라이언트 키
  const customerKey = "test_sk_oEjb0gm23PWw9a5qzNK48pGwBJn5"; // 고유한 고객 식별자
  const paymentWidget = PaymentWidget(clientKey, customerKey);
</script>
	<script>
    // 수량 변경 시 개별 상품 가격 업데이트 + 총합 재계산
    document.querySelectorAll(".quantity-input").forEach(input => {
        input.addEventListener("change", function () {
            const price = parseInt(this.dataset.price);
            const quantity = parseInt(this.value);
            const productTotal = price * quantity;

            const priceSpan = this.closest('.cart-item').querySelector('.price');
            priceSpan.innerText = productTotal.toLocaleString() + " 원";

            const productId = this.dataset.productId;
            const checkbox = document.querySelector(`.cart-checkbox[value='${productId}']`);
            checkbox.dataset.quantity = quantity;

            updateTotalPrice();
        });
    });

    // 체크박스 선택 시 총합 계산
    document.querySelectorAll(".cart-checkbox").forEach(cb => {
        cb.addEventListener("change", updateTotalPrice);
    });

    // 총 가격 계산 함수
  function updateTotalPrice() {
    let total = 0;

    document.querySelectorAll(".cart-checkbox:checked").forEach(cb => {
        const cartItem = cb.closest('.cart-item'); // 해당 상품 블록
        const quantityInput = cartItem.querySelector('.quantity-input');
        const price = parseInt(cb.dataset.price);
        const quantity = parseInt(quantityInput.value);

        total += price * quantity;

        // 최신 수량으로 데이터 갱신 (선택 사항)
        cb.dataset.quantity = quantity;
    });

    document.getElementById("totalPrice").innerText = total.toLocaleString();
}

    // 결제 버튼 클릭 시 선택된 상품 정보 콘솔에 출력 (디버깅용)
    function submitSelected() {
    const selected = document.querySelectorAll(".cart-checkbox:checked");
    if (selected.length === 0) {
        alert("결제할 상품을 선택하세요.");
        return;
    }

    // form 생성
    const form = document.createElement("form");
    form.method = "POST";
    form.action = "/animal/payment/process"; // 결제 준비 Controller 경로 (Spring에서 처리)
    
    // 선택된 상품 정보 반복해서 form에 추가
    selected.forEach(cb => {
        const cartItem = cb.closest('.cart-item');
        const quantityInput = cartItem.querySelector('.quantity-input');
        
        const productId = cb.value;
        const productName = cb.dataset.productName;
        const quantity = quantityInput.value;
        const price = cb.dataset.price;

        // 상품ID
        const inputId = document.createElement("input");
        inputId.type = "hidden";
        inputId.name = "productIds";
        inputId.value = productId;
        form.appendChild(inputId);

        // 상품명
        const inputName = document.createElement("input");
        inputName.type = "hidden";
        inputName.name = "productNames";
        inputName.value = productName;
        form.appendChild(inputName);

        // 수량
        const inputQty = document.createElement("input");
        inputQty.type = "hidden";
        inputQty.name = "quantities";
        inputQty.value = quantity;
        form.appendChild(inputQty);

        // 단가
        const inputPrice = document.createElement("input");
        inputPrice.type = "hidden";
        inputPrice.name = "prices";
        inputPrice.value = price;
        form.appendChild(inputPrice);
    });

    document.body.appendChild(form);
    form.submit();
}

    // 페이지 로딩 후 초기 총합 설정
    updateTotalPrice();
    
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll(".delete-btn").forEach(btn => {
            btn.addEventListener("click", function () {
                const productId = this.dataset.productId;
                const memberId = this.dataset.memberId;

                if (!confirm("정말 삭제하시겠습니까?")) return;

                const form = document.createElement("form");
                form.method = "POST";
                form.action = "/animal/cart/delete";

                const inputProduct = document.createElement("input");
                inputProduct.type = "hidden";
                inputProduct.name = "productId";
                inputProduct.value = productId;

                const inputMember = document.createElement("input");
                inputMember.type = "hidden";
                inputMember.name = "memberId";
                inputMember.value = memberId;

                form.appendChild(inputProduct);
                form.appendChild(inputMember);

                document.body.appendChild(form);
                form.submit();
            });
        });
    });


</script>
</body>
</html>