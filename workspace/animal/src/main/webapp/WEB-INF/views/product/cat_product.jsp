<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Tailwind CSS CDN -->
<script src="https://cdn.tailwindcss.com"></script>
<style>
  /* 이미지 확대 효과 */
  .product img {
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* 확대와 그림자 부드럽게 적용 */
    border-radius: 10px; /* 이미지 모서리 둥글게 */
  }

  .product img:hover {
    transform: scale(1.15); /* 1.15배 확대 */
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* 확대 시 그림자 효과 */
  }

  /* 이미지 컨테이너의 마우스 오버 효과 */
  .product:hover img {
    transform: scale(1.15); /* 이미지 확대 */
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3); /* 더 강한 그림자 효과 */
  }
</style>
</head>
<body class="bg-gray-50">

	<div class="container mx-auto p-6">

		<div class="flex">
			
			<div class="flex-1">

				<!-- ✅ 선택된 필터 목록 표시 -->
				<div class="flex flex-wrap gap-2 mb-4 items-center text-sm" id="filter-list">
					<c:forEach var="entry" items="${paramValues}">
						<c:forEach var="val" items="${entry.value}">
							<div class="bg-blue-100 text-blue-800 px-3 py-1 rounded-full">
								${entry.key} : ${val}
							</div>
						</c:forEach>
					</c:forEach>

					<!-- 필터 초기화 버튼 (X) -->
					<div id="clear-filters" class="hidden ml-auto text-red-500 text-lg font-bold hover:text-red-700 cursor-pointer">
						<!-- SVG 아이콘으로 디자인 변경 -->
						<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-6 h-6">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
						</svg>
					</div>
				</div>

				<!-- ✅ 제품 리스트 -->
				<main class="p-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
					<c:forEach var="product" items="${productList}">
						<div class="product bg-white p-4 rounded-xl shadow text-center"
							data-id="${product.id}">
							<img src="${product.image_url}" alt="제품 이미지" class="w-full h-auto object-cover">
							<h4 class="text-lg font-semibold mt-2">${product.name}</h4>
							<p class="text-gray-500">${product.category}</p>

							<!-- ❤️ 좋아요 버튼 -->
							<button id="like-btn-${product.id}"
								onclick="likeProduct(${product.id})"
								class="text-red-500 hover:scale-110 transition transform duration-200">🤍</button>

							<span id="like-${product.id}">0</span>
							<a class="block text-blue-500 hover:underline mt-2"
								href="/animal/product/product.do?id=${product.id}"> 제품 보기 → </a>
						</div>
					</c:forEach>
				</main>
			</div>
		</div>
	</div>

	<script>
		// 필터 목록이 있을 때만 X 버튼 표시
		function toggleClearButton() {
			const filterList = document.getElementById('filter-list');
			const clearButton = document.getElementById('clear-filters');
			
			// 필터 목록이 하나라도 있으면 X 버튼을 보이도록 설정
			if (filterList.querySelectorAll('.bg-blue-100').length > 0) {
				clearButton.classList.remove('hidden');
			} else {
				clearButton.classList.add('hidden');
			}
		}

		// 필터 초기화 함수 (URL에서 필터 파라미터 제거)
		function clearFilters() {
			const currentUrl = new URL(window.location.href);
			
			// URL에서 필터 파라미터 제거
			currentUrl.searchParams.forEach((value, key) => {
				if (key !== 'page') { // 필터 관련 파라미터만 제거
					currentUrl.searchParams.delete(key);
				}
			});
			
			// 필터를 초기화한 새 URL로 리디렉션 (페이지 리로드)
			window.location.href = currentUrl.toString();
		}

		// 페이지 로드 시 필터 목록과 X 버튼 상태 초기화
		window.addEventListener('load', toggleClearButton);

		// X 버튼 클릭 시 필터 초기화
		document.getElementById('clear-filters')?.addEventListener('click', clearFilters);
	</script>

</body>
</html>

