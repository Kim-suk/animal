<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>강아지를 기를까 생각중이신가요?</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2107@1.1/BMJUA.woff.css" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/animal/resources/css/default.css">
<!-- 3D 모델뷰어 -->
<script type="module" src="https://cdn.royalcanin-weshare-online.io/XEAlJ4oBRYZmsWpctAuD/v5/maine-coon-kittens"></script>
<!-- 페이지 전용 스타일 -->
   <style>

.dog-container {
   display: flex;
   flex-wrap: wrap;
   justify-content: center;
   align-items: center;
   gap: 40px;
   padding: 50px;
   padding-top: 50px;
   margin-top: 120px; /* 추가: 헤더 높이만큼 공간 확보 */
   background-color: #f8f8f8;
   border-radius: 20px;
   box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
   max-width: 1200px;
   margin-left: auto;
   margin-right: auto;
}


.tab-button {
  font-size: 16px;
}

.dog-model {
   flex-shrink: 0;
}

   model-viewer {
  width: 100%;
  max-width: 400px;
  height: 400px;
   background: white;
   border-radius: 20px;
   box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.dog-text {
   max-width: 500px;
}

.dog-text h1 {
   font-size: 32px;
   margin-bottom: 20px;
}

.dog-text p, section p {
   font-size: 18px;
   line-height: 1.6;
   color: #333;
}

h2 {
   margin-top: 40px;
   color: #444;
}

ul.toc {
   list-style-type: none;
   padding-left: 0;
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
   padding: 30px;
   border-radius: 10px;
   margin: 40px auto;
   max-width: 900px;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
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
  color: #ff4b5c;
  font-weight: bold;
}

.tab-button.active::after {
  content: '';
  display: block;
  height: 3px;
  width: 100%;
  background-color: #ff4b5c;
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

.apple {
   appearance: none;
   background: rgb(226, 0, 26);
   border-color: rgb(226, 0, 26);
   border-width: 2px;
   border-radius: 2em;
   border-style: solid;
   color: rgb(255, 255, 255);
   cursor: pointer;
   font-family: "Nanum Gothic", Arial, sans-serif;
   font-size: 1rem;
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
.section-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #e74c3c;
            text-align: center;
            margin-bottom: 10px;
            position: relative;
        }

        .section-title::after {
            content: "";
            display: block;
            width: 60px;
            height: 3px;
            background-color: #e74c3c;
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
            color: #e74c3c;
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

</style>



</head>


<body>

   
   <div class="breadcrumb">
        <a href="/animal/main.do">홈페이지</a>
        <span>›</span>
        <a href="/animal/cat_all.jsp" class="highlight">반려견에 대한 모든 것</a>
        <span>›</span>
        <span class="/animal/cat_think.jsp">강아지를 키울지 고민 중이신가요?</span>
    </div>
   <!-- 3D 모델과 소개 영역 -->
   <div class="dog-container">
      <div class="dog-model">
         <model-viewer src="${contextPath}/resources/model/model.glb"
            alt="3D 고양이" auto-rotate camera-controls ar autoplay exposure="1"
            shadow-intensity="1"> </model-viewer>
      </div>
      <div class="dog-text">
         <h1>
            강아지를 키울지 고민<br> 중이신가요?
         </h1>
         <p>
         <p>
            강아지를 키우고 싶으신가요? 그렇다면 우선 책임감 있는 보호자가 되기 위한 방법을 숙지해야 합니다.<br>
            여러분이 맞이하게 될 강아지는 삶의 중요한 일부가 될 것입니다.<br> 그만큼 강아지를 입양하는 것은 막대한 책임감이 따르는 일이죠. 
            <br>강아지와 함께하는 삶에는 수많은 보상이 있지만 동시에 지켜야 할 것들도 많습니다. 
         </p>

         <h2>해당 페이지에서는 다음과 같은 정보를 확인할 수 있습니다.</h2>
         <ul class="toc">
            <li><a href="#first">1. 강아지를 키우는데 필요한 것</a></li>
            <li><a href="#second">2. 강아지를 키우기 전에 고려해야 할 점</a></li>
            <li><a href="#third">3. 나에게 맞는 견종은? </a></li>
            <li><a href="#fourth">4. 강아지 입양처</a></li>
         </ul>
      </div>
   </div>

   <!-- SECTION 1 -->
   <section id="first">
      <div class="p-4 border rounded shadow-sm bg-white mb-4">
  <h2 class="mb-3">1. 책임감 있는 보호자가 되려면?</h2>
  <a href="${contextPath}/dog/dog_responsible.do" class="btn btn-outline-danger">자세히 알아보기</a>
</div>

   </section>
   
      <h3>강아지와 함께할 때의 이점</h3>
      <p>강아지를 키울 때 따르는 책임에 대해서 알아보았다면 이제는 그 이점에 대해 알아볼 차례입니다.</p>
      <div class="tabs">
  <div class="tab-buttons">
    <button class="tab-button active" data-tab="tab1">스트레스 감소</button>
    <button class="tab-button" data-tab="tab2">건강 증진 효과</button>
    <button class="tab-button" data-tab="tab3">변함없는 친구</button>
    <button class="tab-button" data-tab="tab4">사교적으로 변화</button>
  </div>

  <div class="tab-content">
    <div id="tab1" class="tab-panel">
      <div class="panel-card">
        <div class="icon">스트레스 감소</div>
        <p>조사에 따르면 인간은 강아지와 함께 시간을 보낼 때 기분이 좋아지게 만드는 호르몬인 옥시토신의 분비가 증가합니다. 또한 강아지를 쓰다듬을 때 스트레스와 연관된 코르티솔 수준이 낮아집니다.</p>
      </div>
    </div>
    <div id="tab2" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">건강 증진 효과</div>
        <p>반려견을 키우면 날씨와 관계없이 매일 산책을 해야 합니다. 이는 인간의 활동성을 높이는 좋은 방법입니다. 의학 연구에서도 강아지를 키우면 심혈관계질병의 위험이 감소하는 것을 보여주고 있습니다.</p>
      </div>
    </div>
    <div id="tab3" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">변함없는 친구</div>
        <p>대부분의 강아지들은 주인에게 애정을 쏟을 준비가 되어있습니다. 연구에 따르면 강아지를 키우는 사람은 외로움을 덜 느끼는 경향이 있다고 밝혔습니다.</p>
      </div>
    </div>
    <div id="tab4" class="tab-panel hidden">
      <div class="panel-card">
        <div class="icon">사교적으로 변화</div>
        <p>강아지를 키우는 것은 어디를 가나 이목을 끌기 때문에 새로운 사람을 사귀거나 정기적인 사교 모임을 갖기 위한 좋은 방법이 될 수 있습니다. 반려견을 키우면 그렇지 않은 사람보다 자연스레 여러분의 이웃을 알아갈 수 있는 기회가 많아집니다.</p>
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
   <section>
      <h3>강아지 키울때 이점(수정필요!)</h3>
      <a
         href="https://www.royalcanin.com/kr/cats/kitten/kitten-development-from-birth-to-adulthood">
         <img
         src="https://cdn.royalcanin-weshare-online.io/jldh6IwBBKJuub5qARjz/v3/sacred-birman-kitten-birth-growth-brand-emblematic-1-1"
         width="200px">
         <p class="apple">자세히 알아보기</p>
      </a>
   </section>


   <section id="second">
      <h2>2. 강아지를 키우기 전에 알아야 할 것</h2>
      <br>
      <p>강아지와 함께 하면서 얻는 장점은 헤아릴 수 없을 만큼 많습니다. 하지만 강아지를 키우기 전에 고려해야 할 점 또한 많습니다. </p>
      <p>
         <b>강아지를 키우기 위한 여유가 있으신가요?</b>강아지는 많은 시간과 관심을 필요로 합니다. 
         매일 산책과 훈련은 물론, 그루밍 샵 및 동물병원 방문까지 강아지를 위해 많은 시간을 투자해야 합니다. 
         장시간 자리를 비우게 되면 강아지에게 정신적 스트레스와 이상 행동을 유발할 수 있습니다. 
      </p>
      <br>
      <p>
          <b>강아지의 생애 기간 동안 보살펴 줄 수 있으신가요?</b>견종에 따라 다르지만, 강아지는 보통 8년에서 14년, 그 이상까지도 살 수 있습니다. 
          따라서 강아지와 삶을 함께 하는 것은 장기적인 일입니다. 
          보호자에게 일어날 수 있는 큰 변화들이 강아지의 건강과 행복에 영향을 끼칠 수 있을 수 있다는 점을 반드시 고려해야 합니다.
      </p>
      <br>
      <p>
         <b>비용을 부담할 준비가 되셨나요? </b>강아지를 키우는 데에는 경제적 여유도 필요합니다. 
         좋은 품질의 식단, 장난감 및 훈련 그리고 동물 병원 방문 등 이 모든 것을 제공할 수 있어야 합니다.
      </p>
      <br>
      <p>
         <b>인내심 있는 주인이 될 준비가 되셨나요? </b> 반려견과 함께 하는 것은 매우 큰 변화입니다. 
         강아지의 성장 과정에서 인내심을 갖는 것은 여러분과 반려견 모두에게 도움이 될 것입니다. 
      </p>
      <br>
      <p>이처럼 강아지를 키우기 위해선 다양한 점들을 고려해야 하지만 그만큼 많은 보람을 가져다 줍니다.</p>
   </section>
   <section id="third">
      <h2>3. 나에게 맞는 견종은?</h2>

      <p>나에게 꼭 맞는 강아지를 찾는 것은 쉽지 않습니다. 따라서 생애 주기 동안 오랜 시간 함께하게 될 강아지와 보호자의 라이프 스타일이 잘 맞을지 충분히 고민하는 것은 중요합니다. <br>
          강아지를 고를 때 다음의 요소들을 생각해 보세요.<br>
          
      <p>1. 여러분의 주거 환경에는 어떤 크기의 강아지가 적절할까요?</p>

      <p>2. 에너지 레벨이 높은(혹은 낮은) 강아지가 어울릴까요?</p>

      <p>3. 여러분의 가족과 친구 및 다른 반려동물에게 어떤 견종이 어울릴까요?</p><br>

      <p>4. 어떤 특성의 반려견을 원하시나요? (경비견, 운동 친구, 애교쟁이 등)</p><br>

      <p>5. 여러분의 라이프 스타일에 맞지 않는 강아지의 특징이 있나요?</p>

      <p>6. 훈련 또는 그루밍하기 쉬운 강아지를 찾으시나요?</p>

     <p>7. 수컷과 암컷 중 어느 성별이 더 잘 맞을까요? 성별에 따라 성격이나 요구 사항들이 달라집니다.</p>
     
     <p>8. 어린 강아지와 성견 중 어느 연령대의 강아지를 기르고 싶으신가요?</p>

      <p>강아지를 키우기로 결심했다면 이러한 사전 조사는 필수적입니다. 로얄캐닌에서 제공하는 다양한 견종 정보를 통해 나에게 가장 어울리는 반려견을 찾아보세요! <br>
         그리고 반려견과 함께하는 행복한 미래를 그려보세요. </p>
      
      <p class="apple"> 
         <a href="/animal/dog/dog_type.do">견종 알아보기 </a>
      </p>
      
      <img
         src="https://cdn.royalcanin-weshare-online.io/6FcWJ4oBBKJuub5qywbr/v15/golden-retriever-walking-on-a-leash">
   </section>

   <section id="fourth">
      <h2>4. 강아지 입양처</h2>
      <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCvf">
         <div data-qa="rich-text">
            <div class="sc-7ac1f6cf-0 dUwySw">
               <div>
                  <p>
                     어떤 반려견을 입양할 것인지 결정하셨다면, 한 가지 질문이 떠오르실 겁니다. 그것은 바로 입양 혹은 분양 가운데 어떤 경로로 강아지를 데려올 지 결정하는 것이죠. 
                     그러나 무엇보다도 책임감 있는 주인으로서 최대한 안전하고 도덕적인 방법으로 강아지를 데려오는 것이 중요합니다. <br>

                     검증된 브리더, 동물 보호소와 펫샵에서는 그들이 보살피고 있는 반려동물을 위해 최고의 가정을 찾아주려고 노력할 것입니다.</p>
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
                    파양 혹은 유기된 강아지를 데려오기로 결정했다면 가까운 보호소를 방문해 보세요. 찾고있는 유형의 강아지를 바탕으로 가장 적합한 강아지를 추천해 줄 것입니다.
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="info-box">
                <div class="info-title">지인이나 이웃</div>
                <div class="info-text">
                    강아지를 데려오기 전에 새끼 강아지가 건강한 어미로부터 적절하게 수유를 마쳤는지 확인해야 합니다. 건강검진과 예방접종을 위해 가능한 신속하게 동물 병원을 예약하세요.
                </div>
            </div>
        </div>
    </div>
</div>

   </section>

</body>
</html>