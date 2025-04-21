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
<title>강아지를 기를까 고민 중이신가요?</title>
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
      background-image: url("/animal/resources/image/p21.jpg");
   }
   #mainVisual .main_img li.img02 {
     background-image: url("/animal/resources/image/p23.jpg");
   }
   #mainVisual .main_img li.img03 {
     background-image: url("/animal/resources/image/d10.jpg");
   }
   
 /* 추가한 부분 */
   #mainVisual .main_img li.on {
    opacity: 1;
    z-index: 11;
    visibility: visible; /* 이미지가 보이게 하기 */
}

/* 텍스트 */
#mainVisual .main_txt{opacity:0;position:absolute;font-size:16px;bottom:215px;left:110px;z-index:15;margin-left:-20px;color:white;font-family:'notokr-regular'}
#mainVisual .main_txt .txt1{padding-bottom:25px;font-size:50px;line-height:1.3;color:white;letter-spacing:-.2px;font-family:'notokr-bold'}
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
color:#704214;
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
.tabs {
  text-align: center;
  font-family: 'Segoe UI', sans-serif;
}

.tab-buttons {
  display: flex;
  justify-content: center;
  border-bottom: 2px solid #eee;
  margin-bottom: 20px;
}

.tab-button {
  background: none;
  border: none;
  font-size: 16px;
  padding: 10px 20px;
  cursor: pointer;
  position: relative;
  color: #333;
  transition: color 0.3s ease;
}

.tab-button.active {
  color: #704214;
  font-weight: bold;
}

.tab-button.active::after {
  content: '';
  display: block;
  height: 3px;
  width: 100%;
  background-color: #c9a881;
  position: absolute;
  bottom: 0;
  left: 0;
}

.tab-panel {
  display: none;
  background-color:#c9a881;
}

.tab-panel:not(.hidden) {
  display: block;
}

.panel-card {
  background: white;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0 15px 30px rgba(0,0,0,0.05);
  max-width: 500px;
  margin: 0 auto;
}

.icon {
  font-size: 40px;
  color: #ff4b5c;
  margin-bottom: 15px;
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
.section-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #704214;
            text-align: center;
            margin-bottom: 10px;
            position: relative;
        }

        .section-title::after {
            content: "";
            display: block;
            width: 60px;
            height: 3px;
            background-color: #c9a881;
            margin: 8px auto 0;
        }

      .info-box {
    background-color: #c9a881;
    border-radius: 16px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
    padding: 30px;
    transition: transform 0.3s ease;
  margin-bottom: 20px; /* 세로 여백 추가 */
    width: 400px;      /* 원하는 너비로 조정 */
    height: 300px;     /* 원하는 높이로 조정 */
   /* 내용이 넘칠 경우 숨기기 (선택사항) */
}
.accordion-button:not(.collapsed) {
  background-color: #ffe5b0;
   box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.125);
  font-weight: bold;
}
        .info-box:hover {
            transform: translateY(-5px);
        }

        .info-title {
            font-size: 1.2rem;
            font-weight: 600;
            color: #c9a881;
            text-align: center;
            margin-bottom: 15px;
        }

        .info-text {
            font-size: 0.95rem;
            color: #fff;
            text-align: center;
            line-height: 1.6;
        }
        .breadcrumb {
            font-size: 14px;
            color: #999;
            margin: 20px 0;
        }

        .breadcrumb a {
            color: #666;
            text-decoration: none;
            font-weight: normal;
        }

        .breadcrumb a:hover {
            text-decoration: underline;
        }

        .breadcrumb .current {
            color: #333;
        }

        .breadcrumb .highlight {
            font-weight: bold;
            color: #444;
        }

        .breadcrumb span {
            margin: 0 5px;
        }

.emoji {
  font-size: 3rem;
  animation: bounce 1s infinite;
  margin: 0; /* 기본 여백 제거 */
}
.btn-outline-olive {
  color: #c9a881;
  border: 1px solid #c9a881;
  background-color: transparent;
  transition: background-color 0.3s, color 0.3s;
}

