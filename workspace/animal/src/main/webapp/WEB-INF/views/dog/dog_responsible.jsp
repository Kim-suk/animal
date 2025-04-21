<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
   <title>강아지 보호자 가이드</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/animal/resources/css/default.css">
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    .card-icon { font-size: 2.5rem; color: #ff914d; }
    .card { border: none; border-radius: 1rem; box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.05); margin-bottom: 20px; transition: transform 0.2s; }
    .card:hover { transform: translateY(-5px); }
  </style>
</head>
<body>

  <!-- 탭 내용 -->
  <div class="tab-content" id="dogTabContent">
  </div>


  <style>
    body {
      background-image: url('https://cdn.royalcanin-weshare-online.io/6FcWJ4oBBKJuub5qywbr/v15/golden-retriever-walking-on-a-leash');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      backdrop-filter: blur(4px);
      background-color:#fffaf4;
      height: 100vh;
      overflow-y: auto;
    }
    .guide-container {
  background-color: rgba(255, 255, 255, 0.85);
  border-radius: 20px;
  padding: 30px;
  width: 900px; /* 고정된 너비 */
  height: 1000px; /* 컨테이너 높이 증가 */
  max-width: 900px;
  margin: 60px auto;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
  margin-top: 200px;
  margin-bottom: 100px; /* 아래 여백 추가 */
  overflow: hidden;
}
    .accordion-button {
      font-weight: bold;
    }
    .accordion-body {
  font-size: 16px; /* 아코디언 본문 텍스트 크기 증가 */
}
    h2{
    font-size:40px;
    }
   .card-title {
   font-size: 1.8rem; /* 제목 크기 증가 */
}

