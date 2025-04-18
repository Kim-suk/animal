<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>어린 고양이</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/js/jquery-ui.js"></script>
<style>
@charset "utf-8";

#mainVisual{overflow:hidden;position:relative;width:100%;height:935px}

/* 이미지 */
#mainVisual .main_img{
opacity:1;position:absolute;left:0;top:0;z-index:10;width:100%;
height:935px;margin-left:0px;-webkit-transition:all 1s;transition:all 1s}
#mainVisual .main_img li {
    opacity: 0; /* 투명도 0에서 1로 수정 */
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    transition: all 1s;
    visibility: visible; /* visibility 속성 추가 */
}
   
   #mainVisual .main_img li.img01 {
      background-image: url("/animal/resources/image/img01.jpg");
   }
   #mainVisual .main_img li.img02 {
     background-image: url("/animal/resources/image/cat1.jpg");
   }
   #mainVisual .main_img li.img03 {
     background-image: url("/animal/resources/image/cat2.jpg");
   }
   
 /* 추가한 부분 */
   #mainVisual .main_img li.on {
    opacity: 1;
    z-index: 11;
    visibility: visible; /* 이미지가 보이게 하기 */
}

/* 텍스트 */
#mainVisual .main_txt{opacity:0;position:absolute;bottom:215px;left:110px;z-index:15;margin-left:-20px;color:#fff;font-family:'notokr-regular'}
#mainVisual .main_txt .txt1{padding-bottom:25px;font-size:50px;line-height:1.3;color:#fff;letter-spacing:-.2px;font-family:'notokr-bold'}
#mainVisual .main_txt .txt2{font-size:17px;line-height:1.8;color:rgba(255,255,255,.7)}
 
/* 페이저 */
#mainVisual .pager_dot{display:flex;opacity:0;position:absolute;bottom:108px;left:110px;z-index:20}
#mainVisual .pager_dot li{width:12px;height:12px;border-radius:50%;;font-size:0;background-color:rgba(255,255,255,.8);-webkit-transition:all .2s;transition:all .2s}
#mainVisual .pager_dot li+li{margin-left:10px}
#mainVisual .pager_dot li:hover{cursor:pointer}
#mainVisual .pager_dot li.on{border:2px solid #fff;background:none}

   body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f0f0f0;
      margin: 60px auto;
    }
       

    .tab-button {
      font-size: 16px;
    }



    .cat-text {
      max-width: 500px;
    }

    .cat-text h1 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .cat-text p, section p {
      font-size: 20px;
      line-height: 1.6;
      color: #333;
    }

   h2 {
  margin-top: 20px;
  color: #000;
  font-size: 50px;
  font-weight: 700;
  font-family: 'Nanum Pen Script', cursive;
}

    ul.toc {
      list-style-type: none;
      padding-left: 0;
      font-size:20px;
    }

    ul.toc li {
      margin: 10px 0;
    }

    ul.toc li::before {
      content: "🔹";
      margin-right: 8px;
    }

    section {
      background: #fff;
      padding: 40px;
      border-radius: 20px;
      margin: 40px auto;
      max-width: 900px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    }
      .tab-button {
        font-size: 16px;
    }

    .tab-button.active {
        background-color: #ff4b5c;
        color: white;
        border-color: #ff4b5c;
    }

    .tab-panel {
        display: none;
    }

    .tab-panel:not(.hidden) {
        display: block;
    }

    .hidden {
        display: none;
    }

    .tab-content {
        margin-top: 20px;
    }
    .apple{
            appearance: none;
    background: rgb(226, 0, 26);
    border-color: rgb(226, 0, 26);
    border-width: 2px;
    border-radius: 2em;
    border-style: solid;
    color: rgb(255, 255, 255);
    cursor: pointer;
    font-family: "Nanum Gothic", Arial, sans-serif;
    font-size: 20px;
    font-weight: 500;
    line-height: 1.625rem;
    max-width: 100%;
    overflow: hidden;
    padding: 0.5625rem 2rem;
    position: relative;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    width: auto;
}
@media screen and (max-width: 768px) {
  #mainVisual {
    height: auto;
  }
  #mainVisual .main_txt {
    left: 30px;
    bottom: 100px;
    font-size: 14px;
  }
}
</style>

