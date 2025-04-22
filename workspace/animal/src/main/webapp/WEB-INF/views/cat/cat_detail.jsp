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

body {
  font-family: 'Arial', sans-serif;
  background-color: #f4f4f4;
  background:z-index:-1;
  padding: 20px;
}

#cat-info {
  padding: 20px;
  max-width: 1000px;
  margin: 50px auto;
  margin-top: 200px;
  width: 100%;
    flex-direction: row; /* 가로로 배치 */
     align-items: center; /* 수직 중앙 정렬 */
  justify-content: flex-start; /* 수평 왼쪽 정렬 */
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
    flex-direction: row; /* 이미지를 왼쪽, 설명을 오른쪽으로 배치 */
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
  font-size: 17px;
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

/* 
#likeBtn {
  border: 1px solid #000;
} */

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

/* 모달 스타일 */
/* #loginModal {
    display: none; 
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); 
    z-index: 1000; 
    align-items: center;
    justify-content: center;
}
 */
/* .modal-content {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    width: 300px;
    text-align: center;
}

#closeModal {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 25px;
} */
/* 모달 오버레이 */
/* .modal-overlay {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: rgba(0, 0, 0, 0.5);
    justify-content: center;
    align-items: center;
    animation: fadeIn 0.3s ease forwards;
    z-index: 1000;
} */

/* 모달 창 */
/* .modal-content {
    background: #fff;
    padding: 30px 40px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    transform: translateY(-20px);
    opacity: 0;
    animation: slideUp 0.3s ease forwards;
} */

/* 버튼 영역 */
/* .modal-buttons {
    margin-top: 20px;
} */

/* 닫기 버튼 */
/* .btn-cancel {
    padding: 10px 20px;
    background: #ccc;
    border: none;
    border-radius: 5px;
    margin-right: 10px;
    cursor: pointer;
} */

/* 로그인 버튼 */
/* .btn-login {
    padding: 10px 20px;
    background: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
} */

/* 페이드 인 애니메이션 */
@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* 슬라이드 업 애니메이션 */
@keyframes slideUp {
    to {
        transform: translateY(0);
        opacity: 1;
    }
}
</style>

<body>

<!-- 로그인 유도 모달 -->
<!-- <div id="loginModal" class="modal-overlay">
    <div class="modal-content">
        <p>로그인이 필요한 기능입니다.</p>
        <div class="modal-buttons">
            <button onclick="closeModal()" class="btn-cancel">닫기</button>
            <button onclick="goToLogin()" class="btn-login">로그인</button>
        </div>
    </div>
</div>
 -->

<div class="background" style="filter: blur(8px) brightness(0.5);"></div>
<input type="hidden" id="breedVal" value="${breed}">
<div id="cat-info">로딩 중...</div>

<div id="navButtons"></div>

<!-- 오른쪽 사이드바 -->
<!-- <div id="side-bar">
  <div id="favoriteBox">
    <h3>💖 즐겨찾기 목록</h3>
    <ul id="favoriteList"></ul>
  </div> 

   <div id="recommendedcats">
    <h3>추천 고양이</h3>
    <ul id="recommendedList"></ul>
  </div>
</div> -->


<script>
let backgroundImages = {}; // 전역 선언 추가

const breed = document.getElementById("breedVal").value.trim().toLowerCase();
const breedList = ["devonrex", "donsphynx", "russian", "manx", "munchkin", "burmese","burmilla","bengale","bombay","british-shorthair","seychellois","sokoke",
   "snowshoe", "sphynx", "siamese", "singapura", "american-bobtail", "american-shorthair", "wirehair",
   "curl", "asian", "oriental", "australian", "ocicat", "egyptian", "german", "khao", "cornish", "korat", "bobtail", "thai", "tonkinese", "peterbald", "pixiebob",
   "havana", "neva", "norwegian", "ragamuffin", "laperm", "ragdoll", "maine", "birman", "chartreux", "selkirk" ,"somali", "scottish", "fold", "abyssinian", "exotic", 
   "japanese", "savannah", "cymric", "turkish", "angora", "balinese", "longhair", "siberian", "persian"]; // 확장 가능

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
 /*        html += "<button id='likeBtn' onclick='checkLoginStatus()'>🖤 즐겨찾기</button>"; */
        html += "<button id='shareBtn' onclick='sharePage()'>🔗 공유하기</button>";

        // 고양이 이미지(일반 이미지로 직접 표시)
        html += "<section id='cat-imageBox' >";
        html += "<a href='" + cat.image + "' data-lightbox='cat-image' data-title='" + cat.name + "'>";
        html += "<img src='" + cat.image + "' alt='" + cat.name + "'></a>";
        html += "</section>";

        // 고양이 설명
        html += "<div id='cat-description'>";
        html += "<p><strong>한 줄 소개</strong><br><br>	" + cat.description + "</p><br>";
        html += "<p><strong>자세한 설명</strong><br><br>" + cat.introduce + "</p><br>";
        html += "<p><strong>특징</strong><br><br>" + cat.detail + "</p><br>";
        html += "<p><strong>주의할 점</strong><br><br>" + cat.point + "</p>";
        html += "</div>";

        container.innerHTML = html;
        /* updateLikeButton();
        updateFavoriteList(); */
    })
    .catch(err => {
        document.getElementById("cat-info").innerHTML = "<p>정보를 불러오는 데 실패했습니다.</p>";
    });

/* // 추천 고양이 목록 업데이트
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

//즐겨찾기 버튼 눌렀을 때 로그인 상태 체크
function checkLoginStatus() {
    const loggedIn = localStorage.getItem('loggedIn') === 'true';

    if (!loggedIn) {
        showLoginModal(); // 로그인 안 됐으면 모달 표시
    } else {
        toggleLike(); // 로그인 됐으면 즐겨찾기 실행
    }
}

// 즐겨찾기 토글 기능
function toggleLike() {
    const key = 'like_' + breed;
    const isLiked = localStorage.getItem(key) === 'true';
    localStorage.setItem(key, (!isLiked).toString());
    updateLikeButton();
    updateFavoriteList();
}

// 모달 표시
function showLoginModal() {
    const modal = document.getElementById('loginModal');
    if (modal) {
        modal.style.display = 'flex';
    }
}

function closeModal() {
    const modal = document.getElementById('loginModal');
    if (modal) {
        modal.style.display = 'none';
    }
}

function goToLogin() {
    const path = window.location.pathname + window.location.search;
    const ctx = window.location.pathname.split('/')[1]; // animal
    const cleanPath = path.replace("/" + ctx, ""); // animal 제거

    location.href = "/animal/member/loginForm.do?action=" + encodeURIComponent(cleanPath);
}

// 로그인 처리 (예시: 로그인 성공 후 로컬스토리지에 상태 저장)
function login() {
    localStorage.setItem('loggedIn', 'true');
    closeModal(); // 로그인 후 모달 닫기
    updateLikeButton(); // 로그인 상태에 맞는 버튼 업데이트
    updateFavoriteList(); // 즐겨찾기 목록 업데이트
}

// 모달 닫기 버튼 클릭 시
document.getElementById('closeModal').addEventListener('click', closeModal);

// 페이지 로드 시 로그인 상태 확인
document.addEventListener("DOMContentLoaded", function () {
    updateFavoriteList();
    updateRecommendedcats();
    checkLoginStatus();  // 로그인 상태를 페이지 로드 시 확인
});

//즐겨찾기 토글
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

//즐겨찾기 목록 출력
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
} */

</script>

</body>
</html>
