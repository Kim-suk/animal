<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>강아지 상세 정보</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js"></script>
  <link rel="stylesheet" href="/animal/resources/css/default.css">



</head>
<style>
/* 전체 box-sizing 설정 */
*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  font-family: 'Arial', sans-serif;
  background-color: #f4f4f4;
  padding: 20px;
}

#dog-info {
  padding: 20px;
  max-width: 1000px;
  margin: 50px auto;
  margin-top: 200px;
  width: 100%;
}

#dog-info-wrapper {
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

#dog-imageBox {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
}

#dog-imageBox img {
  width: 130%;
  max-width: 500px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  opacity: 0;
  margin-left: 0px;
  animation: fadeRight 1s forwards;
}

#dog-description {
  flex: 2;
  padding: 10px;
  min-width: 300px;
  word-break: keep-all; /* 줄 단위 끊김 방지 */
  animation: fadeLeft 1s forwards;
  color:white;
}

#dog-description h1 {
  color: white;
}

#dog-description p {
  font-size: 17px;
  line-height: 1.5;
  color:white;
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


  /* 오른쪽 사이드바 스타일 */
  /* #side-bar {
    position: fixed;
    right: 20px;
    top: 20px;
    width: 250px;
    padding: 20px;
    background: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
    z-index: 10;
    margin-top:200px;
  }

  #side-bar h3 {
    font-size: 1.5rem;
    color: #333;
    margin-bottom: 10px;
  }

  #side-bar ul {
    list-style: none;
    padding-left: 0;
  }

  #side-bar ul li {
    margin-bottom: 10px;
    cursor: pointer;
    font-size: 1rem;
    color: #007bff;
    text-decoration: none;
  }

  #side-bar ul li:hover {
    text-decoration: underline;
  } */
</style>
<body>
<div class="background"></div>
	<input type="hidden" id="breedVal" value="${breed}">
	<div id="dog-info">로딩 중...</div>

	<div id="navButtons"></div>

