<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고양이를 기를까 생각중이신가요?</title>

<!-- CSS / 스타일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/animal/resources/css/style.css?v=1.0.3">
<script
	src="https://cdn.jsdelivr.net/npm/@google/model-viewer@1.0.0/dist/model-viewer.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>



<!-- 3D 모델뷰어 -->
<script type="module"
	src="https://cdn.royalcanin-weshare-online.io/XEAlJ4oBRYZmsWpctAuD/v5/maine-coon-kittens"></script>
<body>
	<!-- 페이지 전용 스타일 -->
	<style>
body {
	font-family: 'Arial', sans-serif;
	
	line-height: 1.6;
	background-color: #f0f0f0;
	margin: 0;
}

.cat-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	gap: 40px;
	padding: 50px;
	background-color: #f8f8f8;
	border-radius: 20px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	max-width: 1200px;
	margin: 60px auto;
}

.tab-button {
	font-size: 16px;
}

.cat-model {
	flex-shrink: 0;
}

model-viewer {
	width: 400px;
	height: 400px;
	background: white;
	border-radius: 20px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.cat-text {
	max-width: 500px;
}

.cat-text h1 {
	font-size: 32px;
	margin-bottom: 20px;
}

.cat-text p, section p {
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

        body {
            background-color: #f8f9fa;
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
}
</style>
</head>

<body>
	<div class="breadcrumb">
        <a href="/animal/main.do">홈페이지</a>
        <span>›</span>
        <a href="/animal/cat_all.jsp" class="highlight">반려묘에 대한 모든 것</a>
        <span>›</span>
        <span class="/animal/cat_think.jsp">고양이를 키울지 고민 중이신가요?</span>
    </div>
    
	<div class="text-center mb-4">
		<button class="tab-button btn btn-outline-secondary me-2"
			data-tab="vision">장점1</button>
		<button class="tab-button btn btn-outline-secondary me-2"
			data-tab="immunity">장점2</button>
		<button class="tab-button btn btn-outline-secondary me-2"
			data-tab="weight">장점3</button>
		<button class="tab-button btn btn-outline-secondary me-2"
			data-tab="bone">장점4</button>

	</div>
	<!-- 3D 모델과 소개 영역 -->
	<div class="cat-container">
		<div class="cat-model">
			<model-viewer src="${contextPath}/resources/model/model.glb"
				alt="3D 고양이" auto-rotate camera-controls ar autoplay exposure="1"
				shadow-intensity="1"> </model-viewer>
		</div>
		<div class="cat-text">
			<h1>
				고양이를 키울지 고민<br>중이신가요?
			</h1>
			<p>
			<p>
				고양이를 키우고 싶으신가요? 고양이는 독립적이며 여러모로 자신을 스스로 돌볼 줄 아는 동물로 알려져 있습니다.<br>
				하지만반려묘를 키우기에 앞서 많은 것을 고려해야 합니다.고양이와 함께하는 삶은 어떨까요?<br> 보호자로서
				고양이를 위해 할 수 있는 것엔 무엇이 있을까요?<br> 해당 페이지를 통해 고양이를 키울 때 따르는 책임과
				장점에 대하여 알아보세요.
			</p>

			<h2>해당 페이지에서는 다음과 같은 정보를 확인할 수 있습니다.</h2>
			<ul class="toc">
				<li><a href="#first">1. 책임감 있는 보호자가 되려면?</a></li>
				<li><a href="#second">2. 고양이를 키우기 전에 고려해야 할 점</a></li>
				<li><a href="#third">3. 나에게 맞는 묘종은?</a></li>
				<li><a href="#fourth">4. 고양이 입양처</a></li>
			</ul>
		</div>
	</div>

	<!-- SECTION 1 -->
	<section id="first">
		<div>
			<h2>1. 책임감 있는 보호자가 되려면?</h2>

			<p>책임감 있는 고양이 보호자가 되는 것은 결코 쉬운 일이 아닙니다.</p>
		</div>
	</section>

	<section>
		<h3>고양이를 키울 때의 장점</h3>
		<p>고양이를 키울 때 따르는 책임에 대해서 알아보았다면 이제는 그 장점에 대해 알아볼 차례입니다.</p>
		<div class="tab-content bg-white shadow-md rounded-xl p-6 text-center">
			<div id="vision" class="tab-panel">
				<h3 class="text-lg font-bold text-red-500 mb-2">장점1</h3>
				<p class="text-gray-600">훌륭한 동반자 역할을 하는 고양이는 1인 가구에 더욱 적합합니다.</p>
			</div>
			<div id="immunity" class="tab-panel hidden">
				<h3 class="text-lg font-bold text-red-500 mb-2">장점2</h3>
				<p class="text-gray-600">애정 가득한 고양이는 우리의 불안감을 낮추는 데 도움을 줍니다. 흔히
					말하는 고양이의 '골골송'은 사람에게 치유 효과도 있다고 알려져 있습니다.</p>
			</div>
			<div id="weight" class="tab-panel hidden">
				<h3 class="text-lg font-bold text-red-500 mb-2">장점3</h3>
				<p class="text-gray-600">털 뭉치 친구들을 보살피는 것은 목적의식을 갖게 합니다.</p>
			</div>
			<div id="bone" class="tab-panel hidden">
				<h3 class="text-lg font-bold text-red-500 mb-2">장점4</h3>
				<p class="text-gray-600">반려동물을 키우는 일은 일상에 틀을 잡아주기도 합니다. 또한 고양이와
					장난을 치면 궂은 하루도 기분 좋게 마무리 할 수 있답니다.</p>
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
		<h3>고양이를 키울 때의 장점</h3>
		<a
			href="https://www.royalcanin.com/kr/cats/kitten/kitten-development-from-birth-to-adulthood">
			<img
			src="https://cdn.royalcanin-weshare-online.io/jldh6IwBBKJuub5qARjz/v3/sacred-birman-kitten-birth-growth-brand-emblematic-1-1"
			width="200px">
			<p class="apple">자세히 알아보기</p>
		</a>
	</section>


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
		
		<p class="apple" href="/animal/cat/cat_type.jsp">묘종 알아보기</p>
	</section>

	<section id="fourth">
		<h2>4. 고양이 입양처</h2>
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
                    파양되거나 유기된 고양이를 데려오기로 결정했다면 지역에 있는 고양이 보호소를 방문해 가능한 많은 정보를 공유해보세요. 보호소 안의 고양이들에 대해 잘 알고 있기 때문에 가장 잘 어울리는 고양이를 추천해 줄 수 있습니다.
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