<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>어린 고양이</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2107@1.1/BMJUA.woff.css" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/js/jquery-ui.js"></script>
<style>
@charset "utf-8";
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
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
      background-image: url("/animal/resources/image/img03.jpg");
   }
   #mainVisual .main_img li.img02 {
     background-image: url("/animal/resources/image/img02.jpg");
   }
   #mainVisual .main_img li.img03 {
     background-image: url("/animal/resources/image/img01.jpg");
   }
   
 /* 추가한 부분 */
   #mainVisual .main_img li.on {
    opacity: 1;
    z-index: 11;
    visibility: visible; /* 이미지가 보이게 하기 */
}

/* 텍스트 */
#mainVisual .main_txt{opacity:0;position:absolute;font-size:16px;bottom:215px;left:110px;z-index:15;margin-left:-20px;color:#000;font-family:'notokr-regular'}
#mainVisual .main_txt .txt1{padding-bottom:25px;font-size:50px;line-height:1.3;color:#000;letter-spacing:-.2px;font-family:'notokr-bold'}
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
      background: #f0f0f0;
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
  font-size: 40px;
  font-weight: 400;
  font-family:'notokr-regular'
}
h3{
color:#355E3B;
}
    ul.toc {
      list-style-type: none;
      padding-left: 0;
      font-size:20px;
       text-decoration:none;
    }

    ul.toc li a{
      margin: 10px 0;
      text-decoration:none;
      color:#000;
    }

    ul.toc li::before {
      margin-right: 9px;
       text-decoration:none;
    }
    .toc li:hover {
  background-color: #f0f8f5;
  border-radius: 8px;
}
    .circle-num {
  display: inline-flex;
  justify-content: center;
  align-items: center;
  width: 40px;
  height: 40px;
   margin-right: 8px;
  margin-bottom: 8px; /* 아래 간격 추가 */
  font-size: 12px;
  color: white;
  background-color: #355E3B;
  border-radius: 50%;
  font-weight: bold;
}
.circle-num:hover {
  background-color: #6DA37A;
  color: #fff;
  transform: scale(1.1);
  transition: all 0.3s ease-in-out;
}
   section {

  padding: 40px;
  margin: 40px auto;
  max-width: 900px;

}
      .tab-button {
    font-size: 16px;
    display: inline-flex;
    justify-content: center; /* 수평 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    padding: 10px 20px;
    cursor: pointer;
}

.tab-button.active {
    background-color: #355E3B;
    color: white;
    border-color: #8F9779;
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
    background: #355E3B;
    border-color: #8F9779;
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
.info-header {
  display: flex;
  align-items: center;
  gap: 1rem;
}

.emoji {
  font-size: 3rem;
  animation: bounce 1s infinite;
  margin: 0; /* 기본 여백 제거 */
}

@keyframes bounce {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-10px); }
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
        <p class="txt1">새끼 고양이를 위한<br>필수 케어 가이드</p>
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

<section>

<div class="info-header">
  <h2>해당 페이지에서는 다음과 같은 정보를 확인할 수 있습니다.</h2>
  <br><br>
  <p class="emoji">🐈</p>
</div>

<ul class="toc">
  <li><a href="#first"><span class="circle-num">1</span> 새끼 고양이 성장에 대한 기초 지식</a></li>
  <li><a href="#second"><span class="circle-num">2</span> 새끼 고양이를 맞이하기 위한 준비</a></li>
  <li><a href="#third"><span class="circle-num">3</span> 영양 요소에 따른 급여 방법</a></li>
  <li><a href="#fourth"><span class="circle-num">4</span> 새끼 고양이 케어 방법</a></li>
  <li><a href="#fifth"><span class="circle-num">5</span> 어린 반려묘의 출생부터 12주까지 주요 발달 5단계</a></li>
</ul>

</section>

   <!-- SECTION 1 -->
   <section id="first">
      <div>
         <h2>1. 새끼 고양이 성장에 대한 기초 지식</h2>
         <style>
        .cat-title {
            color: #355E3B;;
            font-size: 1.8rem;
           
        }
        .cat-desc {
            color: #555;
            font-size: 1rem;
        }
        .cat-img {
    width: 100%;
    height: 350px; /* 원하는 높이로 설정 가능 */
    object-fit: cover; /* 비율 유지하면서 잘라줌 */
    border-radius: 10px;
}
    </style>

