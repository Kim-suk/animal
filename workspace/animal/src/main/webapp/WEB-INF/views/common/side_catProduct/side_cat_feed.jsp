<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>필터</title>
    <style>
        .section-toggle {
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .toggle-icon {
            font-size: 14px;
            margin-left: 5px;
        }

        .filter-group {
            margin-bottom: 20px;
        }

        .filter-options {
            margin-top: 5px;
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <aside class="w-64 p-4 border-r bg-white rounded-lg shadow-sm">
        <h2 class="text-xl font-semibold mb-4">사료</h2>

        <!-- 연령 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>연령</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">전영령</label>
                <label class="block"><input type="checkbox" class="mr-2">키튼 (0-1세)</label>
                <label class="block"><input type="checkbox" class="mr-2">어덜트 (1-7세)</label>
               <!--  <hr style="margin: 10px 0; border: none; border-top: 1px solid #ccc;"> -->
           
            </div>
        </div>

        <!-- 무게 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>무게</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">2KG 이하</label>
                <label class="block"><input type="checkbox" class="mr-2">2이상 ~ 10KG 이하</label>
                <label class="block"><input type="checkbox" class="mr-2">10KG이상</label>
            </div>
        </div>

        <!-- 주원료 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>주원료</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">소</label>
                <label class="block"><input type="checkbox" class="mr-2">돼지</label>
                <label class="block"><input type="checkbox" class="mr-2">닭</label>
                <label class="block"><input type="checkbox" class="mr-2">오리</label>
            </div>
        </div>


        <!-- 알갱이 크기 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>알갱이크기</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">작은알갱이 (8mm미만)</label>
                <label class="block"><input type="checkbox" class="mr-2">보통알갱이(8~13mm)</label>
                <label class="block"><input type="checkbox" class="mr-2">큰알갱이(13mm이상)</label>
            </div>
        </div>

    </aside>

    <script>
        function toggleSection(headerEl) {
            const options = headerEl.nextElementSibling;
            const icon = headerEl.querySelector(".toggle-icon");

            options.classList.toggle("hidden");
            icon.textContent = options.classList.contains("hidden") ? "▲" : "▼";
        }
    </script>
</body>
</html>
