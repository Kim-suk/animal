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
        <h2 class="text-xl font-semibold mb-4">장난감</h2>

        <!-- 종류 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>종류</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">볼</label>
                <label class="block"><input type="checkbox" class="mr-2">낚시대/막대</label>
                <label class="block"><input type="checkbox" class="mr-2">터널/주머니</label>
            </div>
        </div>

        <!-- 소리유무 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>소리유무</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">소리있음</label>
            </div>
        </div>

        <!-- 형태 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>형태</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">평판형</label>
                <label class="block"><input type="checkbox" class="mr-2">하우스형</label>
                <label class="block"><input type="checkbox" class="mr-2">기둥형</label>
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