<div class="container my-5">
    <div class="row align-items-center">
        <!-- 이미지 왼쪽 -->
        <div class="col-md-6">
            <img src="/animal/resources/image/img04.jpg" class="img-fluid rounded cat-img" alt="고양이">
        </div>

        <!-- 텍스트 오른쪽 -->
        <div class="col-md-6">
     
            <div class="cat-title">새끼 고양이 성장과 발달</div>
            <p class="cat-desc mt-3">
                고양이의 성장 속도는 무척 빠르기 때문에 새끼 고양이 시절은 눈 깜빡할 새에 지나갑니다.
                 고양이의 새로운 성장 단계마다 우리는 기분 좋은 놀라움과 즐거움을 느낄 수 있습니다. <br><br>
                 한편 이 모든 변화는 곧 새끼 고양이의 식단에 필요한 영양 요소들의 변화를 의미하기도 합니다. 
                 그들이 보호자로서 어린 반려묘가 완전한 성묘로 건강하게 자라기 위해서 무엇이 필요한지 아는 것은 매우 중요합니다.
                 
            </p>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="row align-items-center">
        <!-- 텍스트 왼쪽 -->
        <div class="col-md-6 order-md-1">
            <div class="cat-title">성장기의 고양이에겐 어떤 일이 일어나나요?</div>
            <p class="cat-desc mt-3">
         생후 첫 해에는 여러 성장 단계를 거치게 되며, 고양이와 보호자 모두 모든 많은 변화를 겪게 됩니다. 
		이 시기는 분명 흥미롭지만 동시에 항상 관심을 갖고 주의해야 하는 시기이기도 합니다. <br><br>
		4개월이라는 시간 동안 연약한 새끼 고양이에서 혈기왕성한 고양이로 성숙해지는 과정에서, 
		성장 단계 별 필요한 영양분을 충족시키는 것은 핵심적입니다.
        </div>

        <!-- 이미지 오른쪽 -->
        <div class="col-md-6 order-md-2">
            <img src="/animal/resources/image/img05.jpg" class="img-fluid rounded cat-img" alt="고양이">
        </div>
    </div>
</div>

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
      <br><br>
       <a href="https://www.royalcanin.com/kr/cats/kitten/kitten-development-from-birth-to-adulthood">
      <img src="/animal/resources/image/catgrow.gif" width="500px">
      <p class="apple">자세히 알아보기</p></a></section>
   

   <section id="second">
      <h2>2. 새끼 고양이를 맞이하기 위한 준비</h2>
    
    <style>
        .cat-slide-title {
            color: #355E3B;;
            font-size: 1.8rem;
            font-weight: bold;
        }
        .cat-slide-desc {
            color: #555;
        }
        .carousel-indicators [data-bs-target] {
            background-color: #355E3B;;
        }
        .carousel {
            touch-action: pan-y; /* 모바일 터치 스와이프 */
        }
        .cat-slide-img {
    width: 100%;
    height: 400px; /* 원하는 고정 높이 */
    object-fit: cover; /* 비율 유지하면서 영역에 맞게 채우기 */
}
    </style>