<script>
/* щ씪 대뱶*/
var n=0;
     
function view(n){
    //硫붿씤 대 吏 
   $("#mainVisual .main_img li").stop().removeClass('on');
    $("#mainVisual .main_img li").eq(n).stop().addClass('on');
   
   // 섏씠  
   $("#mainVisual .pager_dot li").stop().removeClass('on');
    $("#mainVisual .pager_dot li").eq(n).stop().addClass('on');
};
   
var cnt = 3;/*媛 닔議곗젅*/
function move(i){
   if(i==1){
       n++;
   }else{
      n--;   
   }
   
    if(n<0){
        n=cnt-1;               
        view(n);
   }else if(n<cnt) {
        view(n);
    }else{
        n=0;               
        view(n);
    };
}; 

sTimer1=setInterval("move(1)",4000); 

$(document).ready(function(){
   var pg_n = 0;
   
   view(0);
   
   $("#mainVisual .pager_dot li").click(function(){
      pg_n = $(this).index();
      clearInterval(sTimer1);
      $("#mainVisual .pager_dot li").removeClass("on");
      $("#mainVisual .pager_dot li").eq(pg_n).stop().addClass('on');
      $("#mainVisual .main_img li").removeClass("on");
      $("#mainVisual .main_img li").eq(pg_n).stop().addClass('on');
   });
   setTimeout(function() {$("#mainVisual").addClass("on")},0);
   $('#mainVisual .main_txt').delay(200).animate({"opacity":"1","margin-left":"0"},1000);
   $('#mainVisual .pager_dot').delay(200).animate({"opacity":"1"},1000);
});
</script>

</head>
<body>
            
<!-- 메인 비주얼이미지 영역 -->
<div id="main_banner">
   <div id="mainVisual">
   <ul class="main_img">
     <li class="on img01"></li>
      <li class="img02"></li>
      <li class="img03"></li>                
   </ul>
   
    <div class="main_txt">
        <p class="txt1">새끼 고양이를 위한<br><br/>필수 케어 가이드</p>
        <p class="txt2"><p>
            새끼 고양이는 생후 첫 해가 건강적으로 가장 취약한 시기입니다.<br> 이 시기의 올바른 케어는 평생의 건강을
            결정짓습니다.<br>
            <br> 초보 보호자이든, 다시 복습하고자 하는 분이든,<br> 이 가이드를 통해 새끼 고양이를 건강하게
            키우는 방법을 확인해 보세요.
            </p>
    </div>
    <div class="pager_area">
        <ul class="pager_dot">
            <li class="on">01</li>
            <li>02</li>
            <li>03</li>
        </ul>
   </div>    
</div></div>
<section style=margin-top:"0px;">
<h2>해당 페이지에서는 다음과 같은 정보를 확인할 수 있습니다.</h2>
         <ul class="toc">
            <li><a href="#first">1. 새끼 고양이 성장에 대한 기초 지식</a></li>
            <li><a href="#second">2. 새끼 고양이를 맞이하기 위한 준비</a></li>
            <li><a href="#third">3. 영양 요소에 따른 급여 방법</a></li>
            <li><a href="#fourth">4. 새끼 고양이 케어 방법</a></li>
         </ul>
         </section>

   <!-- SECTION 1 -->
   <section id="first">
      <div>
         <h2>1. 새끼 고양이 성장에 대한 기초 지식</h2>
         <br>
         <p>
            생후 첫해에 새끼 고양이는 여러 성장 단계를 거치게 되며, 각 단계마다 신체적, 인지적 변화가 생깁니다.
           나의 반려묘의 성장 단계를 파악하고 있다면 더욱 자신 있게 새끼 고양이의 성장을 도울 수 있습니다.<br></p>
         <br><br>
         <p>모든 연구에 따르면 고양이의 평생 건강은 어린 시절의 탄탄한 기초에서부터 시작됩니다. 갓 태어난 새끼 고양이에서
            성묘로 성장함에 따라 필요로 하는 영양 요구량 또한 달라집니다. 성장 단계별 최적의 건강을 위해 필요한 것이 무엇인지
            파악한다면, 고양이의 성장을 위해 필요한 모든 것들을 제공하는 데 도움이 될 것입니다.</p><br>
         <p>
            새끼 고양이를 키우는 것은 어렵지 않습니다. 하지만 반려동물을 처음 키우거나, 키우는 것을 고려하고 있는 분이라면 분명
            궁금한 점이 많으실 텐데요. 새끼 고양이가 달마다 어떻게 성장하고, 어떻게 훈련을 시키는지, 또는 얼마나 빠른 속도로
            성장하는지, 성장기 및 성묘가 되는 시기는 언제인지 등 고민이 많으실 겁니다. <br>
         </p>
      </div>
   </section>