.card-text {
   font-size: 1.2rem; /* 본문 크기 증가 */
}
  </style>


  <div class="guide-container">
    <h2 class="text-center mb-4">🐶 강아지 보호자 가이드</h2>

    <ul class="nav nav-tabs mb-4" id="dogTabs" role="tablist">
      <li class="nav-item">
        <button class="nav-link active" id="general-tab" data-bs-toggle="tab" data-bs-target="#general" type="button" role="tab">일반 강아지</button>
      </li>
      <li class="nav-item">
        <button class="nav-link" id="rescued-tab" data-bs-toggle="tab" data-bs-target="#rescued" type="button" role="tab">유기견</button>
      </li>
      <li class="nav-item">
        <button class="nav-link" id="puppy-tab" data-bs-toggle="tab" data-bs-target="#puppy" type="button" role="tab">새끼 강아지</button>
      </li>
    </ul>

    <div class="tab-content">
      <div class="tab-pane fade show active" id="general" role="tabpanel">
           <!-- 일반 강아지 탭 -->
    <div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
      <div class="row row-cols-1 row-cols-md-2 g-4">
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🥩</div>
            <h3 class="card-title mt-3">균형 잡힌 식단</h3>
            <p class="card-text">강아지 나이에 맞는 사료를 선택하고, 깨끗한 물을 늘 준비하세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🛏️</div>
            <h3 class="card-title mt-3">편안한 휴식처</h3>
            <p class="card-text">조용하고 아늑한 공간을 제공해 안정감을 느끼게 해주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🎾</div>
            <h3 class="card-title mt-3">산책과 놀이</h3>
            <p class="card-text">하루 한 번 이상 산책하고, 장난감으로 에너지를 발산하게 해주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🧼</div>
            <h3 class="card-title mt-3">청결 관리</h3>
            <p class="card-text">목욕, 발톱, 귀 청소 등 위생 관리를 주기적으로 해주세요.</p>
          </div>
        </div>
      </div>
      <div class="text-center mt-5">
        <p class="fw-bold text-muted">작은 관심이 반려견의 삶을 바꿉니다 🐾</p>
      </div>
    </div>
      </div>

     
         <!-- 유기견 탭 -->
    <div class="tab-pane fade" id="rescued" role="tabpanel" aria-labelledby="rescued-tab">
      <div class="row row-cols-1 row-cols-md-2 g-4">
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">📚</div>
            <h3 class="card-title mt-3">충분한 정보 습득</h3>
            <p class="card-text">강아지의 성향과 필요를 이해하고 맞춤형 돌봄을 준비하세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">👣</div>
            <h3 class="card-title mt-3">조심스러운 접근</h3>
            <p class="card-text">유기견은 상처가 있을 수 있어요. 천천히 친밀감을 쌓아주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🏡</div>
            <h3 class="card-title mt-3">안정적인 환경</h3>
            <p class="card-text">스트레스를 줄일 수 있도록 조용하고 일정한 환경을 제공하세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🩺</div>
            <h3 class="card-title mt-3">건강 검진</h3>
            <p class="card-text">입양 직후에는 동물병원에서 건강 체크와 예방접종을 받으세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🤝</div>
            <h3 class="card-title mt-3">신뢰 형성</h3>
            <p class="card-text">강아지가 먼저 다가올 때까지 기다리고, 부드럽게 대해주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🐕</div>
            <h3 class="card-title mt-3">사회화 연습</h3>
            <p class="card-text">다른 사람, 동물과의 접촉은 서서히 진행해 주세요. 억지는 금물!</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">📷</div>
            <h3 class="card-title mt-3">추억 만들기</h3>
            <p class="card-text">함께한 순간을 사진과 기록으로 남기면 의미 있는 시간이 돼요.</p>
          </div>
        </div>
      </div>
      <div class="text-center mt-5">
        <p class="fw-bold text-muted">당신의 사랑이 한 생명을 변화시킵니다 🐶</p>
      </div>
    </div>

      </div>

      <div class="tab-pane fade" id="puppy" role="tabpanel">
        <div class="accordion" id="puppyGuide">

          <div class="accordion-item">
            <h2 class="accordion-header" id="q1">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#a1" aria-expanded="true" aria-controls="a1">
                🍼 새끼 강아지를 데려오기 전에 무엇을 준비해야 하나요?
              </button>
            </h2>
            <div id="a1" class="accordion-collapse collapse show" aria-labelledby="q1" data-bs-parent="#puppyGuide">
              <div class="accordion-body">
                강아지를 위한 침대, 배변패드, 사료, 물그릇, 장난감, 하네스, 이름표 등을 미리 준비하세요. 보호자의 여유와 정서적 준비도 중요해요!
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header" id="q2">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a2" aria-expanded="false" aria-controls="a2">
                🕒 새끼 강아지를 언제 데려와야 하나요?
              </button>
            </h2>
            <div id="a2" class="accordion-collapse collapse" aria-labelledby="q2" data-bs-parent="#puppyGuide">
              <div class="accordion-body">
                생후 8주 이상이 되어 이유식과 사회화가 어느 정도 이뤄진 시점이 가장 좋습니다. 너무 이른 시점은 건강과 정서에 좋지 않아요.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header" id="q3">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a3" aria-expanded="false" aria-controls="a3">
                📋 이전 보호자에게 무엇을 물어봐야 하나요?
              </button>
            </h2>
            <div id="a3" class="accordion-collapse collapse" aria-labelledby="q3" data-bs-parent="#puppyGuide">
              <div class="accordion-body">
                강아지의 예방접종 여부, 부모견 정보, 식사 패턴, 성격, 건강 상태 등을 꼭 확인하세요.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header" id="q4">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a4" aria-expanded="false" aria-controls="a4">
                🧳 데리러 갈 때 무엇을 챙겨야 하나요?
              </button>
            </h2>
            <div id="a4" class="accordion-collapse collapse" aria-labelledby="q4" data-bs-parent="#puppyGuide">
              <div class="accordion-body">
                이동장, 배변패드, 담요, 물, 사료, 장난감 등을 준비하고, 이동 중 강아지가 안정감을 느낄 수 있도록 부드럽게 대화하세요.
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header" id="q5">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a5" aria-expanded="false" aria-controls="a5">
                🏠 새 집에 적응을 도와주는 방법은?
              </button>
            </h2>
            <div id="a5" class="accordion-collapse collapse" aria-labelledby="q5" data-bs-parent="#puppyGuide">
              <div class="accordion-body">
                조용한 공간을 마련해주고, 강아지가 먼저 탐색할 수 있게 시간을 주세요. 낯선 냄새나 소리는 줄이고 친숙한 담요 등을 함께 두세요.
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

</body>
</html>