<div class="container my-5">
    <div id="catSlideCarousel" class="carousel slide" data-bs-touch="true" data-bs-ride="carousel" data-bs-interval="5000" data-bs-pause="hover">
        
        <!-- 인디케이터 -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#catSlideCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#catSlideCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#catSlideCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <!-- 슬라이드 항목 -->
        <div class="carousel-inner">

            <!-- 슬라이드 1 -->
            <div class="carousel-item active">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="text-start px-4">
                            <p class="text-muted mb-1">1/3</p>
                            <div class="cat-slide-title">새끼 고양이를 맞이할 준비</div>
                            <p class="cat-slide-desc mt-3">
                                새끼 고양이를 맞이하기 전에는 안전한 공간과 필요한 용품들을 미리 준비해 주세요.
                                편안한 첫 만남을 위해 조용한 방이 좋아요.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="/animal/resources/image/kit2.png" class="d-block w-100 rounded cat-slide-img" alt="고양이 준비">
                    </div>
                </div>
            </div>

            <!-- 슬라이드 2 -->
            <div class="carousel-item">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="text-start px-4">
                            <p class="text-muted mb-1">2/3</p>
                            <div class="cat-slide-title">새끼 고양이가 집을 탐험하게 하세요</div>
                            <p class="cat-slide-desc mt-3">
                                도착 후에는 고양이를 위해 마련한 방에 이동장을 두고 문을 열어 주세요.
                                고양이가 스스로 주변을 탐험하며 적응할 수 있도록 시간을 주세요.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="/animal/resources/image/kit.jpg" class="d-block w-100 rounded cat-slide-img" alt="고양이 탐험">
                    </div>
                </div>
            </div>

            <!-- 슬라이드 3 -->
            <div class="carousel-item">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="text-start px-4">
                            <p class="text-muted mb-1">3/3</p>
                            <div class="cat-slide-title">처음 며칠은 조심스럽게</div>
                            <p class="cat-slide-desc mt-3">
                                새끼 고양이는 처음 며칠간 낯선 환경에 스트레스를 받을 수 있으니
                                소리나 손길을 조심스럽게 하고, 강제로 안으려 하지 마세요.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_1280.jpg" class="d-block w-100 rounded cat-slide-img" alt="고양이 적응">
                    </div>
                </div>
            </div>

        </div>

        <!-- 이전/다음 버튼 -->
        <button class="carousel-control-prev" type="button" data-bs-target="#catSlideCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#catSlideCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </button>
    </div>
</div>



   </section>

   <section id="third"  class="image-links-blur">
      <h2>3. 영양 요소에 따른 새끼 고양이 급여 방법</h2>
      <br><br>
<style>
.image-links-blur {
  position: relative;
  width: 100%;
  min-height: 500px; /* 고정 height 대신 최소 높이로 */
  padding: 2rem; /* 텍스트와 경계 사이 간격 */
  box-sizing: border-box;
  overflow: hidden;
  display: flex;
  flex-direction: column; /* 세로 정렬로 텍스트가 위, 이미지가 아래 */
  justify-content: center;
  align-items: center;
}


.image-links-blur::before {
  content: "";
  position: absolute;
  top: 0; left: 0;
  width: 100%;
  height: 100%;
  background-image: url('/animal/resources/image/kit2.png');
  background-size: cover;
  background-position: center;
  opacity: 0.2; /* 흐리게 만들기 위한 불투명도 설정 */
  filter: blur(2px); /* 블러 효과 추가 */
  z-index: 1;
}

.image-container {
  position: relative;
  display: flex;
  justify-content: space-between;
  width: 80%;
  z-index: 2; /* 텍스트와 이미지가 배경 위에 오도록 */
}

.image-container a {
  display: block;
}

.image-container img {
  width: 48%;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease-in-out;
}

.image-container img:hover {
  transform: scale(1.05);
}
</style>
      <p>새끼 고양이는 성장하면서 특별한 식단을 필요로 합니다. 새끼 고양이에게 무엇을 먹일지, 심지어 어떻게 먹여야
         할지 궁금해 하는 것은 지극히 정상적인 일입니다.
         <br><br>
         생후 1-2주의 정도의 새끼 고양이라면 분유나 초유를 먹여야합니다. 생후 4주이상이라면 건식 사료를 급여를 해야 합니다.
         사료양은 아기고양이든 성묘이든 크기와 나이, 활동량 건강상태에따라 다릅니다.
         <br><br>
         고양이의 신진대사와 필요한 영양분이 다르기 때문입니다. 고양이의 척추나 갈비벼가 보인다면 말랐다는 신호!! 
         <br><br>
		 만졌을 때척추나 갈비뼈가 보이지않는다면 과체중입니다.
         고양이 사료 적정량을 알아보기에 앞서 고양이는 예민한 동물로 환경이 바뀌면 사료를 잘 먹지 않을 수 있어 분양 전 
         먹였던 사료를 미리 알아두시고 사료를 바로 바꾸기보다 환경 적응을 한 후 천천히 바꿔나가시는 것이 좋습니다.
         <br><br>
         ​생후 4개월까지는 아기고양이 사료를 급여를 해주셔야하며 하루 급여량은 체중의 4%의 사료를 주는 것이 좋습니다. 
         아기고양이 사료는 한번에 배급을 하는 것이 아닌 5시간 간격 4회나누어주어야 비만묘로갈 수 있는 원인을 차단할 수 있습니다.