<section class="p-8 bg-gray-100">
  <!-- 탭 버튼 영역 -->
   <div class="flex justify-center space-x-4 mb-6">
    <button class="tab-button px-4 py-2 bg-gray-200 rounded active" data-tab="vision">시각</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="immunity">면역력</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="weight">체중</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="bone">뼈</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="growth">성장</button>
  </div>

  <!-- 탭 내용 -->
  <div class="tab-content bg-white shadow-md rounded-xl p-6 text-center">
    <div id="vision" class="tab-panel">
      <h3 class="text-lg font-bold text-red-500 mb-2">시각</h3>
      <p class="text-gray-600">새끼 고양이의 시력 및 시각과 관련된 공간 지각력이 완전히 발달하려면 최대 4주가 걸립니다.</p>
    </div>
    <div id="immunity" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">면역력</h3>
      <p class="text-gray-600">생후 6개월 동안 새끼 고양이는 미성숙한 면역 체계로 수많은 세균으로부터 자신을 보호해야 합니다.</p>
    </div>
    <div id="weight" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">3배로 늘어나는 체중</h3>
      <p class="text-gray-600">고양이는 태어나서 일주일 만에 체중이 2배, 3주 만에 3배로 늘어나는 급격한 성장을 보입니다.</p>
    </div>
    <div id="bone" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">튼튼한 뼈</h3>
      <p class="text-gray-600">생후 첫해 동안 새끼 고양이의 뼈는 콘크리트보다 네 배 강해질 정도로 빠르게 자랍니다.</p>
    </div>
    <div id="growth" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">놀라운 성장</h3>
      <p class="text-gray-600">새끼 고양이는 생후 6개월 동안 10세 어린이만큼 성장하는 경이로운 속도를 보여줍니다.</p>
    </div>
  </div>
</section>

   

<script>
    // 탭 버튼 클릭 이벤트 처리
    const tabButtons = document.querySelectorAll(".tab-button");
    const tabPanels = document.querySelectorAll(".tab-panel");

    tabButtons.forEach(button => {
        button.addEventListener("click", () => {
            const targetId = button.getAttribute("data-tab");

            // 버튼 스타일 초기화
            tabButtons.forEach(btn => {
                btn.classList.remove("active");
            });

            // 클릭한 버튼 활성화
            button.classList.add("active");

            // 모든 패널 숨기기
            tabPanels.forEach(panel => {
                panel.classList.add("hidden");
            });

            // 클릭한 탭 패널 보여주기
            document.getElementById(targetId).classList.remove("hidden");
        });
    });
