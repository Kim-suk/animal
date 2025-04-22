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
    <h2 class="text-xl font-semibold mb-4">사료</h2>

    <!-- 필터 체크박스 -->
    <div id="filterForm">
      <!-- 연령 -->
      <div class="filter-group">
        <div class="section-toggle" onclick="toggleSection(this)">
          <span>연령</span><span class="toggle-icon">▼</span>
        </div>
        <div class="filter-options">
          <label><input type="checkbox" name="연령" value="전연령"> 전연령</label>
          <label><input type="checkbox" name="연령" value="퍼피"> 퍼피</label>
          <label><input type="checkbox" name="연령" value="어덜트"> 어덜트</label>
        </div>
      </div>

      <!-- 무게 -->
      <div class="filter-group">
        <div class="section-toggle" onclick="toggleSection(this)">
          <span>무게</span><span class="toggle-icon">▼</span>
        </div>
        <div class="filter-options">
          <label><input type="checkbox" name="무게" value="2KG이하"> 2KG 이하</label>
          <label><input type="checkbox" name="무게" value="10KG이하"> 2이상 ~ 10KG 이하</label>
          <label><input type="checkbox" name="무게" value="10KG초과"> 10KG 초과</label>
        </div>
      </div>

      <!-- 주원료 -->
      <div class="filter-group">
        <div class="section-toggle" onclick="toggleSection(this)">
          <span>주원료</span><span class="toggle-icon">▼</span>
        </div>
        <div class="filter-options">
          <label><input type="checkbox" name="주원료" value="소"> 소</label>
          <label><input type="checkbox" name="주원료" value="돼지"> 돼지</label>
          <label><input type="checkbox" name="주원료" value="닭"> 닭</label>
        </div>
      </div>

      <!-- 알갱이 크기 -->
      <div class="filter-group">
        <div class="section-toggle" onclick="toggleSection(this)">
          <span>알갱이크기</span><span class="toggle-icon">▼</span>
        </div>
        <div class="filter-options">
          <label><input type="checkbox" name="알갱이크기" value="작은알갱이"> 작은알갱이</label>
          <label><input type="checkbox" name="알갱이크기" value="보통알갱이"> 보통알갱이</label>
          <label><input type="checkbox" name="알갱이크기" value="큰알갱이"> 큰알갱이</label>
        </div>
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
