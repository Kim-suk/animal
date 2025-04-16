<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>고양이 상세 정보</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js"></script>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
           
        }
        #cat-info {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            border: 2px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            max-width: 900px;
            margin: 50px auto;
            margin-top: 200px;
            background-color: #fdfdfd;
             
        }
        #cat-info img {
            width: 45%;
            border-radius: 10px;
            margin-top: 10px;
          
        }
        #cat-description {
            flex: 1;
            padding: 10px;

        }
        #cat-description h2 {
            color: rgb(138, 43, 226);
        }
        #cat-description p {
            font-size: 16px;
            line-height: 1.5;
        }
        button {
            margin: 10px 5px 0 0;
            padding: 8px 12px;
            font-size: 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        #likeBtn { background-color: #ffeef8; border: 1px solid #ff80bf; }
        #shareBtn { background-color: #e0f7fa; border: 1px solid #00acc1; }
        #navButtons {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }
        #searchBox, #favoriteBox {
            text-align: center;
            margin-top: 30px;
        }
        #searchResult, #favoriteList {
            list-style: none;
            padding: 0;
            max-width: 400px;
            margin: 10px auto;
        }
        li {
            padding: 10px;
            cursor: pointer;
        }

#cat-imageBox {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}

#cat-imageBox img {
    width: 100%;
    max-width: 400px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

#cat-description {
    flex: 2;
    padding: 10px;
}
       
    </style>
</head>
<body>

<input type="hidden" id="breedVal" value="${breed}">
<div id="cat-info">로딩 중...</div>

<div id="navButtons"></div>

<div id="favoriteBox">
    <h3>💖 즐겨찾기 목록</h3>
    <ul id="favoriteList"></ul>
</div>

<div id="recommendedCats">
    <h3>추천 고양이</h3>
    <ul id="recommendedList"></ul>
</div>

<button id="rateBtn" onclick="rateCat()">⭐️ 별점 주기</button>
<div id="ratingDisplay"></div>

