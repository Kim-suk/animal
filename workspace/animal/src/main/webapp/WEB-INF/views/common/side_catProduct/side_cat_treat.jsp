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
        <h2 class="text-xl font-semibold mb-4">간식</h2>

        <!-- 연령 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>급여대상</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">전연령</label>
                <label class="block"><input type="checkbox" class="mr-2">키튼 (0-1세)</label>
                <label class="block"><input type="checkbox" class="mr-2">어덜트 (1-7세)</label>
            </div>
        </div>

        <!-- 무게 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>종류</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">캔</label>
                <label class="block"><input type="checkbox" class="mr-2">짜먹는 간식/퓨레</label>
                <label class="block"><input type="checkbox" class="mr-2">동결건조</label>
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
            </div>
        </div>


        <!-- 알갱이 크기 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>기능</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">눈물개선/눈건강</label>
                <label class="block"><input type="checkbox" class="mr-2">다이어트</label>
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
