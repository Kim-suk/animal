<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
<!DOCTYPE html>
<html lang="ko">
<head>
 <link rel="stylesheet" href="/animal/resources/css/style.css">
   
  
    <title>어린 반려묘의 발달 5단계</title>
    <!-- AOS CSS -->
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            position: relative;
            min-height: 100vh; /* 뷰포트 높이 최소 확보 */
            
        }

          /* 배경 이미지 설정 */
        .background-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url("https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_1280.jpg");
            background-size: cover;
            background-size: cover; /* 추가: 전체 화면 채우기 */
            background-position: center;
            filter: blur(8px); /* 흐림 효과 */
            z-index: -1; /* 콘텐츠 위로 올리지 않도록 설정 */
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 2rem;
            position: relative; /* 배경 이미지를 덮을 수 있도록 상대적 위치 설정 */
        }

        h1 {
            font-size: 38px;
            text-align: center;
            margin-bottom: 2rem;
            color: white;
        }

        .milestone {
            background: #fff;
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .milestone h2 {
            margin-top: 0;
            color: #355E3B;
            font-size: 20px;
        }

        .milestone p {
            color: #555;
            line-height: 1.6;
            font-size: 15px;
        }

        .milestone {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .milestone:hover {
            transform: scale(1.03);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
        }

        /* 모달 스타일 */
        .modal-overlay {
            display: none;
            position: fixed;
            z-index: 999;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background: rgba(0, 0, 0, 0.6);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background: #fff;
            padding: 2rem;
            border-radius: 12px;
            max-width: 600px;
            width: 90%;
            position: relative;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            animation: fadeIn 0.3s ease;
            max-width: 1000px;
        }

        .modal-content h2 {
            color: #355E3B;
            margin-top: 0;
            font-size: 30px;
        }

        .modal-content p {
            font-size: 15px;
        }

        .modal-close {
            position: absolute;
            top: 1rem;
            right: 1rem;
            font-size: 20px;
            background: none;
            border: none;
            cursor: pointer;
            color: #333;
        }

        /* 모달 애니메이션 */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .modal-content {
                width: 95%;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
<br><br><br><br><br>
    <div class="background-image"></div>
    <div class="container">

        <h1 data-aos="fade-up"> 반려묘의 출생부터 12주까지 주요 발달 5단계</h1>

        <div class="milestone" data-aos="fade-up" data-aos-delay="100">
            <h2>1단계: 생후 첫 주</h2><br>
           
            <p>태어나자마자 젖을 먹기 시작합니다. 생후 3일이면 어린 반려묘마다 자신이 좋아하는 젖꼭지에 대한 선호가 생기며, 모유를 먹을 때마다 이 젖꼭지를 찾습니다. 
            면역 발달에 도움이 되는 물질인 초유를 이때 섭취하기 때문에 처음 며칠 동안 젖을 먹는 것은 매우 중요합니다.<br><br>
			5일이 지나면 눈을 뜨게 되며, 약 일주일이 지나면 탯줄이 떨어집니다. 매일 체중이 10g-30g씩 늘기
 			시작하므로 체중을 매일 측정하고 어미가 수유를 거부할 경우를 대비하여 어미의 행동을 잘 살펴보아야 합니다.</p>
        </div>

        <div class="milestone" data-aos="fade-up" data-aos-delay="200">
            <h2>2단계: 생후 2주</h2><br>
            
            <p>일어서려고 하며 신체가 빠르게 성장합니다. 하루의 90%는 잠을 자며, 젖니가 나오기 시작합니다. 약 5-7개월 후 영구치가 나면서 젖니는 빠집니다.</p>
        </div>

        <div class="milestone" data-aos="fade-up" data-aos-delay="300">
            <h2>3단계: 생후 4주</h2><br>
            
            <p>활발하게 놀고 이리저리 움직이며 형제 자매들과 사회화를 시작합니다. 어미가 먹는 사료에 관심을 보이기 시작하면서 
            모유 급여에서 조금 더 적합한 영양으로의 식단 전환이 필요합니다. 식단 전환은 서서히 진행해야 합니다.
             잘 씹고 소화하기 쉽도록 따뜻한 물이나 우유에 사료를 섞어 줍니다.</p>
        </div>

        <div class="milestone" data-aos="fade-up" data-aos-delay="400">
            <h2>4단계: 생후 8주</h2><br>
            
            <p>2개월이 지나면 모유를 중단하고 사료를 먹습니다. 이 때 보호자는 적합한 질감과 크기, 
            영양 균형이 잘 잡힌 고열량 사료를 급여하고 소화에 부담이 되지 않도록 단계별로 고양이 사료를 바꿔주어야 합니다. 
            또한 이 시점에 백신 접종에 대해 수의사와 상담해야 합니다.</p>
        </div>

        <div class="milestone" data-aos="fade-up" data-aos-delay="500">
            <h2>5단계: 생후 12주</h2><br>
            
            <p>이 시기에는 매우 빠르게 성장합니다. 생후 4-5개월 시기에는 필요로 하는 에너지량이 감소하지만 높은 체중 증가(매주 100g씩 성장)를 
            보이기 때문에 여전히 성묘보다 3배 많은 에너지를 필요로 합니다.
            <br><br>
             하루에 13~16시간 수면하는 성묘의 수면 패턴에 가까워지고 행동은 완전히 사회화되어 다른 어린 반려묘 뿐 아니라 
             보호자와도 잘 놀 수 있습니다.
             <br><br>
			생후 12~15개월이 되면 성묘가 되고 몸집은 거의 다 성장하게 됩니다. 반려묘 생후 다양한 초기 단계와 필요한 지식에 대해 알고 있으면 
			어린 반려묘들이 건강하고 행복하게 성묘로 성장하는데 도움을 줄 수 있습니다.</p>
        </div>
    </div>

  
    <script>
        AOS.init({
            duration: 800,
            once: true
        });
     // 마일스톤 클릭 시 모달 표시
        document.querySelectorAll('.milestone').forEach((el) => {
            el.addEventListener('click', () => {
                const modal = document.getElementById('milestoneModal');
                const body = document.getElementById('modalBody');
                body.innerHTML = el.innerHTML; // milestone 내용 복사
                modal.style.display = 'flex';
            });
        });

        function closeModal() {
            document.getElementById('milestoneModal').style.display = 'none';
        }
    </script>
    <!-- 모달 -->
<div class="modal-overlay" id="milestoneModal">
    <div class="modal-content">
        <button class="modal-close" onclick="closeModal()">×</button>
        <div id="modalBody"></div>
    </div>
</div>
</body>
</html>