<script>
    const breed = document.getElementById("breedVal").value.trim().toLowerCase();
    const breedList = ["devonrex", "donsphynx", "russian", "manx", "munchkin", "burmese","burmilla","bengale","bombay","british-shorthair","seychellois","sokoke",
    	"snowshoe", "sphynx", "siamese", "singapura", "american-bobtail", "american-shorthair", "wirehair",
    	"curl", "asian", "oriental", "australian", "ocicat", "egyptian", "german", "khao", "cornish", "korat", "bobtail", "thai", "tonkinese", "peterbald", "pixiebob",
    	"havana", "neva", "norwegian", "ragamuffin", "laperm", "ragdoll", "maine", "birman", "chartreux", "selkirk" ,"somali", "scottish", "fold", "abyssinian", "exotic", 
    	"japanese", "savannah", "cymric", "turkish", "angora", "balinese", "longhair", "siberian", "persian"]; // 확장 가능

    // 즐겨찾기 토글
    function toggleLike() {
        const key = 'like_' + breed;
        const isLiked = localStorage.getItem(key) === 'true';
        localStorage.setItem(key, (!isLiked).toString());
        updateLikeButton();
        updateFavoriteList();
    }

    function updateLikeButton() {
        const key = 'like_' + breed;
        const isLiked = localStorage.getItem(key) === 'true';
        const btn = document.getElementById('likeBtn');
        btn.innerText = isLiked ? '💖 즐겨찾기됨!' : '❤️ 즐겨찾기';
    }

    // 즐겨찾기 목록 출력
    function updateFavoriteList() {
        const ul = document.getElementById("favoriteList");
        ul.innerHTML = '';
        breedList.forEach(b => {
            if (localStorage.getItem('like_' + b) === 'true') {
                const li = document.createElement("li");
                li.innerText = b;
                li.onclick = () => location.href = `cat_detail.jsp?breed=${b}`;
                ul.appendChild(li);
            }
        });
    }

    // 공유 기능
    function sharePage() {
        const url = window.location.href;
        if (navigator.share) {
            navigator.share({
                title: document.title,
                url: url
            }).catch(console.error);
        } else {
            navigator.clipboard.writeText(url)
                .then(() => alert("링크가 복사되었습니다!"))
                .catch(() => alert("복사 실패!"));
        }
    }

    // 고양이 데이터 로드
    fetch("/animal/resources/data/cat_data.json")
        .then(response => response.json())
        .then(data => {
            const cat = data[breed];
            const container = document.getElementById("cat-info");

            if (!cat) {
                container.innerHTML = "<p>해당 품종 정보를 찾을 수 없습니다.</p>";
                return;
            }

            let html = "";
            html += "<decription id='cat-description'>";
            html += "<section id='cat-imageBox'>";
            html += "<div class='description-right'>";
            html += "<a href='" + cat.image + "' data-lightbox='cat-image' data-title='" + cat.name + "'>";
            html += "<img src='" + cat.image + "' alt='고양이 이미지'></a>";
            html += "</div>"; // 이미지 영역 종료

            html += "<decription id='cat-description'>";
            html += "<h2>😺 " + cat.name + " 상세 정보</h2>";
            html += "<div class='description-left'>";
            html += "<button id='likeBtn' onclick='toggleLike()'>❤️ 즐겨찾기</button>";
            html += "<button id='shareBtn' onclick='sharePage()'>🔗 공유하기</button>";
            html += "<p><strong>한 줄 소개</strong><br>" + cat.description + "</p>";
            html += "<p><strong>자세한 설명</strong><br>" + cat.introduce + "</p>";
            html += "<p><strong>특징 요약</strong><br>" + cat.detail + "</p>";
            html += "<p><strong>주의할 점</strong><br>" + cat.point + "</p>";
            html += "</div>"; // 설명 영역 종료

            container.innerHTML = html;
            updateLikeButton();
            updateFavoriteList();

            // 이전/다음 품종 버튼 생성
            const currentIndex = breedList.indexOf(breed);
            let navHtml = "";
            if (currentIndex > 0) {
                navHtml += `<a href="cat_detail.jsp?breed=${breedList[currentIndex - 1]}">⬅️ ${breedList[currentIndex - 1]}</a>`;
            } else {
                navHtml += `<span></span>`;
            }

            if (currentIndex < breedList.length - 1) {
                navHtml += `<a href="cat_detail.jsp?breed=${breedList[currentIndex + 1]}">${breedList[currentIndex + 1]} ➡️</a>`;
            }

            document.getElementById("navButtons").innerHTML = navHtml;
        })
        .catch(err => {
            document.getElementById("cat-info").innerHTML = "<p>정보를 불러오는 데 실패했습니다.</p>";
        });

    // 추천 고양이 목록
    function updateRecommendedCats() {
        const recommendedList = document.getElementById("recommendedList");
        recommendedList.innerHTML = '';

        // 즐겨찾기한 고양이를 기준으로 추천 품종 생성
        const likedCats = breedList.filter(b => localStorage.getItem('like_' + b) === 'true');
        const recommendedBreeds = breedList.filter(b => likedCats.includes(b));

        // 추천 품종이 없을 경우 기본적으로 첫 번째 고양이 품종 추천
        if (recommendedBreeds.length === 0) {
            recommendedBreeds.push(breedList[0]);
        }

        // 추천 품종 목록 표시
        recommendedBreeds.forEach(b => {
            const li = document.createElement("li");
            li.innerText = b;
            li.onclick = () => location.href = `cat_detail.jsp?breed=${b}`;
            recommendedList.appendChild(li);
        });
    }

    // 페이지 로딩 시 추천 고양이 업데이트
    updateRecommendedCats();

    // 사용자 별점 평가 기능
    function rateCat() {
        let rating = prompt("고양이에 대한 별점을 주십시오 (1~5):");
        if (rating >= 1 && rating <= 5) {
            localStorage.setItem("rating_" + breed, rating);
            updateRatingDisplay();
        } else {
            alert("1에서 5까지의 별점을 입력하세요.");
        }
    }

    // 평가 표시
    function updateRatingDisplay() {
        const rating = localStorage.getItem("rating_" + breed);
        const displayDiv = document.getElementById("ratingDisplay");
        if (rating) {
            displayDiv.innerHTML = `사용자 별점: ${rating} ⭐️`;
        } else {
            displayDiv.innerHTML = "별점이 아직 없습니다.";
        }
    }

    // 페이지 로딩 시 별점 표시
    updateRatingDisplay();
</script>

<article id="inc05"></article>
</body>
</html>
