<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>고양이 보호자 가이드</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .card-icon { font-size: 2.5rem; color: #ff4b5c; }
    .card { border: none; border-radius: 1rem; box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.05); margin-bottom: 20px; transition: transform 0.2s; }
    .card:hover { transform: translateY(-5px); }
  </style>
</head>
<body class="bg-light">

<div class="container py-5">
  <h2 class="text-center mb-4">🐱 고양이 보호자 가이드</h2>

  <!-- 탭 메뉴 -->
  <ul class="nav nav-tabs mb-4" id="catTabs" role="tablist">
    <li class="nav-item">
      <button class="nav-link active" id="general-tab" data-bs-toggle="tab" data-bs-target="#general" type="button" role="tab">일반 고양이</button>
    </li>
    <li class="nav-item">
      <button class="nav-link" id="rescued-tab" data-bs-toggle="tab" data-bs-target="#rescued" type="button" role="tab">잔려묘</button>
    </li>
  </ul>

  <!-- 탭 내용 -->
  <div class="tab-content" id="catTabContent">

    <!-- 일반 고양이 탭 -->
    <div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
      <div class="row row-cols-1 row-cols-md-2 g-4">
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🍽️</div>
            <h5 class="card-title mt-3">올바른 식단</h5>
            <p class="card-text">연령대에 맞는 사료를 급여하고, 깨끗한 물을 항상 제공하세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🛏️</div>
            <h5 class="card-title mt-3">휴식 공간</h5>
            <p class="card-text">안정적인 휴식 공간을 마련해 스트레스를 줄여주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🐾</div>
            <h5 class="card-title mt-3">운동과 놀이</h5>
            <p class="card-text">장난감, 캣타워 등을 활용해 활동량을 유지시켜 주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🧼</div>
            <h5 class="card-title mt-3">청결 유지</h5>
            <p class="card-text">화장실은 자주 청소하고, 털 관리도 꾸준히 해주세요.</p>
          </div>
        </div>
      </div>
      <div class="text-center mt-5">
        <p class="fw-bold text-muted">작은 배려가 고양이의 평생 행복을 만듭니다 🐾</p>
      </div>
    </div>

    <!-- 잔려묘 탭 -->
    <div class="tab-pane fade" id="rescued" role="tabpanel" aria-labelledby="rescued-tab">
      <div class="row row-cols-1 row-cols-md-2 g-4">
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🧠</div>
            <h5 class="card-title mt-3">충분한 공부</h5>
            <p class="card-text">고양이의 습성과 건강을 이해하세요. 식습관, 스트레스 반응, 그루밍 등은 필수 지식이에요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🐾</div>
            <h5 class="card-title mt-3">천천히 다가가기</h5>
            <p class="card-text">잔려묘는 소외됐던 아이일 수 있어요. 조용하고 안전한 공간에서 신뢰를 쌓아주세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🏠</div>
            <h5 class="card-title mt-3">환경 준비</h5>
            <p class="card-text">숨을 곳, 캣타워, 창밖 구경할 자리를 마련해 주세요. 급격한 변화는 피하세요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🩺</div>
            <h5 class="card-title mt-3">건강 체크</h5>
            <p class="card-text">입양 직후 검진과 기초접종을 받고, 이후엔 정기적인 건강관리도 필요해요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">🕒</div>
            <h5 class="card-title mt-3">평생 각오</h5>
            <p class="card-text">고양이의 수명은 평균 15년 이상. 가족으로서 평생 함께할 각오가 필요해요.</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">💬</div>
            <h5 class="card-title mt-3">사회화와 놀이</h5>
            <p class="card-text">장난감, 터치, 말 걸기 등 즐겁고 부드럽게 교감해 주세요. 억지는 금물!</p>
          </div>
        </div>
        <div class="col">
          <div class="card p-4 text-center">
            <div class="card-icon">📸</div>
            <h5 class="card-title mt-3">기록과 공유</h5>
            <p class="card-text">입양일기를 써보세요. 행복한 기록은 또 다른 입양을 이끌 수 있어요.</p>
          </div>
        </div>
      </div>
      <div class="text-center mt-5">
        <p class="fw-bold text-muted">작은 다짐이 큰 생명을 바꿉니다 🐱</p>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
