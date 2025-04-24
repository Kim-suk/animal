<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>

<style>
/* 왼쪽 사이드바 고정 */
/* 메인 레이아웃 높이를 계산하여 나머지 영역 채움 */
#sidebar-product {
  position: sticky;
  top: 80px;         /* header 높이 */
  bottom: 60px;      /* footer 높이 */
  height: auto;
}


/* 오른쪽 본문은 사이드바 너비만큼 왼쪽으로 여백 줌 */
.container {
   margin-left: 220px;
}

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
  #main_banner .txt .main_txt h1{font-size:190px;color:#fff;font-family:var(--e-font);margin-top:600px}
  
</style>
<meta charset="UTF-8">
<!-- Tailwind CSS CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"  href="/animal/resources/css/main_banner_style.css">
<link rel="stylesheet" href="/animal/resources/css/main.css">
<link rel="stylesheet" href="/animal/resources/css/default.css">
<link rel="stylesheet" href="/animal/resources/css/top_nav.css">
<script type="text/javascript" src="/animal/resources/script/aos.js"></script>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
<div id="main_banner" style="position: relative; overflow: hidden;">
            <!-- 배경 영상 -->
            <video autoplay loop muted playsinline preload="auto" id="myVideo"
               style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: 0;">
               <source src="/animal/resources/upload/dog_product.mp4" type="video/mp4" />
            </video>

            <!-- 어두운 오버레이 -->
            <div class="overlay"
               style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.4); z-index: 1;"></div>

            <!-- 텍스트 및 컨트롤 -->
            <div class="txt" style="position: relative; z-index: 2;">
               <div class="main_txt">
             <h1 class="ko_txt aos-init aos-animate" data-aos="fade-left"
                     style="color: white;">
                     Turning Ideas
                   
                  </h1>
               </div>
            </div>
         </div>

   <div class="container mx-auto p-6">

      <div class="flex" style="margin-left: 150px">


         <!-- 제품 리스트 -->
         <main
            class="flex-1 p-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
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