​
   </section>

   <section id="fourth">
      <h2>4. 새끼 고양이 케어 방법</h2>
      
      <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCvf">
         <div data-qa="rich-text">
            <div class="sc-7ac1f6cf-0 dUwySw">
               <div>
                  <br>
                  <p>
                     어미 고양이는 새끼 고양이들이 건강한 삶을 시작하는데 필요한 영양, 면역력 및 사회성을 제공합니다.
                      그렇기 때문에 새끼 고양이가 어미를 떠나는 순간부터 성장에 필요한 전부를 보호자에게 의지하게 됩니다.
                      <br><br>
                  	새끼 고양이의 면역체계는 아직 완전하지 않습니다. 어미 고양이가 수유를 중단하고 고체의 음식을 먹이기
                     시작하면, 새끼 고양이의 면역이 감소하고 동시에 각종 질병에 취약해질 수 있습니다. <br>
                     따라서 새끼 고양이의 건강한
                     미래를 위한 첫 걸음은 바로 동물병원을 방문하는 것입니다.</p>
                  <p>일반적으로 새끼 고양이 건강 관리로는 정기적인 건강 검진, 백신 접종, 기생충 예방 및 구강 케어가
                     있으며, 모두 새끼 고양이의 건강에 필수적입니다. 집 근처의 좋은 수의사를 찾는 것은 새끼 고양이를 돌보는 과정에
                     있어 필요한 정보를 얻을 수 있는 좋은 자원이 될 것입니다.</p><br>
               </div>
            </div>
         </div>
      </div>
   </section>
    <section id="fifth">
   <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCv f">
      <div data-qa="title-and-paragraph" class="sc-5a34121c-0 gjbtb">
      <div class="svg-wreath">
  <svg viewBox="0 0 240 240" width="240" height="240">
    <defs>
      <path id="circlePath" d="M 75, 75 m -60, 0 a 60,60 0 1,1 120,0 a 60,60 0 1,1 -120,0" />
    </defs>
    <a href="/animal/cat/cat_grow.do" target="_blank">
      <text font-size="12" font-family="'Cormorant Garamond', serif" fill="#000">
        <textPath href="#circlePath" startOffset="0%">
          WELCOME CLICK HERE WELCOME CLICK HERE WELCOME CLICK HERE CLICK HERE
        </textPath>
      </text>
    </a>
  </svg>
</div>

<style>
.svg-wreath {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 240px;
  width: 240px;
  position: relative; /* 정확한 위치 잡기 */
    animation: rotateCircle 20s linear infinite; /* 원만 회전 */
}

.svg-wreath svg {
  position: center; /* SVG를 절대 위치로 설정하여 고정 */
  top: 0;
  left: 0;
  animation: rotateText 20s linear infinite;
}

.svg-wreath a {
  pointer-events: all;
  display: block;
}

.svg-wreath text {
  transition: all 0.3s ease-in-out;
}

.svg-wreath:hover text {
  font-size: 18px; /* 글씨 크기 확대 */
  filter: blur(1px); /* 블러 효과를 주어 Boom 느낌을 추가 */
  text-shadow: 0 0 10px rgba(0, 0, 0, 0.5), 0 0 20px rgba(0, 0, 0, 0.3); /* 그림자 효과 */
}

@keyframes rotateText {
  100% {
    transform: rotate(360deg); /* 텍스트만 회전 */
  }
}

a {
  text-decoration: none; /* 링크의 기본 밑줄 제거 */
}
</style>
         <h2 class="sc-e30fa0b4-0 jVZGT sc-5a34121c-1 dxAFlT"> 5. 어린 반려묘의 출생부터 12주까지 주요 발달</h2>
         <br>
        <img src="/animal/resources/image/cat10.avif" style=margin-left:-200px class="d-block rounded">
      </div>
   </div>
   </section>
  
</body>
</html>
