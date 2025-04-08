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
        
        .filter-group {
 	 	  margin-bottom: 12px;
  		  padding-bottom: 8px;
  		  border-bottom: 1px solid #ddd;
		}

        .filter-group {
            margin-bottom: 20px;
        }
	
		.custom-link {
            text-decoration: none;
            color: black;
            transition: transform 0.2s;
        }

        .custom-link:hover {
            transform: scale(1.2);
        }
        
    </style>
</head>
<body>
    <aside class="w-64 p-4 border-r bg-white rounded-lg shadow-sm">
        <h2 class="text-xl font-semibold mb-4">필터</h2>

        <!-- 사료 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_feed.do" class="custom-link">사료</a>
            </div>

        </div>

        <!-- 간식 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_treat.do" class="custom-link">간식</a>
            </div>

        </div>

        <!-- 모래 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_sand.do" class="custom-link">모래</a>
            </div>
          
        </div>

        <!-- 이동장 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_carrier.do" class="custom-link">이동장</a>
            </div>
          
        </div>

        <!-- 장난감 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_dish.do" class="custom-link">장난감</a>
            </div>
           
        </div>

        <!-- 목욕용품 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                <a href="cat_bath.do" class="custom-link">목욕용품</a>
            </div>
           
        </div>

        <!-- 하우스 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_house.do" class="custom-link">하우스</a>
            </div>
          
        </div>

        <!-- 식기 -->
        <div class="filter-group">
            <div class="section-toggle" onclick="toggleSection(this)">
                 <a href="cat_dish.do" class="custom-link">식기</a>
            </div>
           
        </div>
    </aside>


</body>
</html>
