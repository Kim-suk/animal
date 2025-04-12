<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Tailwind CSS CDN -->
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">

	<div class="container mx-auto p-6">

		<div class="flex">


			<!-- 제품 리스트 -->
			<main
				class="flex-1 p-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
				<!-- 상품 카드 반복 예시 -->

				<c:forEach var="product" items="${productList}">
					<div class="product bg-white p-4 rounded-xl shadow text-center"
						data-id="${product.id}">
						<img src="${product.image_url}" alt="제품 이미지">
						<h4 class="text-lg font-semibold mt-2">${product.name}</h4>
						<p class="text-gray-500">${product.category}</p>

						<!-- ❤️ 좋아요 버튼 -->
						<button onclick="likeProduct(${product.id})"
							class="text-red-500 mt-2">❤️</button>
						<span id="like-${product.id}">0</span> <a
							class="block text-blue-500 hover:underline mt-2"
							href="/animal/product/product.do?id=${product.id}"> 제품 보기 → </a>
					</div>
				</c:forEach>

				<!-- 여기에 더 많은 제품 카드 추가 가능 -->
			</main>
		</div>
	</div>
	<script>
  // 저장된 좋아요 값 가져오기
  function getLikes(productId) {
    return parseInt(localStorage.getItem("like-" + productId)) || 0;
  }

  // 좋아요 누를 때 처리
  function likeProduct(productId) {
    let count = getLikes(productId);
    count++;
    localStorage.setItem("like-" + productId, count);
    document.getElementById("like-" + productId).innerText = count;
  }

  // 페이지 로드 시 좋아요 값 복원
  window.addEventListener("load", () => {
    const products = document.querySelectorAll(".product");
    products.forEach(p => {
      const id = p.dataset.id;
      const countEl = document.getElementById("like-" + id);
      if (countEl) {
        countEl.innerText = getLikes(id);
      }
    });
  });
</script>

</body>
</html>