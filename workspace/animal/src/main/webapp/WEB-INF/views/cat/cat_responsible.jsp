<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
   <title>고양이 보호자 가이드</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/animal/resources/css/default.css">
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    .card-icon { font-size: 2.5rem; color: #ff914d; }
    .card { border: none; border-radius: 1rem; box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.05); margin-bottom: 20px; transition: transform 0.2s; }
    .card:hover { transform: translateY(-5px); }
  </style>
</head>
<style>
    body {
      background-image: url('https://health.chosun.com/site/data/img_dir/2024/12/13/2024121302504_0.jpg');
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
}s
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
</head>
<body>
  <div class="guide-container">
    <h2 class="text-center mb-4">🐱 고양이 보호자 가이드</h2>

    <ul class="nav nav-tabs mb-4" id="catTabs" role="tablist">
      <li class="nav-item">
        <button class="nav-link active" id="general-tab" data-bs-toggle="tab" data-bs-target="#general" type="button" role="tab">일반 고양이</button>
      </li>
      <li class="nav-item">
        <button class="nav-link" id="rescued-tab" data-bs-toggle="tab" data-bs-target="#rescued" type="button" role="tab">구조묘</button>
      </li>
      <li class="nav-item">
        <button class="nav-link" id="kitten-tab" data-bs-toggle="tab" data-bs-target="#kitten" type="button" role="tab">새끼 고양이</button>
      </li>
    </ul>

    <div class="tab-content">
      <!-- 일반 고양이 -->
      <div class="tab-pane fade show active" id="general" role="tabpanel">
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">🍗</div>
              <h5 class="card-title mt-3">적절한 급식</h5>
              <p class="card-text">연령에 맞는 사료를 제공하고 신선한 물을 항상 준비하세요.</p>
            </div>
          </div>
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">🧺</div>
              <h5 class="card-title mt-3">은신처 제공</h5>
              <p class="card-text">고양이가 편안하게 쉴 수 있는 조용한 공간이 필요해요.</p>
            </div>
          </div>
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">🐾</div>
              <h5 class="card-title mt-3">놀이와 자극</h5>
              <p class="card-text">레이저 포인터, 깃털 장난감 등으로 놀이 시간을 가져주세요.</p>
            </div>
          </div>
          <div class="col">
  <div class="card p-4 text-center">
    <div class="card-icon">😼</div>
    <h5 class="card-title mt-3">스트레스 해소</h5>
    <p class="card-text">스크래처나 높은 곳에 오를 수 있는 구조물을 제공해 주세요.</p>
  </div>
</div>
<div class="col">
  <div class="card p-4 text-center">
    <div class="card-icon">👩‍⚕️</div>
    <h5 class="card-title mt-3">정기 건강검진</h5>
    <p class="card-text">1년에 한 번 이상 동물병원에서 정기검진을 받는 것이 좋아요.</p>
  </div>
</div>
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">🧼</div>
              <h5 class="card-title mt-3">청결 관리</h5>
              <p class="card-text">고양이 화장실은 항상 청결히 유지해 주세요.</p>
            </div>
          </div>
        </div>
        <div class="text-center mt-5">
          <p class="fw-bold text-muted">세심한 배려가 고양이의 삶을 더 풍요롭게 해줍니다 🐱</p>
        </div>
      </div>
      
      

      <!-- 구조묘 -->
      <div class="tab-pane fade" id="rescued" role="tabpanel">
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">📘</div>
              <h5 class="card-title mt-3">이해와 학습</h5>
              <p class="card-text">고양이의 과거와 성향을 이해하고 신중한 접근이 필요해요.</p>
            </div>
          </div>
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">👀</div>
              <h5 class="card-title mt-3">조심스러운 관찰</h5>
              <p class="card-text">고양이의 반응을 지켜보며 천천히 신뢰를 쌓아가세요.</p>
            </div>
          </div>
          <div class="col">
  <div class="card p-4 text-center">
    <div class="card-icon">🧑‍🤝‍🧑</div>
    <h5 class="card-title mt-3">사회화 연습</h5>
    <p class="card-text">짧은 시간씩 자주 놀아주며 사람과의 친밀감을 키워주세요.</p>
  </div>
</div>
<div class="col">
  <div class="card p-4 text-center">
    <div class="card-icon">🎧</div>
    <h5 class="card-title mt-3">적응 도우미</h5>
    <p class="card-text">잔잔한 음악이나 페로몬 디퓨저는 안정감에 도움을 줘요.</p>
  </div>
</div>
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">🏠</div>
              <h5 class="card-title mt-3">안정적인 공간</h5>
              <p class="card-text">예측 가능한 환경은 고양이의 스트레스를 줄여줍니다.</p>
            </div>
          </div>
          
          <div class="col">
            <div class="card p-4 text-center">
              <div class="card-icon">🩺</div>
              <h5 class="card-title mt-3">건강 체크</h5>
              <p class="card-text">구조 후 반드시 건강 상태를 확인하고 필요한 조치를 해주세요.</p>
            </div>
          </div>
        </div>
        <div class="text-center mt-5">
          <p class="fw-bold text-muted">따뜻한 관심이 구조묘에게 새 삶을 선물합니다 🐾</p>
        </div>
      </div>

      <!-- 새끼 고양이 -->
      <div class="tab-pane fade" id="kitten" role="tabpanel">
        <div class="accordion" id="kittenGuide">
          <div class="accordion-item">
            <h2 class="accordion-header" id="q1">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#a1" aria-expanded="true">
                🍼 새끼 고양이를 데려오기 전에 무엇을 준비해야 하나요?
              </button>
            </h2>
            <div id="a1" class="accordion-collapse collapse show">
              <div class="accordion-body">
                고양이 침대, 화장실, 모래, 사료, 물그릇, 장난감, 캣타워 등을 미리 준비하세요. 조용한 환경도 중요해요!
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header" id="q2">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a2">
                🕒 언제 새끼 고양이를 데려와야 하나요?
              </button>
            </h2>
            <div id="a2" class="accordion-collapse collapse">
              <div class="accordion-body">
                생후 8주 이상이 되어 이유식과 사회화가 어느 정도 된 시점이 가장 적절합니다.
              </div>
            </div>
          </div>

<div class="accordion-item">
  <h2 class="accordion-header" id="q4">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a4">
      🧼 새끼 고양이의 위생은 어떻게 관리하나요?
    </button>
  </h2>
  <div id="a4" class="accordion-collapse collapse">
    <div class="accordion-body">
      따뜻한 물로 적절히 닦아주고, 귀 청소나 발톱 관리도 주기적으로 해주세요.
    </div>
  </div>
</div>

<div class="accordion-item">
  <h2 class="accordion-header" id="q5">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a5">
      😿 새끼 고양이가 울면 어떻게 하나요?
    </button>
  </h2>
  <div id="a5" class="accordion-collapse collapse">
    <div class="accordion-body">
      배고픔, 추위, 불안감 때문일 수 있어요. 원인을 찾아 따뜻하고 편안한 환경을 주세요.
    </div>
  </div>
</div>

          <div class="accordion-item">
            <h2 class="accordion-header" id="q3">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a3">
                📋 이전 보호자에게 무엇을 물어봐야 하나요?
              </button>
            </h2>
            <div id="a3" class="accordion-collapse collapse">
              <div class="accordion-body">
                고양이의 건강 상태, 예방접종 여부, 사료 종류, 화장실 습관 등 꼭 확인해야 해요.
              </div>
            </div>
          </div>
        </div>
        
        <div class="text-center mt-5">
          <p class="fw-bold text-muted">작은 고양이에게 큰 사랑을 전하세요 😺</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