.btn-outline-olive:hover {
  background-color: #c9a881;
  color: white;
}
  .dog-img {
     width: 100%;
     height: 350px;
     object-fit: cover;
     border-radius: 10px;
   }
   .icon{
   color:#c9a881;
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
        <p class="txt1">강아지를 키울지<br> 고민 중 이신가요?</p>
        <p class="txt2">	<p>
			 강아지를 키우고 싶으신가요? 그렇다면 우선 책임감 있는 보호자가 되기 위한 방법을 숙지해야 합니다.<br>
            여러분이 맞이하게 될 강아지는 삶의 중요한 일부가 될 것입니다.<br> 그만큼 강아지를 입양하는 것은 막대한 책임감이 따르는 일이죠. 
            <br>강아지와 함께하는 삶에는 수많은 보상이 있지만 동시에 지켜야 할 것들도 많습니다. 

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
 
  <p class="emoji">🐕</p>
</div>

<ul class="toc">
  <li><a href="#first"><span class="circle-num">1</span> 강아지를 키우는데 필요한 것</a></li>
  <li><a href="#second"><span class="circle-num">2</span> 강아지를 키우기 전에 고려해야 할 점</a></li>
  <li><a href="#third"><span class="circle-num">3</span> 나에게 맞는 견종은?</a></li>
  <li><a href="#fourth"><span class="circle-num">4</span> 강아지 입양처</a></li>
</ul>
<div class="container my-5">

    <!-- 아코디언 FAQ -->
    <div class="accordion" id="dogFaqAccordion">

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading1">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1">
                    새끼 강아지를 데려오기 전에 무엇을 해야 하나요?
                </button>
            </h2>
            <div id="collapse1" class="accordion-collapse collapse" data-bs-parent="#dogFaqAccordion">
                <div class="accordion-body">
                   강아지가 안전하고 편안하게 지낼 수 있도록 환경을 미리 준비해야 해요. 하우스(집), 사료와 급수기, 배변 패드, 장난감, 이불 등을 미리 마련해두세요.<br>
                    전기선이나 위험한 물건은 강아지의 접근이 어렵게 정리해 주는 것도 중요해요.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading2">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2">
                    새끼 강아지는 언제 집에 데려와야 하나요?
                </button>
            </h2>
            <div id="collapse2" class="accordion-collapse collapse" data-bs-parent="#dogFaqAccordion">
                <div class="accordion-body">
                   생후 8주(2개월) 이후가 적당해요. 너무 어린 강아지는 어미와 떨어졌을 때 면역력이나 정서 발달에 문제가 생길 수 있어요.<br>
                    8주가 지나면 사회화가 시작되면서 사람과 환경에 적응하기도 좋아요.  </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading3">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3">
                    새끼 강아지를 집으로 데려오기에 가장 좋은 시기는 언제인가요?
                </button>
            </h2>
            <div id="collapse3" class="accordion-collapse collapse" data-bs-parent="#dogFaqAccordion">
                <div class="accordion-body">
                    가족들이 여유 있게 강아지를 돌볼 수 있는 주말이나 휴가 기간이 좋아요. 처음 며칠은 낯선 환경에 적응해야 하므로, 함께 시간을 보내며 안정감을 줄 수 있어야 해요.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading4">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4">
                    새끼 강아지의 이전 보호자에게 무엇을 물어봐야 하나요?
                </button>
            </h2>
            <div id="collapse4" class="accordion-collapse collapse" data-bs-parent="#dogFaqAccordion">
                <div class="accordion-body">
                   부모견의 건강 상태 및 백신 접종 이력을 확인하는 것은 매우 중요해요. 강아지가 먹던 사료 종류와 기본적인 훈련 여부들 (배변, 사회성 등),강아지의 성격 및 습관과
					병원 방문 이력 등 이런 정보를 알면 강아지에게 더 잘 맞는 환경을 만들어줄 수 있어요.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading5">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5">
                    새끼 강아지를 데리러 갈 때 뭘 챙겨야 하나요?
                </button>
            </h2>
            <div id="collapse5" class="accordion-collapse collapse" data-bs-parent="#dogFaqAccordion">
                <div class="accordion-body">
                   이동장 또는 강아지 전용 가방이 있으면 좋아요. 부드러운 담요나 수건은 냄새로 인해 강아지들이 안정감을 느낄 수 있도록 도움을 줘요.<br>
					혹시모를 배변 패드와 물과 약간의 사료를 준비해주세요. 긴장을 완화할 수 있고 친분감을 쌓을 수 있도록 도움을 주는 장난감도 준비해 주면 좋아요.<br>
					처음 외출이므로 최대한 편안한 환경을 준비해 주세요.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading6">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6">
                    새끼 강아지를 데려올 때 편안하게 해주는 방법은 무엇인가요?
                </button>
            </h2>
            <div id="collapse6" class="accordion-collapse collapse show" data-bs-parent="#dogFaqAccordion">
                <div class="accordion-body">
                    집에 도착하면 조용한 장소에 하우스를 두고, 강아지가 스스로 탐색할 수 있게 기다려주세요.<br>
					처음에는 억지로 안거나 만지지 말고, 냄새를 맡게 하며 천천히 적응시켜 주세요.<br>
					보호자의 따뜻한 목소리와 부드러운 행동이 큰 도움이 돼요.<br>
					수면 공간은 아늑하고 포근하게 꾸며주고, 어미 냄새가 배어있는 천이 있다면 함께 두는 것이 좋아요.<br>
	                </div>
            </div>
        </div>

    </div>

</div>

</body>
</html>
	<!-- SECTION 1 -->
	<section id="first">
		<div class="p-4 border rounded shadow-sm bg-white mb-4">
  <h2 class="mb-3">1. 책임감 있는 보호자가 되려면?</h2>
 <a href="${contextPath}/dog/dog_responsible.do" class="btn btn-outline-olive">
  자세히 알아보기
</a>
</div>

	</section>
	
		<h2>강아지를 키울 때의 장점</h2><br><br>
		
		<div class="tabs">
  <div class="tab-buttons">
    <button class="tab-button active" data-tab="tab1">장점 1</button>
    <button class="tab-button" data-tab="tab2">장점 2</button>
    <button class="tab-button" data-tab="tab3">장점 3</button>
    <button class="tab-button" data-tab="tab4">장점 4</button>
  </div>

  <div class="tab-content">
    <div id="tab1" class="tab-panel">
      <div class="panel-card">
        <div class="icon">스트레스 감소</div><br>
        <p>조사에 따르면 인간은 강아지와 함께 시간을 보낼 때 기분이 좋아지게 만드는 호르몬인 옥시토신의 분비가 증가합니다.<br>
         또한 강아지를 쓰다듬을 때 스트레스와 연관된 코르티솔 수준이 낮아집니다.</p>
      </div>
    </div>
    <div id="tab2" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">건강 증진 효과</div><br>
        <p>반려견을 키우면 날씨와 관계없이 매일 산책을 해야 합니다. 이는 인간의 활동성을 높이는 좋은 방법입니다.<br>
         의학 연구에서도 강아지를 키우면 심혈관계질병의 위험이 감소하는 것을 보여주고 있습니다.</p>
      </div>
    </div>
    <div id="tab3" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">변함없는 친구</div><br>
        <p>대부분의 강아지들은 주인에게 애정을 쏟을 준비가 되어있습니다. 연구에 따르면 강아지를 키우는 사람은 외로움을 덜 느끼는 경향이 있다고 밝혔습니다.</p>
      </div>
    </div>
    <div id="tab4" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">사교적으로 변화</div><br>
        <p>강아지를 키우는 것은 어디를 가나 이목을 끌기 때문에 새로운 사람을 사귀거나 정기적인 사교 모임을 갖기 위한 좋은 방법이 될 수 있습니다.<br>
         반려견을 키우면 그렇지 않은 사람보다 자연스레 여러분의 이웃을 알아갈 수 있는 기회가 많아집니다.</p>
      </div>
    </div>
  </div>
</div>

	<script>
  const tabButtons = document.querySelectorAll('.tab-button');
  const tabPanels = document.querySelectorAll('.tab-panel');

  tabButtons.forEach(button => {
    button.addEventListener('click', () => {
      // 버튼 active 클래스 처리
      tabButtons.forEach(btn => btn.classList.remove('active'));
      button.classList.add('active');

      // 패널 표시 처리
      const target = button.dataset.tab;
      tabPanels.forEach(panel => {
        panel.classList.add('hidden');
        if (panel.id === target) {
          panel.classList.remove('hidden');
        }
      });
    });
  });
</script>
		


	 <section id="second">
      <h2>2. 강아지를 키우기 전에 알아야 할 것</h2>
      <br>
      <p>강아지와 함께 하면서 얻는 장점은 헤아릴 수 없을 만큼 많습니다. 하지만 강아지를 키우기 전에 고려해야 할 점 또한 많습니다. </p><br>
      <p>
         <b>Q. 강아지를 키우기 위한 여유가 있으신가요?</b><br><br>
         
         강아지는 많은 시간과 관심을 필요로 합니다. 
         매일 산책과 훈련은 물론, 그루밍 샵 및 동물병원 방문까지 강아지를 위해 많은 시간을 투자해야 합니다. 
         장시간 자리를 비우게 되면 강아지에게 정신적 스트레스와 이상 행동을 유발할 수 있습니다. 
      </p>
      <br>
      <p>
          <b>Q. 강아지의 생애 기간 동안 보살펴 줄 수 있으신가요?</b><br><br>
          
          견종에 따라 다르지만, 강아지는 보통 8년에서 14년, 그 이상까지도 살 수 있습니다. 
          따라서 강아지와 삶을 함께 하는 것은 장기적인 일입니다. 
          보호자에게 일어날 수 있는 큰 변화들이 강아지의 건강과 행복에 영향을 끼칠 수 있을 수 있다는 점을 반드시 고려해야 합니다.
      </p>
      <br>
      <p>
         <b>Q. 비용을 부담할 준비가 되셨나요? </b><br><br>
         강아지를 키우는 데에는 경제적 여유도 필요합니다. 
         좋은 품질의 식단, 장난감 및 훈련 그리고 동물 병원 방문 등 이 모든 것을 제공할 수 있어야 합니다.
      </p>
      <br>
      <p>
         <b>Q. 인내심 있는 주인이 될 준비가 되셨나요? </b><br><br>	 
         반려견과 함께 하는 것은 매우 큰 변화입니다. 
         강아지의 성장 과정에서 인내심을 갖는 것은 여러분과 반려견 모두에게 도움이 될 것입니다. 
      </p>
      <br>
      <p>이처럼 강아지를 키우기 위해선 다양한 점들을 고려해야 하지만 그만큼 많은 보람을 가져다 줍니다.</p>
   </section>


<section id="third">
      <h2>3. 나에게 맞는 견종은?</h2><br>
 
      <p>나에게 꼭 맞는 강아지를 찾는 것은 쉽지 않습니다. 따라서 생애 주기 동안 오랜 시간 함께하게 될 강아지와 보호자의 라이프 스타일이 잘 맞을지 충분히 고민하는 것은 중요합니다.<br> <br>
          강아지를 고를 때 다음의 요소들을 생각해 보세요.<br><br>
          <a href="/animal/dog/dog_type.do">
          <img src="https://cdn.royalcanin-weshare-online.io/6FcWJ4oBBKJuub5qywbr/v15/golden-retriever-walking-on-a-leash">
  </a>
      <p>1. 여러분의 주거 환경에는 어떤 크기의 강아지가 적절할까요?</p><br>

      <p>2. 에너지 레벨이 높은(혹은 낮은) 강아지가 어울릴까요?</p><br>

      <p>3. 여러분의 가족과 친구 및 다른 반려동물에게 어떤 견종이 어울릴까요?</p><br>

      <p>4. 어떤 특성의 반려견을 원하시나요? (경비견, 운동 친구, 애교쟁이 등)</p><br>

      <p>5. 여러분의 라이프 스타일에 맞지 않는 강아지의 특징이 있나요?</p><br>

      <p>6. 훈련 또는 그루밍하기 쉬운 강아지를 찾으시나요?</p><br>

     <p>7. 수컷과 암컷 중 어느 성별이 더 잘 맞을까요? 성별에 따라 성격이나 요구 사항들이 달라집니다.</p><br>
     
     <p>8. 어린 강아지와 성견 중 어느 연령대의 강아지를 기르고 싶으신가요?</p><br>

      <p>강아지를 키우기로 결심했다면 이러한 사전 조사는 필수적입니다. 로얄캐닌에서 제공하는 다양한 견종 정보를 통해 나에게 가장 어울리는 반려견을 찾아보세요! <br>
         그리고 반려견과 함께하는 행복한 미래를 그려보세요. </p><br>
      
      <p class="apple"> 
         <a href="/animal/dog/dog_type.do">견종 알아보기 </a>
      </p>
      
      </section>

	 <section id="fourth">
      <h2>4. 강아지 입양처</h2><br>
      <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCvf">
         <div data-qa="rich-text">
            <div class="sc-7ac1f6cf-0 dUwySw">
               <div>
                  <p>
                     어떤 반려견을 입양할 것인지 결정하셨다면, 한 가지 질문이 떠오르실 겁니다. 그것은 바로 입양 혹은 분양 가운데 어떤 경로로 강아지를 데려올 지 결정하는 것이죠. 
                     <br><br>그러나 무엇보다도 책임감 있는 주인으로서 최대한 안전하고 도덕적인 방법으로 강아지를 데려오는 것이 중요합니다. <br><br>

                     검증된 브리더, 동물 보호소와 펫샵에서는 그들이 보살피고 있는 반려동물을 위해 최고의 가정을 찾아주려고 노력할 것입니다.</p>
                  <br>
               </div>
            </div>
         </div>
      </div>
   </section>


			<div class="container py-5">
	    <h2 class="section-title">입양하는 법</h2>
	
	    <div class="row mt-5 gx-4 gy-4">
	        <div class="col-md-6">
	            <div class="info-box">
	                <div class="info-title">보호소</div><br>
	                <div class="info-text">
	                     파양 혹은 유기된 강아지를 데려오기로 결정했다면 가까운 보호소를 방문해 보세요.<br>
	                      찾고있는 유형의 강아지를 바탕으로 가장 적합한 강아지를 추천해 줄 것입니다.
	                </div>
	            </div>
	        </div>
	        <div class="col-md-6">
	            <div class="info-box">
	                <div class="info-title">지인이나 이웃</div><br>
	                <div class="info-text">
	                        강아지를 데려오기 전에 새끼 강아지가 건강한 어미로부터 적절하게 수유를 마쳤는지 확인해야 합니다.<br>
	                         건강검진과 예방접종을 위해 가능한 신속하게 동물 병원을 예약하세요.
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	
		


</body>
</html>
