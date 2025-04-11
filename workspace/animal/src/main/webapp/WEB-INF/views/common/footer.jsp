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


	<p class="footer_p">
	<a href="https://www.zooseyo.or.kr">https://www.zooseyo.or.kr</a><br>
	<a href="https://tools.mypetlife.co.kr/adoption/adopt">https://tools.mypetlife.co.kr/adoption/adopt</a>
	<a href="https://www.mars.com/privacy-policy-korean#cookies">개인정보보호준칙</a>
	<a href="https://www.mars.com/privacy-policy-korean#cookies">쿠키</a>
	<a href="https://www.mars.com/legal-korea">이용약관</a>
	<a href="https://www.mars.com/accessibility	-korean">접근성</a>
	
	
	<a href="/animal/cat/cat_about.do">고양이</a>
	<a href="/animal/dog/dog_about.do">강아지</a>
	<p style="color: white;">월요일 - 금요일: 오전 9시 ~ 오후 6시 (점심시간 12시 ~ 1시)</p>
	<p style="color: white;">© 2025 반려묘 사이트 | 모든 권리 보유</p>	
	<p style="color: white;">☎️    문의하기 | 010 - 5619 - 9939</p>		

</body>