<!-- 오른쪽 사이드바 -->

  <div id="side-bar">
    <div id="favoriteBox">
      <h3>💖 즐겨찾기 목록</h3>
      <ul id="favoriteList"></ul>
    </div>

    <div id="recommendedDogs">
      <h3>추천 강아지</h3>
      <ul id="recommendedList"></ul>
    </div>
  </div>
	<script>
    const breed = document.getElementById("breedVal").value.trim().toLowerCase();
    const breedList = ["chihuahua-smooth-coat", "russian-toy", "maltese", "bolognese", "petit-brabancon", "australian-silky-terrier","yorkshire","english-toy-terrier-black-and-tan","bombay","british-shorthair","chinese-crested-dog","continental-toy-papillon-spaniel",
    	"pomeranian", "griffon-bruxellois", "norwegian-lundehund", "norwich-terrier", "norfolk-terrier", "dashchund-smotth-haired", "danish-swedish-farmdog",
    	"dandie-dinmont-terrier", "dutch-smooshond", "lhasa-apso", "lakeland-terrier", "lowchen", "manchester-terrier", "moody", "miniature-schnauzer-breed-arrows", "miniature-pinscher", "bichon", "gascon-saintongeois", "grand-basset-griffon-vendeen", "griffon-nivernais", "hellenic-hound", 
    	"kishu", "norbottenspitz", "norwegian-buhund", "norwegian-hound", "norwegian-elkhound-grey", "nova-scotia-duck-tolling-retriever", "dutch-schapendoes", "dobermann", "drever", "lapponian-herder", "gordon-setter", "golden-retriever" ,"grand-griffon-vendeen", "greyhound", "gascony", "great-swiss-mountain-dog", 
    	"great-anglo-french-tricolor-hound", "great-anglo-french-white-and-black-hound", "great-anglo-french-white-and-orange-hound", "greenland", "dalmatian", "dutch-shepherd", "dogo-argentino", "deutsch-stichelhaar", "drentsche-partridge", "deerhound", "great-dane-cover", "neapolitan-mastiff", "newfoundland", "dogue-de-bordeaux", "landseer", "leonberger", "rottweiller", "mastiff", "bernese-mountain",
    	"bullmastiff", "broholmer", "bernard", "spanish", "irish", "estrela", "kangal"]; // 확장 가능

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
                li.onclick = () => lodogion.href = `dog_detail.jsp?breed=${b}`;
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
    fetch("/animal/resources/data/dog_data.json")
        .then(response => response.json())
        .then(data => {
            const dog = data[breed];
            const container = document.getElementById("dog-info");

            if (!dog) {
                container.innerHTML = "<p>해당 품종 정보를 찾을 수 없습니다.</p>";
                return;
            }

            let html = "";
            html += "<br>" + "<br>" + "<h1 style='font-size: 3rem; color: white;'>" + dog.name + " 상세 정보</h1>" + "<br>";
            html += "</div>";
            html += "<button id='likeBtn' onclick='toggleLike()'>🖤 즐겨찾기</button>";
            html += "<button id='shareBtn' onclick='sharePage()'>🔗 공유하기</button>";
            html += "</div>";
            html += "<decription id='dog-description' class='fadeRight'>";
            html += "<section id='dog-imageBox' class='fadeRight'>";
            html += "<div class='description-right'fadeRight'>";
            html += "<a href='" + dog.image + "' data-lightbox='dog-image' data-title='" + dog.name + "'>";
            html += "<img src='" + dog.image + "' alt='강아지 이미지'></a>";
            html += "</div>"; // 이미지 영역 종료

            html += "<decription id='dog-description' class='fadeRLeft'>";
            html += "<div class='description-right fadeLeft'>";
 
            html += "<p><strong>한 줄 소개</strong><br>" + dog.description + "</p>" + "<br>";
            html += "<p><strong>자세한 설명</strong><br>" + dog.introduce + "</p>"+ "<br>";
            html += "<p><strong>특징 </strong><br>" + dog.detail + "</p>"+ "<br>";
            html += "<p><strong>주의할 점</strong><br>" + dog.point + "</p>";
            html += "</div>"; // 설명 영역 종료

            container.innerHTML = html;
            updateLikeButton();
            updateFavoriteList();

           
        })
        .catch(err => {
            document.getElementById("dog-info").innerHTML = "<p>정보를 불러오는 데 실패했습니다.</p>";
        });

    
   // 추천 강아지 목록 업데이트
function updateRecommendedDogs() {
    const recommendedList = document.getElementById("recommendedList");
    if (!recommendedList) return;

    recommendedList.innerHTML = '';
    const likedDogs = breedList.filter(b => localStorage.getItem('like_' + b) === 'true');
    const recommendedBreeds = likedDogs.length > 0 ? likedDogs.slice(0, 5) : [breedList[0]];

    recommendedBreeds.forEach(b => {
        const li = document.createElement("li");
        li.innerText = b;
        li.onclick = () => location.href = `dog_detail.jsp?breed=${b}`;
        recommendedList.appendChild(li);
    });
}

// 별점 기능
function rateDog() {
    const rating = prompt("이 강아지에게 몇 점을 주시겠어요? (1~5점)");
    const num = parseInt(rating);
    if (!isNaN(num) && num >= 1 && num <= 5) {
        localStorage.setItem('rating_' + breed, num);
        displayRating();
    } else {
        alert("1~5 사이의 숫자를 입력해주세요!");
    }
}

function displayRating() {
    const ratingDisplay = document.getElementById("ratingDisplay");
    const rating = localStorage.getItem('rating_' + breed);
    if (ratingDisplay && rating) {
        ratingDisplay.innerText = `⭐️ 별점: ${rating}/5`;
    }
}

// 페이지 로딩 시
document.addEventListener("DOMContentLoaded", function () {
    displayRating();
    updateFavoriteList();
    updateRecommendedDogs();
});

function setBackgroundImage(breed) {
    const imageUrl = backgroundImages[breed];
    if (imageUrl) {
        document.body.style.background = "url('${imageUrl}') no-repeat center center fixed";
        document.body.style.backgroundSize = 'cover';
        document.body.style.filter = 'blur(2px) grayscale(100%)'; // 흐릿하고 흑백 느낌
    }
}
</script>

</body>
</html>
