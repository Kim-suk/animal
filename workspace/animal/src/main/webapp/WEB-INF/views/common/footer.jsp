<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const linkElement = document.getElementById("link");
        linkElement.href = linkElement.href.replace("http://localhost:8080/", "");
        linkElement.textContent = linkElement.href; // 텍스트도 변경
    });
</script>

<script>
    function isMobile() {
        return /Mobi|Android/i.test(navigator.userAgent);
    }

    function handleContact() {
        if (isMobile()) {
            location.href = "tel:01056199939";
        } else {
            document.getElementById("contact-text").style.display = "block";
        }
    }
</script>

<style>
    .footer {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        padding: 30px;
        background-color: #333;
        color: white;
        font-size:12px;
    }

    .footer-column {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .footer-column a {
        color: #ccc;
        text-decoration: none;
    }

    .footer-column a:hover {
        color: white;
    }

    .footer-column p {
        margin: 0;
    }
</style>

<body>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const linkElement = document.getElementById("link");
        linkElement.href = linkElement.href.replace("http://localhost:8080/", "");
        linkElement.textContent = linkElement.href;
    });
</script>

<div class="footer">
    <div class="footer-column">
        <a href="https://www.zooseyo.or.kr">https://www.zooseyo.or.kr | 유기견</a>
        <a href="https://tools.mypetlife.co.kr/adoption/adopt">https://tools.mypetlife.co.kr/adoption/adopt | 보호소 입양</a>
        <a href="https://mypetlife.co.kr/">https://mypetlife.co.kr/ |  반려동물 문화연구소 마이펫라이프</a>
        <a href="https://www.animal.go.kr/front/index.do">https://www.animal.go.kr/front/index.do | 국가 동물 보호 정보 시스템</a>
        <a href="https://www.ekara.org/">https://www.ekara.org/ | 동물자유연대</a>
    </div>
    
    <div class="footer-column">
    	 <a href="https://www.mars.com/privacy-policy-korean#cookies">개인정보보호준칙</a>
        <a href="https://www.mars.com/privacy-policy-korean#cookies">쿠키</a>
        <a href="https://www.mars.com/legal-korea">이용약관</a>
        <a href="https://www.mars.com/accessibility-korean">접근성</a>
		<a href="https://www.copyright.or.kr" target="_blank">한국저작권위원회</a> 
		<a href="/policy/copyright.do">저작권 정책</a> 
		
    </div>
    
    <div class="footer-column">
        <a href="/animal/cat/cat_about.do">🐾 고양이</a>
        <a href="/animal/dog/dog_about.do">🐕 강아지</a>
        <p>월요일 - 금요일: 오전 9시 ~ 오후 6시</p>
        <p>점심시간 12시 ~ 1시</p>
        
         </div>
    <div class="footer-column">
    <a href="#" onclick="handleContact()">1:1 자주 묻는 질문</a>
	<p id="contact-text" style="display: none; color: white;">☎️ 문의: 010 - 5619 - 9939</p>
	 <a href="/animal">회사 소개</a>
    <a href="https://www.instagram.com/petnow.official/">📧 @petnow.official | 반려동물 실종 방지와 보호를 위한 서비스 제공</a>
    <a href="https://www.instagram.com/vip_amc/" > VIP동물의료센터 | @vip_amc</a>
    <a href="https://www.pet-news.or.kr/"> 한국 반려 동물 뉴스 </a>
    <a href="https://www.hani.co.kr/arti/animalpeople/companion_animal"> 정보 </a>
</div>
      <p> © 2025 반려묘/견 사이트 | 모든 콘텐츠는 저작권의 보호를 받습니다.</p>
    </div>
    
    
    
</body>