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
        <h2 class="text-xl font-semibold mb-4">목욕용품</h2>

        <!-- 종류 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>종류</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">샴푸</label>
                <label class="block"><input type="checkbox" class="mr-2">빗</label>
                <label class="block"><input type="checkbox" class="mr-2">타월</label>
                <label class="block"><input type="checkbox" class="mr-2">가위</label>
            </div>
        </div>

        <!-- 비듬관리 여부 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>비듬관리 여부</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">비듬관리</label>
            </div>
        </div>

        <!-- 향 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <span>향</span>
                <span class="toggle-icon">▼</span>
            </div>
            <div class="filter-options">
                <label class="block"><input type="checkbox" class="mr-2">무향</label>
                <label class="block"><input type="checkbox" class="mr-2">베이비파우더향</label>
                <label class="block"><input type="checkbox" class="mr-2">과일향</label>
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
