<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>어린 강아지</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <!-- CSS / 스타일 -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.0/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="/animal/resources/css/style.css?v=1.0.3">
  <script src="https://cdn.jsdelivr.net/npm/@google/model-viewer@1.0.0/dist/model-viewer.min.js"></script>
 
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  --> 
 

  <!-- 3D 모델뷰어 -->
  <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>

  <!-- 페이지 전용 스타일 -->
  <style>
     body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f0f0f0;
      margin: 60px auto;
    }
    
    

    .dog-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 40px;
      padding: 50px;
      margin-top: 150px; /* 헤더 높이만큼 추가 */
      background-color: #f8f8f8;
      border-radius: 20px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      max-width: 1200px;
      margin: 60px auto;
    }   

    .tab-button {
      font-size: 16px;
    }

    .dog-model {
      flex-shrink: 0;
    }

    model-viewer {
      width: 400px;
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

</style>
</head>

<body>

   <!-- 3D 모델과 소개 영역 -->
   <div class="dog-container">
      <div class="dog-model">
         <model-viewer src="${contextPath}/resources/model/Siberianhusky.glb"
            alt="3D 고양이" auto-rotate camera-controls ar autoplay exposure="1"
            shadow-intensity="1"> </model-viewer>
      </div>
      <div class="dog-text">
         <h1>
            강아지를 위한<br> 필수 케어 가이드
         </h1>
         <p>
           강아지를 새식구로 입양하는 것은 신나는 일입니다! 유년 시기에는 따뜻한 포옹과 뽀뽀도 좋지만, 성장은 물론, 집안 훈련, 기본 매너를 가르치고, 적절한 영양을 공급해줘야 하는 시기이기도 합니다.
           새끼 강아지의 빠른 성장은 빙산의 일각에 불과하답니다. 
           강아지의 생후 1년은 겉으로 드러나지 않는 부분에서도 많은 일들이 일어나며, 신체적으로나 인지적으로 다양한 변화가 일어납니다.<br>
           
         이러한 변화를 맞춰나가는 데 도움이 되는 가이드가 있다면 성장 단계별 요구되는 영양소 및 훈련법을 더 쉽게 조율할 수 있겠죠. 
          로얄캐닌의 강아지 케어 가이드가 바로 그 해결책입니다.<br>

         장난꾸러기 강아지에서 건강하고 늠름한 반려견으로 거듭날 수 있도록 여러분을 가이드 해드릴 유용한 강아지 정보와 팁으로 가득 차 있습니다.<br>
         </p>
         <h2>해당 페이지에서는 다음과 같은 정보를 확인할 수 있습니다.</h2>
         <ul class="toc">
            <li><a href="#first">1. 재미있고 복합적인 강아지의 성장 과정</a></li>
            <li><a href="#second">2. 강아지를 맞이하기 위한 준비</a></li>
            <li><a href="#third">3. 영양 요소에 따른 새끼 강아지 급여 방법</a></li>
            <li><a href="#fourth">4. 강아지 케어 방법</a></li>
         </ul>
      </div>
   </div>

   <!-- SECTION 1 -->
   <section id="first">
      <div>
         <h2>1. 1. 재미있고 복합적인 강아지 성장 과정</h2>
         <br>
         <p>
            활기 넘치는 어린 강아지의 중요 성장 및 발달 단계는 다소 복합적입니다. 
            강아지가 성장함에 따라 체격은 물론, 학습 능력과 훈련에 대한 적응 능력 또한 변할 수 있습니다.<br>
         </p>
         <p>
            급격한 성장 단계에서 요구되는 영양소를 충족하는 식단은 추후 성견 시기의 건강까지 영향을 미칠 수 있습니다. 
            크기, 나이, 견종에 따라 강아지에게 필요한 구체적인 영양 요소에 대한 지식은 강아지의 건강한 미래 및 함께하게 될 여정을 위한 탄탄한 기초가 될 것입니다.<br>
      </p>
         <p>
            강아지를 처음 케어 해 보시거나, 강아지를 돌보기 위한 자세한 내용을 다시 한번 숙지하고 싶으신 분인가요? 
            새끼 강아지의 월별 성장 과정에 대한 지식을 쌓는다면 강아지 보호자로서의 자신감이 생길 것입니다. 
            로얄캐닌의 케어 가이드를 통해 호기심 가득한 새끼 강아지를 안전하게 키우는 데 필요한 정보를 확인해 보세요.<br>
         </p>
      </div>
   </section>
<section class="p-8 bg-gray-100">
  <!-- 탭 버튼 영역 -->
   <div class="flex justify-center space-x-4 mb-6">
    <button class="tab-button px-4 py-2 bg-gray-200 rounded active" data-tab="vision">감각</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="immunity">면역력</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="bone">튼튼한 뼈</button>
    <button class="tab-button px-4 py-2 bg-gray-200 rounded" data-tab="growth">놀라운 성장</button>
  </div>

  <!-- 탭 내용 -->
  <div class="tab-content bg-white shadow-md rounded-xl p-6 text-center">
    <div id="vision" class="tab-panel">
      <h3 class="text-lg font-bold text-red-500 mb-2">감각</h3>
      <p class="text-gray-600">강아지는 생후 둘째 주까지 눈을 뜨지 못하며, 청력은 완전히 발달하기 까지 약 8주가 걸립니다. 강아지의 청력이 완전히 발달되면 인간의 귀보다 최대 2.5배나 높은 주파수를 들을 수 있습니다.</p>
    </div>
    <div id="immunity" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">면역력</h3>
      <p class="text-gray-600">생후 6개월 동안 강아지는 면역 체계가 충분히 발달하지 않은 상태에서 수백만 개의 세균으로부터 자신을 보호해야 합니다.</p>
    </div>
    <div id="bone" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">튼튼한 뼈</h3>
      <p class="text-gray-600">생후 첫해에 강이지의 뼈는 콘크리트보다 4배나 더 강해질 정도로 성장해야 합니다.</p>
    </div>
    
    <div id="growth" class="tab-panel hidden">
      <h3 class="text-lg font-bold text-red-500 mb-2">놀라운 성장</h3>
      <p class="text-gray-600">강아지는 보통 첫 2주 동안 매일 같이 체중의 5~10%가 증가합니다.</p>
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
      <h3>출생부터 성견이 되기까지 강아지의 발달</h3>
       <a href="https://www.royalcanin.com/kr/cats/kitten/kitten-development-from-birth-to-adulthood">
      <img src="https://cdn.royalcanin-weshare-online.io/g1dJiIoBBKJuub5qfAhK/v3/pgst6-newborn-jack-russell-terrier-puppies-sleeping-together-on-a-soft-blanket-fit" width="200px">
      <p class="apple">자세히 알아보기</p></a></section>
   

   <section id="second">
      <h2>2. 강아지를 맞이하기 위한 준비</h2>
      <br>

      <p>사전 준비 없이 강아지를 데려오는 것은 다소 혼란스러울 수 있습니다. 
      보호자님께서는 강아지와의 새로운 삶에 대해 배워야 하지만, 강아지는 어미와 형제 없이 사는 법을 터득해야 합니다. 
      이 뿐만 아니라 새로운 환경과 기대치에 적응해야 합니다. 강아지에게 필요한 것이 무엇인지, 
      입양 초기에는 어떠한 상황을 기대해야 할지 이해한다면 보호자와 강아지 모두에게 더욱 수월한 여정이 될 것입니다.<br></p>
      <p>강아지를 반기기에 앞서 최대한의 정보를 알아두세요. 당사의 유용한 가이드는 새로운 식구를 맞이하기 위한 준비, 
      그리고 강아지를 키우는 데 필요한 정보 및 팁을 제공해 드립니다.</p><br>

   </section>

   <section id="third">
      <h2>3. 필요 영양에 따른 강아지 급여 방법</h2>
    <img src="https://cdn.royalcanin-weshare-online.io/vlc47YwBBKJuub5q0xhB/v3/abyssinian-adult-brand-emblematic-4-3"
         width="200px">

      <p>강아지의 건강한 미래를 위해 무엇을 먹일지, 또는 어떻게 먹여야 할 지 고민이 될 수 있습니다. 
         여러분이 새롭게 맞이한 강아지의 어미는 새끼 강아지의 건강한 유년기를 위해 많은 노력을 했을 것입니다. 
         하지만 새끼 강아지는 여러 성장 단계를 거쳐 빠르게 성장하므로 각 단계마다 여러 영양소를 필요로 합니다.<br>
      </p>
      
      <p>
         강아지 사료는 강아지의 성장 단계에 맞는 영양 및 에너지 요구 사항을 충족해야 합니다. 
         이러한 요소를 충족하는 올바른 식단을 제공하는 것은 건강한 성견으로 거듭날 수 있도록 길을 닦는 것입니다.<br>
      </p>
      
      <p>
         당사의 가이드는 강아지 급여에 관한 인사이트를 제공합니다. 
         보호자님이 강아지의 지속적인 건강을 위한, 강아지의 영양학적 및 에너지 니즈에 맞는 최선의 식단을 제공할 수 있도록 가이드를 참고해 보세요.<br>
      </p>


   </section>

   <section id="fourth">
      <h2>4. 강아지 케어 방법</h2>
      <div data-qa="variation-content" class="sc-5f5e92c9-1 eWfCvf">
         <div data-qa="rich-text">
            <div class="sc-7ac1f6cf-0 dUwySw">
               <div>
                  <br>
                  <p>
                    생애 첫 몇 주 내에 처음 방문해야 하는 동물병원은 강아지의 건강을 위한 여정의 시작이자 질병의 위험을 감소시키는 중요한 과정입니다. 또한 몇몇 견종은 이때 첫 미용이 필요하기도 합니다. 
                    이와 같은 첫 방문은 향후 동물병원 내원과 그루밍 샵 방문에 친근해지기 위한 기반이 됩니다.<br>
                  </p>
                  <p>
                      여러분과 함께하는 강아지의 새로운 삶에는 수많은 첫 경험들로 가득하며, 강아지는 보호자에게 보호와 지도를 위해 의지할 것입니다. 
                      새로운 경험들 속에서 여러분의 강아지 양육 방식에 따라 향후 강아지가 낯설고 겁이 날 수 있는 상황에 어떻게 대처하고 적응하는지 달라질 수 있습니다. 
                      이러한 보호자와 강아지의 유대를 통해 낯선 환경과 미지에 대한 스트레스를 줄이며, 서로 간의 신뢰를 더 쌓을 수 있게 됩니다.<br>
                  </p>
                  <p>
                      강아지가 수많은 첫 경험들을 자신감 있게 헤쳐 나갈 수 있도록 로얄캐닌의 유용한 가이드를 참고해 보세요.<br>
                  </p>
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
         <h1 class="sc-e30fa0b4-0 jVZGT sc-5a34121c-1 dxAFlT">새끼 고양이를 위한 필수 케어 가이드(강아지 케어 가이드 x))</h1>
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