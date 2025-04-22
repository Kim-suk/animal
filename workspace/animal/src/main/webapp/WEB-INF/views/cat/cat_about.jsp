<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>고양이에 대한 모든 것</title>
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
            color: #263b2c;
            margin-bottom: 12px;
        }

        .desc {
            font-size: 15px;
            margin-bottom: 18px;
            color: #666;
        }

       .btn {
             border: 1.5px solid #263b2c;
            color: #263b2c;
            background: none;
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 14px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: #8F9779;
            color: #fff;
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
            <img src="/animal/resources/image/b8.avif" alt="고양이 출생">
            <div class="text-box">
                <div class="title">반려묘의 출생과 성장기</div>
                <div class="desc">
                    새끼 고양이가 성묘가 되기까지 겪는 놀라운 변화를 이해하면 각 발달 단계마다 알맞은 영양 균형을 유지하게 할 수 있습니다
                </div>
                 <a href="/animal/cat/cat_grow.do" class="btn">자세히 알아보기</a>
            </div>
        </div>

 <div class="card">
            <img src="/animal/resources/image/cat30.avif" alt="12주까지 주요 발달">
            <div class="text-box">
                <div class="title"> 어린 반려묘의 출생부터 12주까지 주요 발달</div>
                <div class="desc">
                      어린 고양이는 생후 첫 해에 중요한 변화를 겪게 됩니다.<br>
                    생후 12주까지 살펴봐야 할 다섯 가지 주요 단계와 각 단계에서 반려묘에게 줄 수 있는 도움에 대해 알아보세요. 
                </div>
                   <a href="/animal/cat/cat_born.do" class="btn">자세히 알아보기</a>
            </div>
        </div>
    

        <div class="card">
            <div class="text-box">
                <div class="title">묘종에 대해 알아보기</div>
                <div class="desc">
                    전 세계 다양한 고양이 품종의 특징과 성격을 한눈에 볼 수 있어요.
                </div>
                <a href="/animal/cat/cat_type.do" class="btn">묘종 모두보기</a>
            </div>
            <img src="/animal/resources/image/gr4.jpg" alt="묘종 검색">
        </div>

        <div class="card">
            <div class="text-box">
                <div class="title">반려묘를 기를까 고민 중이신가요?</div>
                <div class="desc">
                   보호자로서 고양이를 위해 할 수 있는 것엔 무엇이 있을까요?
		해당 페이지를 통해 고양이를 키울 때 따르는 책임과 장점에 대하여 알아보세요.
                </div>
                 <a href="/animal/cat/cat_think.do" class="btn">자세히 알아보기</a>
            </div>
            <img src="/animal/resources/image/o.jpg" alt="고민 고양이">
        </div>
        
          <div class="card">
            <img src="/animal/resources/image/img05.jpg" alt="고민 고양이">
            <div class="text-box">
                <div class="title"> 책임감 있는 보호자가 되려면?</div>
                <div class="desc">
                    책임감 있는 보호자가 되기 위해 필요한 마음가짐과 준비 사항을 알려드려요.
                </div>
                 <a href="/animal/cat/cat_responsible.do" class="btn">자세히 알아보기</a>
            </div>
        </div>
       
<div class="card">
            <img src="/animal/resources/image/img03.jpg" alt="필수 케어 가이드">
            <div class="text-box">
                <div class="title"> 
						새끼 고양이를 위한 필수 케어 가이드</div>
                <div class="desc">
                      새끼 고양이는 생후 첫 해가 건강적으로 가장 취약한 시기입니다.<br>
                    이 가이드를 통해 새끼 고양이를 건강하게 키우는 방법을 확인해 보세요 
                </div>
                   <a href="/animal/cat/cat_kitten.do" class="btn">자세히 알아보기</a>
            </div>
        </div>

    </div>
</body>
</html>
