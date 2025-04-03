<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>네비게이션 바</title>

    <!-- jQuery 및 Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        $(document).ready(function(){
            $(".nav-item").hover(
                function(){ 
                    $(this).find(".submenu").stop(true, true).slideDown(200); 
                }, 
                function(){ 
                    $(this).find(".submenu").stop(true, true).slideUp(0); 
                }
            );
        });
    </script>

    <style>
        /* 네비게이션 바 스타일 */
        .navbar {
            background-color: #f8f9fa;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            height: 60px; /* 전체 높이 설정 */
            display: flex;
            align-items: center; /* 중앙 정렬 */
        }

        .navbar-nav {
            display: flex;
            justify-content: center;
            width: 100%;
            height: 100%; /* 높이 통일 */
            align-items: center;
        }

        .nav-item {
            position: relative;
            padding: 0 20px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            height: 100%; /* 높이 통일 */
            display: flex;
            align-items: center; /* 중앙 정렬 */
        }

        .nav-link {
            color: #333;
            transition: color 0.3s ease-in-out;
            text-decoration: none;
            line-height: 60px; /* 높이 맞추기 */
        }

        .nav-link:hover {
            color: #007bff;
        }

        /* 서브메뉴 스타일 */
        .submenu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 180px;
            border-radius: 5px;
            padding: 0;
            z-index: 1000;
        }

        .submenu li {
            list-style: none;
            padding: 12px 20px;
            font-size: 16px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        .submenu li:last-child {
            border-bottom: none;
        }

        .submenu li a {
            text-decoration: none;
            color: #333;
            display: block;
            transition: background 0.3s ease-in-out;
        }

        .submenu li a:hover {
         
            text-decoration: none;
            color: black;
        }

        /* 반응형 스타일 */
        @media (max-width: 768px) {
            .navbar-nav {
                flex-direction: column;
                align-items: center;
            }

            .nav-item {
                width: 100%;
                text-align: center;
            }

            .submenu {
                position: static;
                width: 100%;
                display: none;
                box-shadow: none;
            }
        }
        
    </style>
</head>

<body>
	<div border="1">
		<h1>계란 고냥이</h1>
	</div>
	<a href="/animal/member/loginForm.do">로그인</a>
	<a href="/animal/member/joinMember.do">회원가입</a>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <ul class="navbar-nav">
             <li class="nav-item"><a class="nav-link" href="${contextPath }/main.do">홈</a></li>
                <li class="nav-item"><a class="nav-link" href="hospital.do">동물병원</a></li>

                <li class="nav-item">고양이
                    <ul class="submenu">
                        <li><a href="${contextPath }/cat/cat_type.do">묘종</a></li>
                        <li><a href="${contextPath }/cat/cat_kitten.do">어린 고양이</a></li>
                        <li><a href="${contextPath }/cat/cat_think.do">고양이를 기를까 고민 중이신가요?</a></li>
                        <li><a href="${contextPath }/cat/cat_all.do">고양이에 대한 모든 것</a></li>
                    </ul>
                </li>

                <li class="nav-item">강아지
                    <ul class="submenu">
                        <li><a href="${contextPath }/dog/dog_type.do">품종</a></li>
                        <li><a href="${contextPath }/dog/dog_puppy.do">어린 강아지</a></li>
                        <li><a href="${contextPath }/dog/dog_think.do">강아지를 기를까 고민 중이신가요?</a></li>
                        <li><a href="${contextPath }/dog/dog_all.do">강아지에 대한 모든 것</a></li>
                    </ul>
                </li>

                <li class="nav-item">게시판
                    <ul class="submenu">
                        <li><a href="#">고양이</a></li>
                        <li><a href="#">강아지</a></li>
                        <li><a href="#">자유게시판</a></li>
                    </ul>
                </li>

                <li class="nav-item">용품
                    <ul class="submenu">
                        <li><a href="#">고양이 용품</a></li>
                        <li><a href="#">고양이 사료</a></li>
                        <li><a href="#">강아지 용품</a></li>
                        <li><a href="#">강아지 사료</a></li>
                    </ul>
                </li>

				<!--  <li class="nav-item"><a class="nav-link" href="/animal/member/loginForm.do">로그인</a></li>

                <li class="nav-item"><a class="nav-link" href="/animal/member/joinMember.do">회원가입</a></li> -->
            </ul>
        </div>
    </nav>
</body>
</html>