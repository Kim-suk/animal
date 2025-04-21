<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>새끼 강아지 급여 방법</title>
    <link rel="stylesheet" href="/animal/resources/css/style.css">
    <link rel="stylesheet" href="/animal/resources/css/default.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #fffaf4;
            font-family: 'Pretendard', sans-serif;
            position: relative;
            overflow: hidden;
             overflow: auto;
        }

        /* 흐린 배경 이미지 */
        .background-blur {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            object-fit: cover;
            filter: blur(8px);
            opacity: 0.6;
            z-index: -1;
        }

        /* 애니메이션 효과 */
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* 콘텐츠 카드 애니메이션 */
        .info-card {
            background-color: #ffffff;
            border-radius: 1rem;
            padding: 1.5rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
            transition: 0.3s;
            animation: slideIn 0.5s ease-out;
        }

        .info-card:hover {
            transform: translateY(-5px);
        }

        .section-title {
            font-size: 1.2rem;
            font-weight: 600;
            color: #704214;
            margin-bottom: 0.5rem;
        }

        .desc {
            color: #333;
            line-height: 1.6;
        }

        .emoji {
            margin-right: 6px;
        }

        .container {
            position: relative;
            z-index: 1;
            padding-top: 50px;
        }

        /* 페이지 제목 스타일 */
        .page-title {
            font-size: 2rem;
            font-weight: bold;
            margin-top: 30px;
            text-align: center;
            color: #5c4033;
        }

        /* 가운데 정렬 */
        .row {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>

    <!-- 흐린 배경 이미지 -->
    <img src="/animal/resources/image/d6.jpg" class="background-blur" alt="배경 이미지">

    <!-- 페이지 내용 -->
    <div class="container">
        <div class="page-title">🍼 새끼 강아지의 영양 급여 가이드 🐾</div>

        <div class="row">
            <div class="col-md-8">
                <div class="info-card">
                    <div class="section-title"><span class="emoji">🥩</span>단백질</div>
                    <div class="desc">성장기 새끼 강아지에게 꼭 필요한 영양소예요. 닭고기, 소고기, 생선 등 고단백 사료를 선택해주세요.</div>
                </div>

                <div class="info-card">
                    <div class="section-title"><span class="emoji">🥛</span>칼슘 & 인</div>
                    <div class="desc">뼈와 치아 발달에 중요해요. 퍼피용 사료에는 균형이 잘 맞춰져 있어요.</div>
                </div>

                <div class="info-card">
                    <div class="section-title"><span class="emoji">🔥</span>지방</div>
                    <div class="desc">활동량이 많은 퍼피에게 에너지를 공급해줘요. 과도한 지방은 피해주세요!</div>
                </div>

                <div class="info-card">
                    <div class="section-title"><span class="emoji">🌾</span>탄수화물</div>
                    <div class="desc">적당한 탄수화물은 에너지에 좋아요. 고구마나 현미 기반 사료도 추천해요.</div>
                </div>

                <div class="info-card">
                    <div class="section-title"><span class="emoji">💧</span>수분</div>
                    <div class="desc">항상 신선한 물을 충분히 제공해 주세요. 건사료를 먹는다면 더욱 중요해요!</div>
                </div>

                <div class="info-card">
                    <div class="section-title"><span class="emoji">🕒</span>급여 시간 & 횟수</div>
                    <div class="desc">
                        생후 2~3개월: 하루 4회<br>
                        생후 4~5개월: 하루 3회<br>
                        생후 6개월 이상: 하루 2회<br>
                        <br>
                        정해진 시간에 주는 것이 안정감과 건강에 좋아요!
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
