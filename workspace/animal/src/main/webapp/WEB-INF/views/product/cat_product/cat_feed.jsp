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
            <main class="flex-1 p-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                <!-- 상품 카드 반복 예시 -->
                <c:forEach var="product" items="${productList}">
					<div class="bg-white p-4 rounded-xl shadow text-center">
						<img src="${product.image_url}" alt="제품 이미지">
						<h4>${product.name}</h4>
						<p>${product.category}</p>
						<a href="/animal/product/product.do?id=${product.id}">제품 보기 →</a>
					</div>
				</c:forEach>

                <!-- 여기에 더 많은 제품 카드 추가 가능 -->
            </main>
        </div>
    </div>

</body>
</html>