</script>
   <section>
      <h2>출생부터 성묘가 되기까지 새끼 고양이의 발달</h2>
       <a href="https://www.royalcanin.com/kr/cats/kitten/kitten-development-from-birth-to-adulthood">
      <img src="/animal/resources/image/catgrow.gif" width="500px">
      <p class="apple">자세히 알아보기</p></a></section>
   

   <section id="second">
      <h2>2. 새끼 고양이를 맞이하기 위한 준비</h2>
      <br>

      <p>새끼 고양이를 새식구로 입양하는 것은 신나는 일입니다. 그러나 사전 준비 없이는 초기 단계가 다소 혼란스러울 수도
         있습니다. 좋은 소식은 꼭 그럴 필요는 없다는 것입니다!</p>
      <p>여러분의 새로운 새끼 고양이는 앞으로 무궁한 성장과 발달 그리고 애정을 경험하게 될 것입니다. 고양이를 맞이하기
         위해서는 고양이가 건강한 성묘로 거듭날 수 있도록 필수 요소들에 대한 지식이 필요합니다.</p>
      <p>여러분이 꿈꾸는 골골송을 부르는 행복하고 건강한 고양이를 키우는 데 필요한 모든 정보를 선별하였습니다.</p><br>

   </section>

   <section id="third">
      <h2>3. 영양 요소에 따른 새끼 고양이 급여 방법</h2>
    <img src="https://cdn.royalcanin-weshare-online.io/vlc47YwBBKJuub5q0xhB/v3/abyssinian-adult-brand-emblematic-4-3"
         width="200px">

      <p>새끼 고양이는 성장하면서 특별한 식단을 필요로 합니다.<br> 새끼 고양이에게 무엇을 먹일지, 심지어 어떻게 먹여야
         할지 궁금해하는 것은<br> 지극히 정상적인 일입니다. 새끼 고양이가 필요로 하는 기본 영양소에 대한 지식이 있으면
         성장 단계에 따라 필요한 영양소가 포함된 식단을 고르는 것은 그리 어렵지 않습니다. (힌트: 성묘와는 완전히 다른 니즈가
         있답니다!) 반려묘의 건강한 미래를 위해 새끼 고양이의 식단 및 영양학적 니즈에 대하여 알아보세요.
   </section>

   <section id="fourth">
      <h2>4. 새끼 고양이 케어 방법</h2>
      <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCvf">
         <div data-qa="rich-text">
            <div class="sc-7ac1f6cf-0 dUwySw">
               <div>
                  <br>
                  <p>
                     어미 고양이는 새끼 고양이들이 건강한 삶을 시작하는데 필요한 영양, 면역력 및 사회성을 제공합니다.<br>
                      그렇기 때문에 새끼 고양이가 어미를 <br> 떠나는 순간부터 성장에 필요한 전부를 보호자에게 의지하게 됩니다.
                  </p>
                  <p>새끼 고양이의 면역체계는 아직 완전하지 않습니다. 어미 고양이가 수유를 중단하고 고체의 음식을 먹이기
                     시작하면, 새끼 고양이의 면역이 감소하고 동시에 각종 질병에 취약해질 수 있습니다. 따라서 새끼 고양이의 건강한
                     미래를 위한 첫 걸음은 바로 동물병원을 방문하는 것입니다.</p>
                  <p>일반적으로 새끼 고양이 건강 관리로는 정기적인 건강 검진, 백신 접종, 기생충 예방 및 구강 케어가
                     있으며, 모두 새끼 고양이의 건강에 필수적입니다. 집 근처의 좋은 수의사를 찾는 것은 새끼 고양이를 돌보는 과정에
                     있어 필요한 정보를 얻을 수 있는 좋은 자원이 될 것입니다.</p><br>
               </div>
            </div>
         </div>
      </div>
   </section>
   <section>
   <img src="https://cdn.royalcanin-weshare-online.io/s1f0FIsBBKJuub5qywoB/v3/bengal-kitten-emblematic-v2"
      width="200px">
   <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCv f">
      <div data-qa="title-and-paragraph" class="sc-5a34121c-0 gjbtb">
         <h2 class="sc-e30fa0b4-0 jVZGT sc-5a34121c-1 dxAFlT">새끼 고양이를 위한 필수 케어 가이드</h2>
         <div class="sc-7ac1f6cf-0 dUwySw">
            <div>
               <p>다른 어린 반려동물과 마찬가지로 작은 새끼 고양이는 연약한 상태에서 새로운 삶을 시작하게 됩니다. 생후
                  첫해가 건강이 가장 취약한 시기이지만, 이 시기는 머지않아 지나갑니다. 새끼 고양이는 빠르게 성장하며 성묘로 성장하는
                  동안 건강을 위해 필요한 전부를 보호자에게 의지하게 됩니다.</p><br>
               <p>
                  새끼 고양이를 처음 케어 해보시거나, 새끼 고양이를 돌보기 위한 자세한 내용을 다시 한번 숙지하고 싶거나, 또는 새끼
                  고양이 입양을 위한 정보를 찾고 있는 분이신가요? 해당 케어 가이드를 통해 여러분이 반려묘의 삶을 위한 최고의 출발을
                  함께하고 평생 동안 지속적으로 돌보는 데 필요한 정보를 확인해 보세요.<br>
                  
               </p>
            </div>
         </div>
      </div>
   </div>
   </section>
  
</body>
</html>
