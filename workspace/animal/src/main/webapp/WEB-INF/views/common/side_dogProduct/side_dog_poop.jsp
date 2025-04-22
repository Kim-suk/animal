<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>필터</title>
  <style>
    .section-toggle { display: flex; justify-content: space-between; align-items: center; cursor: pointer; margin-bottom: 8px; font-weight: bold; }
    .toggle-icon { font-size: 14px; margin-left: 5px; }
    .filter-group { margin-bottom: 20px; }
    .filter-options { margin-top: 5px; }
    .hidden { display: none; }
  </style>
</head>
<body>
  <aside class="w-64 p-4 border-r bg-white rounded-lg shadow-sm">
    <h2 class="text-xl font-semibold mb-4">배변용품</h2>

    <!-- 필터 체크박스 -->
    <div id="filterForm">
      <!-- 배변용품 -->
      <div class="filter-group">
        <div class="section-toggle" onclick="toggleSection(this)">
          <span>배변용품</span><span class="toggle-icon">▼</span>
        </div>
        <div class="filter-options">
          <label><input type="checkbox" name="종류" value="배변패드"> 배변패드</label>
          <label><input type="checkbox" name="종류" value="배변판"> 배변판</label>
          <label><input type="checkbox" name="종류" value="탈취제"> 탈취제</label>
        </div>
      </div>

      <!-- 크기 -->
      <div class="filter-group">
        <div class="section-toggle" onclick="toggleSection(this)">
          <span>크기</span><span class="toggle-icon">▼</span>
        </div>
        <div class="filter-options">
          <label><input type="checkbox" name="크기" value="일반향"> 일반향</label>
          <label><input type="checkbox" name="크기" value="대형"> 대형</label>
          <label><input type="checkbox" name="크기" value="특대형"> 특대형</label>
        </div>
      </div>

  </aside>

  <script>
    // 토글 섹션 기능
    function toggleSection(headerEl) {
      const options = headerEl.nextElementSibling;
      const icon = headerEl.querySelector(".toggle-icon");
      options.classList.toggle("hidden");
      icon.textContent = options.classList.contains("hidden") ? "▲" : "▼";
    }

    window.addEventListener("DOMContentLoaded", () => {
        const checkboxes = document.querySelectorAll('#filterForm input[type="checkbox"]');
        const params = new URLSearchParams(window.location.search);

        // ✅ 페이지 로딩 시 체크 상태 유지
        checkboxes.forEach(cb => {
          const values = params.getAll(cb.name);
          if (values.includes(cb.value)) {
            cb.checked = true;
          }
        });

        // ✅ 클릭 시 필터 적용
        checkboxes.forEach(cb => {
          cb.addEventListener("change", () => {
            const newParams = new URLSearchParams();

            checkboxes.forEach(box => {
              if (box.checked) {
                newParams.append(box.name, box.value);
              }
            });

            // URL 갱신 (GET 요청)
            window.location.href = window.location.pathname + '?' + newParams.toString();
          });
        });
      });
  </script>
</body>
</html>
