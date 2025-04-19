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
<title>고양이를 기를까 고민 중이신가요?</title>
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
      background-image: url("/animal/resources/image/gr2.jpg");
   }
   #mainVisual .main_img li.img02 {
     background-image: url("/animal/resources/image/gr4.jpg");
   }
   #mainVisual .main_img li.img03 {
     background-image: url("/animal/resources/image/gr3.jpg");
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
  color: #355E3B;
  font-weight: bold;
}

.tab-button.active::after {
  content: '';
  display: block;
  height: 3px;
  width: 100%;
  background-color: #355E3B;
  position: absolute;
  bottom: 0;
  left: 0;
}

.tab-panel {
  display: none;
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
.section-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #355E3B;
            text-align: center;
            margin-bottom: 10px;
            position: relative;
        }

        .section-title::after {
            content: "";
            display: block;
            width: 60px;
            height: 3px;
            background-color: #355E3B;
            margin: 8px auto 0;
        }

        .info-box {
            background-color: white;
            border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.06);
            padding: 30px;
            transition: transform 0.3s ease;
        }

        .info-box:hover {
            transform: translateY(-5px);
        }

        .info-title {
            font-size: 1.2rem;
            font-weight: 600;
            color: #355E3B;
            text-align: center;
            margin-bottom: 15px;
        }

        .info-text {
            font-size: 0.95rem;
            color: #555;
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
        <p class="txt1">고양이를 키울지<br> 고민 중 이신가요?</p>
        <p class="txt2">	<p>
				고양이는 독립적이며 여러모로 자신을 스스로 돌볼 줄 아는 동물로 알려져 있습니다.<br>
				하지만반려묘를 키우기에 앞서 많은 것을 고려해야 합니다.고양이와 함께하는 삶은 어떨까요?
				<br><br> 
				보호자로서 고양이를 위해 할 수 있는 것엔 무엇이 있을까요?<br> 해당 페이지를 통해 고양이를 키울 때 따르는 책임과
				장점에 대하여 알아보세요.
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
  <br><br><br>
  <p class="emoji">🐈</p>
</div>

<ul class="toc">
  <li><a href="#first"><span class="circle-num">1</span> 책임감 있는 보호자가 되려면?</a></li>
  <li><a href="#second"><span class="circle-num">2</span> 고양이를 키우기 전에 고려해야 할 점</a></li>
  <li><a href="#third"><span class="circle-num">3</span> 나에게 맞는 묘종은?</a></li>
  <li><a href="#fourth"><span class="circle-num">4</span> 고양이 입양처</a></li>
</ul>
<div class="container my-5">

    <!-- 아코디언 FAQ -->
    <div class="accordion" id="catFaqAccordion">

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading1">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1">
                    새끼 고양이를 데려오기 전에 무엇을 해야 하나요?
                </button>
            </h2>
            <div id="collapse1" class="accordion-collapse collapse" data-bs-parent="#catFaqAccordion">
                <div class="accordion-body">
                    집 환경이 새끼 고양이에게 안전하게 조성되었는지 확인하고 새끼 고양이가 지낼 방을 준비하세요. 이동을 위해 이동장도 있어야 합니다. 
                    수의사를 미리 알아두어 새끼 고양이를 데려오고 며칠 뒤에 검진을 할 수 있도록 예약하는 것이 좋습니다.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading2">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2">
                    새끼 고양이는 언제 집에 데려와야 하나요?
                </button>
            </h2>
            <div id="collapse2" class="accordion-collapse collapse" data-bs-parent="#catFaqAccordion">
                <div class="accordion-body">
                   생후 8주가 지나기 전에 새끼 고양이를 데려오면 안 됩니다. 일부 브리더는 12주가 될 때까지 새끼 고양이를 어미 고양이, 형제자매 고양이와 함께 두기도 합니다.
                    그 시기에는 젖을 떼고 기본적인 사회화를 마쳤을 것이며 다른 반려묘와 만나야 합니다. 
                   또한 새끼 고양이는 생후 8주에서 16주 사이에 본인이 속한 환경을 파악하기 시작하기 때문에 이때가 여러분의 집으로 거처를 옮기기 좋은 시기입니다.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading3">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3">
                    새끼 고양이를 집으로 데려오기에 가장 좋은 시기는 언제인가요?
                </button>
            </h2>
            <div id="collapse3" class="accordion-collapse collapse" data-bs-parent="#catFaqAccordion">
                <div class="accordion-body">
                    새끼 고양이와 함께 며칠 동안 집에서 조용히 지낼 수 있고 손님이 올 예정이 없을 때 데려오는 것이 이상적입니다.
                     밤이 되기 전에 집에 익숙해질 수 있도록 아침에 데려오는 것이 좋습니다.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading4">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4">
                    새끼 고양이의 이전 보호자에게 무엇을 물어봐야 하나요?
                </button>
            </h2>
            <div id="collapse4" class="accordion-collapse collapse" data-bs-parent="#catFaqAccordion">
                <div class="accordion-body">
                   새끼 고양이가 어떤 사료를 먹었는지 묻고 급여 일과 및 화장실 배치에 대해 물어보세요. 수의사에게 데려갔는지, 백
                   신 접종이나 구충 치료를 받았는지, 식별 칩이 이식됐는지도 확인하세요. 가장 좋아하는 장난감에 대해서도 물어봅니다.
				가능하다면 데려오기 며칠 전부터 장난감과 담요를 새끼 고양이 곁에 두어서 집에 오는 동안, 그리고 집에 왔을 때 익숙한 냄새에서 안정감을 느끼게 하세요.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading5">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5">
                    새끼 고양이를 데리러 갈 때 뭘 챙겨야 하나요?
                </button>
            </h2>
            <div id="collapse5" class="accordion-collapse collapse" data-bs-parent="#catFaqAccordion">
                <div class="accordion-body">
                    이동 수단이 무엇이든 이동장을 반드시 챙겨야 합니다. 차 안에 새끼 고양이를 풀어놓는 것은 위험하며 걷거나 대중교통으로 이동할 때 도망칠 수도 있기 때문입니다.

					새끼 고양이가 다 자랐을 때에도 들어갈 수 있는 이동장을 고르고 편안함을 위해 담요를 안에 깔아 주세요. 
					어두운 캐리어를 사용하면 새끼 고양이가 안정감을 느끼는 데 도움이 됩니다. 
					그리고 이동 도중의 사고에 대비해 종이 수건과 교체용 담요를 준비하는 것도 잊지 마세요. 
					이동 도중에 이동장을 가까이에 두어서 새끼 고양이를 편안하게 해 주세요.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="heading6">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6">
                    새끼 고양이를 데려올 때 편안하게 해주는 방법은 무엇인가요?
                </button>
            </h2>
            <div id="collapse6" class="accordion-collapse collapse show" data-bs-parent="#catFaqAccordion">
                <div class="accordion-body">
                    차로 데려오는 경우 침착함을 유지하고 천천히 운전하여 새끼 고양이가 놀라지 않게 합니다. <br>
                    안전벨트로 이동장을 고정하거나 다른 사람이 붙잡게 하여 이동장이 미끄러지지 않게 하세요.<br>

					새끼 고양이가 편안함을 느끼도록 도우려면 가벼운 담요로 이동장을 덮고 친숙한 냄새가 나는 장난감이나 담요를 안에 넣어 줍니다. 
					이동 도중에는 상자 안에 넣어두는 것이 가장 안전하지만 부드럽게 말을 걸면 새끼 고양이가 안심하는 데 도움이 됩니다.
	                </div>
            </div>
        </div>

    </div>

    <!-- 하단 안내 문구 -->
    <div class="text-center mt-5">
      <h2> <div class="faq-title">새끼 고양이와 함께 보내는 첫날</div></h2><br>
        <p class="faq-sub">
            새끼 고양이는 새로운 환경에 매우 예민하므로 집으로 맞이할 때 조심해야 합니다.
        </p>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
	<!-- SECTION 1 -->
	<section id="first">
		<div class="p-4 border rounded shadow-sm bg-white mb-4">
  <h2 class="mb-3">1. 책임감 있는 보호자가 되려면?</h2>
  <a href="${contextPath}/cat/cat_responsible.do" class="btn btn-outline-danger">자세히 알아보기</a>
</div>

	</section>
	
		<h3>고양이를 키울 때의 장점</h3>
		
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
        <div class="icon">😺</div>
        <p>훌륭한 동반자 역할을 하는 고양이는 1인 가구에 더욱 적합합니다.</p>
      </div>
    </div>
    <div id="tab2" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">🐾</div>
        <p>고양이는 조용하고 깨끗하여 아파트에서도 키우기 좋아요.</p>
      </div>
    </div>
    <div id="tab3" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">🧹</div>
        <p>스스로 그루밍을 하므로 손이 덜 갑니다.</p>
      </div>
    </div>
    <div id="tab4" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">🧘</div>
        <p>혼자 있어도 외로움을 잘 타지 않아 직장인에게도 안성맞춤입니다.</p>
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
		<h2>2.고양이를 키우기 전에 고려해야 할 점</h2>
		<br>
		<p>
			고양이와 함께 살면서 애정 어린 유대감과 동반자로서 사랑을 느낄 수 있는 것은 물론, 다양한 보상이 있습니다.<br>
			하지만 고양이와 함께 살기 이전에 장점과 단점을 모두 알고 있는 것이 좋습니다. 고양이는 좋은 반려동물이 될 수 있습니다.<br>
			물론, 모든 고양이가 그런 것은 아니지만 대부분 조용하고 놀기를 좋아하며 집에서 훈련하기 쉬운 편입니다.<br>

			그렇다면 고양이를 키우기에 앞서 아래 항목도 고려해 보세요.
		</p>
		<p>경제적 비용 고양이를 키우게 되면 위생과 그루밍, 고품질의 권장사료부터 병원비까지 기존의 월 예산에서 추가적
			비용이 듭니다. 고양이의 수명이 18살 이상이라는 점을 고려할 때 장기적으로 고양이를 키우기 위한 재정적 지원이 가능한지
			고려해야 합니다.</p>
		<br>

		<p>
			독특한 성격 고양이는 독립적인 동물로 잘 알려져 있습니다. 고양이들도 애정 표현을 하지만 이는 고양이의 기분에 달려 있으며,<br>
			여러분이 원한다고 해서 고양이가 애정 표현을 해줄 것이라고 기대해서는 안 됩니다. 대신, 보호자는 고양이들이 본래의 성격대로
			성장할 수 있도록 안전한 환경을 제공할 책임이 있습니다.
		</p>
		<br>
		<p>
			고양이가 혼자 있는 시간 고양이를 오랜 시간 혼자 두지 마세요. 여러분이 직장을 간 사이에도 고양이는 신선한 물과 양질의
			사료,<br> 깨끗한 화장실 그리고 그들을 즐겁게 해줄 장난감이 필요합니다. 고양이와 함께 있을 때에는 고양이를<br>
			위해 신나는 놀이 시간을 만들어 주세요.
		</p>
	</section>
	<section id="third">
		<h2>3. 나에게 맞는 묘종은?</h2>
		<br>
		<img
			src="https://cdn.royalcanin-weshare-online.io/vlc47YwBBKJuub5q0xhB/v3/abyssinian-adult-brand-emblematic-4-3"
			width="200px">

		<p>고양이를 키우는 것이 처음이거나 또는 다묘 가정인 경우에도, 나에게 잘 맞는 고양이를 고르는 것은 아주<br>
			중요합니다. 급하게 결정하기보다 시간을 갖고 천천히 다음의 사항들을 고려해보세요.<br>
		<p>1. 나이: 새끼 고양이와 성묘 중 어느 연령대의 고양이를 선호하시나요?</p>

		<p>2. 성별: 수컷과 암컷 중 어떤 고양이를 선호하시나요?</p>

		<p>3. 성격: 에너지가 넘치는 고양이, 안기기를 좋아하는 고양이, 독립적인 고양이 등 어떤 성격의 고양이를
			선호하시나요?</p><br>

		<p>4. 가족 구성원: 입양 결정에 함께 고려해야 할 어린 자녀 혹은 다른 반려동물이 있으신가요?</p><br>

		<p>5. 그루밍: 발톱 깎기, 빗질, 양치질과 같이 고양이를 그루밍하는데 얼마나 많은 시간을 할애할 수 있으신가요?</p>

		<p>6. 생활 공간: 고양이들이 생활할 수 있는 개인 정원과 같은 실외공간이 있나요? 그렇지 않다면 실내에서 키울 수<br>
			있는 고양이를 고려해보세요.</p>


		<p>어떤 고양이를 입양할지 고민 중이시라면 고양이와 보호자와의 관계는 상호적인 것이라는 점을 꼭 기억하세요. 미래의 고양이에게<br>
		여러분이 제공하는 환경과 애정은 고양이가 여러분의 삶을 풍요롭게 만들어 주는 것만큼 중요하답니다.</p>
		
		<a class="apple" href="/animal/cat/cat_type.do">묘종 알아보기</a>

	</section>

	<section id="fourth">
		<h2>4. 고양이 입양처</h2>
		<br>
		<div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCvf">
			<div data-qa="rich-text">
				<div class="sc-7ac1f6cf-0 dUwySw">
					<div>
						<p>
							여러분의 라이프 스타일에 가장 잘 어울리는 고양이를 결정했다면 그 고양이는 어디서 찾아야 할지 알고 계신가요?
							 책임감 있는 보호자로서 안전하고 도덕적인 방법으로 고양이를 입양해야 합니다. <br>

								책임감 있는 브리더와 동물 보호소, 펫샵에서는 가능한 그들이 보살피고 있는 반려동물을 위해 최고의 
								가정을 찾아주려고 노력할 것입니다.</p>
						<br>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container py-5">
    <h2 class="section-title">입양하는 법</h2>

    <div class="row mt-5 gx-4 gy-4">
        <div class="col-md-6">
            <div class="info-box">
                <div class="info-title">보호소</div>
                <div class="info-text">
                    파양되거나 유기된 고양이를 데려오기로 결정했다면 지역에 있는 고양이 보호소를 방문해 가능한 많은 정보를 공유해보세요.
                     보호소 안의 고양이들에 대해 잘 알고 있기 때문에 가장 잘 어울리는 고양이를 추천해 줄 수 있습니다.
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="info-box">
                <div class="info-title">지인이나 이웃</div>
                <div class="info-text">
                    고양이를 데려오기 전에 새끼 고양이가 건강한 어미 고양이로부터 적절하게 수유를 마쳤는지 확인해야 합니다. 건강검진과 예방접종을 위해 가능한 신속하게 동물 병원을 예약하세요.
                </div>
            </div>
        </div>
    </div>
</div>

	</section>


</body>
</html>
