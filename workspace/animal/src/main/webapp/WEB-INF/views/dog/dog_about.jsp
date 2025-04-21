<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>강아지에 대한 모든 것</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Noto Sans KR', sans-serif;
            background: #fffaf9 url('https://www.transparenttextures.com/patterns/purty-wood.png');
            color: #555;
            line-height: 1.5;
        }

        .container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            padding: 80px 100px;
            margin-top:100px;
        }

        .card {
            display: flex;
            flex-direction: row;
            align-items: center;
            gap: 40px;
            transition: transform 0.3s ease;
            background-color: transparent;
            border: none;
            box-shadow: none;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card img {
    width: 240px;
    height: 240px; /* 높이도 고정해서 통일 */
    object-fit: cover; /* 이미지 비율 유지하며 잘림 처리 */
    border-radius: 12px;

}

        .text-box {
            max-width: 400px;
        }

        .title {
            font-size: 22px;
            font-weight: bold;
            color: #704214;;
            margin-bottom: 12px;
        }

        .desc {
            font-size: 15px;
            margin-bottom: 18px;
            color: #666;
        }

        .btn {
            border: 1.5px solid #c9a881;;
            color: #704214;;
            background: none;
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 14px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: #c9a881;;
            color: #704214;;
        }

        @media screen and (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
                padding: 40px 20px;
            }

            .card {
                flex-direction: column;
                text-align: center;
            }

            .card img {
                width: 140px;
            }

            .text-box {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">

        <div class="card">
            <img src="/animal/resources/image/poppy1.png" alt="강아지 출생">
            <div class="text-box">
                <div class="title">영양 요소에 따른 <br>새끼 강아지<br> 급여 방법</div>
                <div class="desc">
                    새끼 강아지의 건강한 성장을 위해 어떤 영양소가 필요한지 알아보세요!
                </div>
                 <a href="/animal/dog/dog_feed.do" class="btn">자세히 알아보기</a>
            </div>
        </div>

 <div class="card">
            <img src="/animal/resources/image/p3.avif" alt="12주까지 주요 발달">
            <div class="text-box">
                <div class="title"> 출생부터 성견이 되기까지 강아지의 발달</div>
                <div class="desc">
                     강아지가 성견이 되기까지 겪는 놀라운 변화를 이해하면 각 발달 단계마다 알맞은 영양을 섭취하게 할 수 있습니다.
                </div>
                   <a href="/animal/dog/dog_born.do" class="btn">자세히 알아보기</a>
            </div>
        </div>
    

        <div class="card">
            <div class="text-box">
                <div class="title">품종에 대해 알아보기</div>
                <div class="desc">
                    전 세계 다양한 강아지 품종의 특징과 성격을 한눈에 볼 수 있어요.
                </div>
                <a href="/animal/dog/dog_type.do" class="btn">묘종 모두보기</a>
            </div>
            <img src="/animal/resources/image/sb.jpg" alt="묘종 검색">
        </div>

        <div class="card">
            <div class="text-box">
                <div class="title">반려견를 기를까 <br>고민 중이신가요?</div>
                <div class="desc">
                   보호자로서 강아지를 위해 할 수 있는 것엔 무엇이 있을까요?
		해당 페이지를 통해 강아지를 키울 때 따르는 책임과 장점에 대하여 알아보세요.
                </div>
                 <a href="/animal/dog/dog_think.do" class="btn">자세히 알아보기</a>
            </div>
            <img src="/animal/resources/image/d1.jpg" alt="고민 강아지">
        </div>
        
          <div class="card">
            <img src="/animal/resources/image/p1.avif" alt="고민 강아지">
            <div class="text-box">
                <div class="title"> 책임감 있는 보호자가 되려면?</div>
                <div class="desc">
                    책임감 있는 보호자가 되기 위해 필요한 마음가짐과 준비 사항을 알려드려요.
                </div>
                 <a href="/animal/dog/dog_responsible.do" class="btn">자세히 알아보기</a>
            </div>
        </div>
       
<div class="card">
            <img src="/animal/resources/image/d6.jpg" alt="필수 케어 가이드">
            <div class="text-box">
                <div class="title"> 
						새끼 강아지를 위한 <br>필수 케어 가이드</div>
                <div class="desc">
                      새끼 강아지는 생후 첫 해가 건강적으로 가장 취약한 시기입니다.<br>
                    이 가이드를 통해 새끼 강아지를 건강하게 키우는 방법을 확인해 보세요 
                </div>
                   <a href="/animal/dog/dog_puppy.do" class="btn">자세히 알아보기</a>
            </div>
        </div>

    </div>
</body>
</html>
