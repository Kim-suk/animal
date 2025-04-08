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
        <h2 class="text-xl font-semibold mb-4">이동장</h2>

        <!-- 허용 무게 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>허용 무게</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">1.5kg 이하</label>
                <label class="block"><input type="checkbox" class="mr-2">3~5kg</label>
                <label class="block"><input type="checkbox" class="mr-2">10kg 이상</label>
            </div>
        </div>

        <!-- 종류 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>종류</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">케리어/이동가방</label>
                <label class="block"><input type="checkbox" class="mr-2">백팩</label>
                <label class="block"><input type="checkbox" class="mr-2">켄넬/이동장</label>
            </div>
        </div>

        <!-- 실내/실외용 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>실내 실외용</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">실외용</label>
                <label class="block"><input type="checkbox" class="mr-2">실내외겸용</label>
                <label class="block"><input type="checkbox" class="mr-2">실내용</label>
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
