<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>고양이 상세 정보</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js"></script>
</head>
<style>
*,
*::before,
*::after {
  box-sizing: border-box;
}

#cat-info {
  padding: 20px;
  max-width: 1000px;
  margin: 50px auto;
  margin-top: 200px;
  width: 100%;
}

#cat-info-wrapper {
  display: flex;
  flex-wrap: nowrap; /* 줄바꿈 방지 */
  gap: 20px;
  border: 2px solid #ccc;
  padding: 20px;
  border-radius: 10px;
  max-width: 1000px;
  margin: 50px auto;
  background-color: #fdfdfd;
  align-items: flex-start; /* 이미지와 설명 상단 정렬 */
}

#cat-imageBox {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
}

#cat-imageBox img {
  width: 130%;
  max-width: 500px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  opacity: 0;
  margin-left: 0px;
  animation: fadeRight 1s forwards;
}

#cat-description {
  flex: 2;
  padding: 10px;
  min-width: 300px;
  word-break: keep-all; /* 줄 단위 끊김 방지 */
  animation: fadeLeft 1s forwards;
}

#cat-description h1 {
  color: white;
}

#cat-description p {
  font-size: 16px;
  line-height: 1.5;
  color: white;
}

button {
  margin: 10px 5px 0 0;
  padding: 8px 12px;
  font-size: 14px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}

#likeBtn {
  border: 1px solid #000;
}

#shareBtn {
  border: 1px solid #000;
}

@keyframes fadeRight {
  from {
    opacity: 0;
    transform: translateX(50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes fadeLeft {
  from {
    opacity: 0;
    transform: translateX(-50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}




</style>

<body>
<div class="background" style="filter: blur(8px) brightness(0.5);"></div>
<input type="hidden" id="breedVal" value="${breed}">
<div id="cat-info">로딩 중...</div>

<div id="navButtons"></div>

<!-- 오른쪽 사이드바 -->
<div id="side-bar">
  <div id="favoriteBox">
    <h3>💖 즐겨찾기 목록</h3>
    <ul id="favoriteList"></ul>
  </div>

  <div id="recommendedcats">
    <h3>추천 고양이</h3>
    <ul id="recommendedList"></ul>
  </div>
</div>

<script>
let backgroundImages = {}; // 전역 선언 추가

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

function setBackgroundImage(breed) {
    const data = backgroundImages[breed]; // 해당 고양이 종류의 이미지 URL을 가져옵니다.
    console.log(data);  // 데이터 확인

    if (data && data.image) {
        const backgroundElement = document.querySelector('.background'); // .background 요소 선택
        console.log(backgroundElement);  // 요소가 잘 선택되었는지 확인
        if (backgroundElement && backgroundElement.style.backgroundImage !== 'url("' + data.image + '")') {
            backgroundElement.style.backgroundImage = 'url("' + data.image + '")'; // 배경 이미지 설정
            backgroundElement.style.backgroundSize = 'cover'; // 배경 크기 조정
            backgroundElement.style.position = 'fixed';
            backgroundElement.style.top = '0';
            backgroundElement.style.left = '0';
            backgroundElement.style.width = '100%';
            backgroundElement.style.height = '100%';
            backgroundElement.style.backgroundSize = 'cover';
            backgroundElement.style.backgroundPosition = 'center';
            backgroundElement.style.zIndex = '-1';
        }
    }
}

// 고양이 데이터 로드
fetch("/animal/resources/data/cat_data.json")
    .then(response => response.json())
    .then(data => {
        backgroundImages = data;
        setBackgroundImage(breed);

        const cat = data[breed];
        const container = document.getElementById("cat-info");

        if (!cat) {
            container.innerHTML = "<p>해당 품종 정보를 찾을 수 없습니다.</p>";
            return;
        }

        let html = "";
        html += "<h1 style='font-size: 3rem; color: white;'>" + cat.name + " 상세 정보</h1>";
        html += "<button id='likeBtn' onclick='toggleLike()'>🖤 즐겨찾기</button>";
        html += "<button id='shareBtn' onclick='sharePage()'>🔗 공유하기</button>";

        // 고양이 이미지(일반 이미지로 직접 표시)
        html += "<section id='cat-imageBox'>";
        html += "<a href='" + cat.image + "' data-lightbox='cat-image' data-title='" + cat.name + "'>";
        html += "<img src='" + cat.image + "' alt='" + cat.name + "'></a>";
        html += "</section>";

        // 고양이 설명
        html += "<div id='cat-description'>";
        html += "<p><strong>한 줄 소개</strong><br>" + cat.description + "</p>";
        html += "<p><strong>자세한 설명</strong><br>" + cat.introduce + "</p>";
        html += "<p><strong>특징</strong><br>" + cat.detail + "</p>";
        html += "<p><strong>주의할 점</strong><br>" + cat.point + "</p>";
        html += "</div>";

        container.innerHTML = html;
        updateLikeButton();
        updateFavoriteList();
    })
    .catch(err => {
        document.getElementById("cat-info").innerHTML = "<p>정보를 불러오는 데 실패했습니다.</p>";
    });

// 추천 고양이 목록 업데이트
function updateRecommendedcats() {
    const recommendedList = document.getElementById("recommendedList");
    if (!recommendedList) return;

    recommendedList.innerHTML = '';
    const likedcats = breedList.filter(b => localStorage.getItem('like_' + b) === 'true');
    const recommendedBreeds = likedcats.length > 0 ? likedcats.slice(0, 5) : [breedList[0]];

    recommendedBreeds.forEach(b => {
        const li = document.createElement("li");
        li.innerText = b;
        li.onclick = () => location.href = `cat_detail.jsp?breed=${b}`;
        recommendedList.appendChild(li);
    });
}

document.addEventListener("DOMContentLoaded", function () {
    updateFavoriteList();
    updateRecommendedcats();
});
</script>

</body>
</html>
