<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<meta name="viewport" content="width=device-width, initial-scale=1">
    
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>강아지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2107@1.1/BMJUA.woff.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/animal/resources/css/default.css">


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
      background-image: url("/animal/resources/image/d3.jpg");
   }
   #mainVisual .main_img li.img02 {
     background-image: url("/animal/resources/image/d4.jpg");
   }
   #mainVisual .main_img li.img03 {
     background-image: url("/animal/resources/image/d1.jpg");
   }
   
 /* 추가한 부분 */
   #mainVisual .main_img li.on {
    opacity: 1;
    z-index: 11;
    visibility: visible; /* 이미지가 보이게 하기 */
}

/* 텍스트 */
#mainVisual .main_txt{opacity:0;position:absolute;font-size:16px;bottom:215px;left:110px;z-index:15;margin-left:-20px;color:#fff;font-family:'notokr-regular'}
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
      background: #fffaf4;
      margin: 60px auto;
    }
       

    .tab-button {
      font-size: 16px;
    }



    .dog-text {
      max-width: 500px;
    }

    .dog-text h1 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .dog-text p, section p {
      font-size: 20px;
      line-height: 1.6;
      color: #333;
    }

   h2 {
  margin-top: 20px;
  color: #704214;
  font-size: 40px;
  font-weight: 400;
  font-family:'notokr-regular'
}
h3{
color:#c9a881;
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
      
    }
    .toc li:hover {
  background-color: #fff3db;
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
  background-color: #704214;
  border-radius: 50%;
  font-weight: bold;
}
.circle-num:hover {
  background-color: #c9a881;
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
    background-color: #704214;
    color: white;
    border-color: #c9a881;
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
    background: #c9a881;
    border-color: #704214;
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
h3{
	font-size:28px;
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
        <p class="txt1">강아지를 위한<br>필수 케어 가이드</p><br>
        <p class="txt2"><p>
             강아지를 새식구로 입양하는 것은 신나는 일입니다! <br>유년 시기에는 따뜻한 포옹과 뽀뽀도 좋지만,
              성장은 물론, 집안 훈련, 기본 매너를 가르치고,<br>적절한 영양을 공급해줘야 하는 시기이기도 합니다.<br><br>
               새끼 강아지의 빠른 성장은 빙산의 일각에 불과하답니다.<br>
           강아지의 생후 1년은 겉으로 드러나지 않는 부분에서도 많은 일들이 일어나며,<br> 신체적으로나 인지적으로 다양한 변화가 일어납니다.
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
  <p class="emoji">🐕</p>
</div>

<ul class="toc">
  <li><a href="#first"><span class="circle-num">1</span> 재미있고 복합적인 강아지의 성장 과정</a></li>
  <li><a href="#second"><span class="circle-num">2</span> 강아지를 맞이하기 위한 준비</a></li>
  <li><a href="#third"><span class="circle-num">3</span> 영양 요소에 따른 새끼 강아지 급여 방법</a></li>
  <li><a href="#fourth"><span class="circle-num">4</span> 강아지 케어 방법</a></li>
  <li><a href="#fifth"><span class="circle-num">5</span> 출생부터 성견이 되기까지 강아지의 발달</a></li>
  </ul>

</section>

   <!-- SECTION 1 -->
   <section id="first">
      <div>
         <h2>1. 재미있고 복합적인 강아지의 성장 과정</h2><br>
         <p>활기 넘치는 어린 강아지의 중요 성장 및 발달 단계는 다소 복합적입니다. 강아지가 성장함에 따라 체격은 물론, 학습 능력과 훈련에 대한 적응 능력 또한 변할 수 있습니다.<br><br>
         급격한 성장 단계에서 요구되는 영양소를 충족하는 식단은 추후 성견 시기의 건강까지 영향을 미칠 수 있습니다.
 		크기, 나이, 견종에 따라 강아지에게 필요한 구체적인 영양 요소에 대한 지식은 강아지의 건강한 미래 및 함께하게 될 여정을 위한 탄탄한 기초가 될 것입니다.</p>
 		
 		<section class="p-8 bg-gray-100">
  <!-- 탭 버튼 영역 -->
  <div class="flex justify-center space-x-4 mb-6">
    <button class="tab-button px-4 py-2 bg-gray-200 rounded active" data-tab="vision">감각</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="immunity">면역력</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="weight">튼튼한 뼈</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="bone">놀라운 성장</button>
  </div>

  <!-- 탭 내용 -->
  <div class="tab-content bg-green-100 shadow-md rounded-xl p-6 text-center">
    <div id="vision" class="tab-panel">
      <h3 class="text-2xl font-bold text-red-500 mb-2">감각</h3>
      <p class="text-gray-600">강아지는 생후 둘째 주까지 눈을 뜨지 못하며, 청력은 완전히 발달하기 까지 약 8주가 걸립니다. 
      강아지의 청력이 완전히 발달되면 인간의 귀보다 최대 2.5배나 높은 주파수를 들을 수 있습니다.</p>
    </div>
    <div id="immunity" class="tab-panel hidden">
      <h3 class="text-2xl font-bold text-red-500 mb-2">면역력</h3>
      <p class="text-gray-600">생후 6개월 동안 강아지는 면역 체계가 충분히 발달하지 않은 상태에서 수백만 개의 세균으로부터 자신을 보호해야 합니다.</p>
    </div>
    <div id="weight" class="tab-panel hidden">
      <h3 class="text-2xl font-bold text-red-500 mb-2">튼튼한 뼈</h3>
      <p class="text-gray-600">생후 첫해에 강이지의 뼈는 콘크리트보다 4배나 더 강해질 정도로 성장해야 합니다.</p>
    </div>
    <div id="bone" class="tab-panel hidden">
      <h3 class="text-2xl font-bold text-red-500 mb-2">놀라운 성장</h3>
      <p class="text-gray-600">강아지는 보통 첫 2주 동안 매일 같이 체중의 5~10%가 증가합니다.</p>
    </div>
  </div>
</section>

         <style>
        .dog-title {
            color: #704214;
            font-size: 1.8rem;
           
        }
        .dog-desc {
            color: #555;
            font-size: 1rem;
        }
        .dog-img {
    width: 100%;	
    height: 350px; /* 원하는 높이로 설정 가능 */
    object-fit: cover; /* 비율 유지하면서 잘라줌 */
    border-radius: 10px;
}


      
        
        .dog-card {
            background-color: #fff;
            border-radius: 1rem;
            padding: 2rem;
            margin-top: 2rem;
            box-shadow: 0 0 15px rgba(0,0,0,0.05);
        }
        .dog-section-title {
            font-size: 1.2rem;
            font-weight: 600;
            color: #704214;
            margin-top: 1.5rem;
        }
        .dog-desc {
            color: #333;
            line-height: 1.6;
        }
        .emoji {
            margin-right: 6px;
        }
    </style>
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

<section id=second>
<div class="container">
    <div class="dog-title">🐶 강아지를 맞이하기 위한 준비 🐾</div>

    <div class="dog-card mt-4">
        <div class="dog-desc">
            <div class="dog-section-title"><span class="emoji">🍖</span>사료와 간식</div>
            <p>적절한 사료와 간식을 준비해주세요. 강아지의 연령과 크기에 맞는 영양소가 충분히 포함된 사료를 선택하는 것이 중요해요.</p>

            <div class="dog-section-title"><span class="emoji">🛏️</span>켄넬 또는 침대</div>
            <p>강아지가 편안하게 쉴 수 있는 켄넬이나 강아지 전용 침대를 준비해주세요. 이는 강아지가 안정감을 느끼고 편안하게 자는 데 도움이 됩니다.</p>

            <div class="dog-section-title"><span class="emoji">💉</span>의료용품</div>
            <p>예방접종과 정기적인 건강 검진을 위해 동물 병원을 방문할 계획을 세우세요. 또한, 털이 자랄 경우 빗을 준비해 청결을 유지하는 것도 중요합니다.</p>

            <div class="dog-section-title"><span class="emoji">🧸</span>장난감</div>
            <p>강아지가 놀 수 있는 장난감을 준비해주세요. 이는 강아지의 지능 발달과 활동량을 유지하는 데 도움이 됩니다.</p>

            <div class="dog-section-title"><span class="emoji">🧻</span>위생용품</div>
            <p>배변 훈련을 위한 실내 위생 용품을 준비해주세요. 종이 패드나 배변 훈련 매트 등을 사용할 수 있어요.</p>

            <div class="dog-section-title"><span class="emoji">🎓</span>교육과 훈련</div>
            <p>강아지가 사회화되고 기본적인 명령을 배울 수 있도록 시간을 할애하세요. 강아지와의 교감을 즐기며 미리 배워두면 좋아요.</p>
        </div>
    </div>
</div>
<br>

<section id=third>
<div class="container my-5">
    <div class="row align-items-center">
        <!-- 텍스트 왼쪽 -->
        <div class="col-md-6 order-md-1">
            <div class="dog-title">영양 요소에 따른 <br>새끼 강아지 <br>급여 방법</div>
            <p class="dog-desc mt-3">
                새끼 강아지의 건강한 성장을 위해 어떤 영양소가 필요한지 알아보세요!<br>
            </p>

            <!-- 👉 버튼 추가 -->
            <div class="mt-4">
                <a href="/animal/dog/dog_feed.do" class="btn btn-warning rounded-pill px-4 py-2">
                    🐾 자세히 보기
                </a>
            </div>
        </div>

        <!-- 이미지 오른쪽 -->
        <div class="col-md-6 order-md-2">
            <a href="/animal/dog/dog_feed.do">
                <img src="/animal/resources/image/dog1.jpg"
                     class="img-fluid rounded dog-img"
                     alt="강아지">
            </a>
        </div>
    </div>
</div>
</section>

<style>
    .btn-warning {
        background-color: #f7c873;
        border: none;
        font-weight: bold;
        font-size: 1.1rem;
        transition: all 0.3s ease;
    }

    .btn-warning:hover {
        background-color: #f4b742;
        color: white;
    }

    .dog-title {
        font-size: 2rem;
        
        color: #5c4033;
    }

    .dog-desc {
        font-size: 1.1rem;
        color: #555;
        line-height: 1.7;
    }
</style>
      </div>
   </section>

  

<style>
  .group:hover .dog-icon {
    transform: rotate(15deg) scale(1.1);
  }
</style>	
   

   <section id="fourth">
      <h2>4. 강아지 케어 방법</h2>
    
    <style>
        .dog-slide-title {
            color: #c9a881;
            font-size: 1.8rem;
            font-weight: 550;
        }
        .dog-slide-desc {
            color: #555;
        }
        .carousel-indidogors [data-bs-target] {
            background-color: #355E3B;;
        }
        .carousel {
            touch-action: pan-y; /* 모바일 터치 스와이프 */
        }
        .dog-slide-img {
    width: 100%;
    height: 400px; /* 원하는 고정 높이 */
    object-fit: cover; /* 비율 유지하면서 영역에 맞게 채우기 */
}
    </style>

<div class="container my-5">
    <div id="dogSlideCarousel" class="carousel slide" data-bs-touch="true" data-bs-ride="carousel" data-bs-interval="5000" data-bs-pause="hover">
        
        <!-- 인디케이터 -->
        <div class="carousel-indidogors">
            <button type="button" data-bs-target="#dogSlideCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#dogSlideCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#dogSlideCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <!-- 슬라이드 항목 -->
        <div class="carousel-inner">

            <!-- 슬라이드 1 -->
            <div class="carousel-item active">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="text-start px-4">
                            <p class="text-muted mb-1">1/3</p>
                            <div class="dog-slide-title">정기적인 건강 관리</div>
                            <p class="dog-slide-desc mt-3">
                               강아지의 건강을 유지하기 위해서는 정기적인 예방접종과 건강 검진이 필수입니다.<br><br>
                               강아지는 다양한 질병에 노출될 수 있기 때문에, 예방접종을 주기적으로 받도록 해야 합니다.
                               
                             
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="/animal/resources/image/d7.jpg" class="d-block w-100 rounded dog-slide-img" alt="고양이 준비">
                    </div>
                </div>
            </div>

            <!-- 슬라이드 2 -->
            <div class="carousel-item">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="text-start px-4">
                            <p class="text-muted mb-1">2/3</p>
                            <div class="dog-slide-title">영양과 식사 관리</div>
                            <p class="dog-slide-desc mt-3">
                               강아지에게 적절한 사료를 제공하는 것이 매우 중요합니다.<br>
                                강아지의 나이, 체중, 품종에 맞는 영양이 포함된 사료를 선택해야 합니다.<br>
                                 성장기에는 단백질과 칼슘, 지방 등이 균형 잡혀 있어야 하고,
                                성견이 되면 활동량에 맞춰 식사량을 조절하는 것이 좋습니다.<br>
                                 
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="/animal/resources/image/d8.jpg" class="d-block w-100 rounded dog-slide-img" alt="고양이 탐험">
                    </div>
                </div>
            </div>

            <!-- 슬라이드 3 -->
            <div class="carousel-item">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="text-start px-4">
                            <p class="text-muted mb-1">3/3</p>
                            <div class="dog-slide-title">정신적, 신체적 자극 제공</div>
                            <p class="dog-slide-desc mt-3">
                                강아지는 꾸준한 운동과 놀이를 통해 신체 건강과 정신 건강을 유지해야 합니다.<br>
                                매일 산책을 나가거나 실내에서 활동적인 놀이를 통해 강아지의 에너지를 발산시켜 주세요.<br>
                              
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="/animal/resources/image/d9.jpg" class="d-block w-100 rounded dog-slide-img" alt="고양이 적응">
                    </div>
                </div>
            </div>

        </div>

        <!-- 이전/다음 버튼 -->
        <button class="carousel-control-prev" type="button" data-bs-target="#dogSlideCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#dogSlideCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </button>
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
    <a href="/animal/dog/dog_born.do" target="_blank">
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
  text-shadow: 0 	0 10px rgba(0, 0, 0, 0.5), 0 0 20px rgba(0, 0, 0, 0.3); /* 그림자 효과 */
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
         <h2 class="sc-e30fa0b4-0 jVZGT sc-5a34121c-1 dxAFlT"> 5. 출생부터 성견이 되기까지 강아지의 발달</h2>
<br>
<div>
    <a href="/animal/dog/dog_born.do">
        <img src="/animal/resources/image/d14.jpg" weight=1200px; height=700px; style="margin-left: -100px;" class="d-block rounded">
    </a>
</div>
   </div>
   </section>
  
</body>
</html>
