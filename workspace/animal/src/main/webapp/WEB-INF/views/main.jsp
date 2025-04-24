<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>수경이꺼</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
   rel="stylesheet">



<link rel="stylesheet" href="/animal/resources/css/default.css">
<link rel="stylesheet" href="/animal/resources/css/top_nav.css">
<link rel="stylesheet" href="/animal/resources/css/swiper.css">
<link rel="stylesheet" href="/animal/resources/css/aos.css">
<link rel="stylesheet"  href="/animal/resources/css/main_banner_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc01_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc02_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc03_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc04_style.css">
<link rel="stylesheet" href="/animal/resources/css/user.css">
<link rel="stylesheet" href="/animal/resources/css/footer.css">
<link rel="stylesheet" href="/animal/resources/css/slider.css">
<link rel="stylesheet" href="/animal/resources/css/font_face.css">
<link rel="stylesheet" href="/animal/resources/css/common.css">
<link rel="stylesheet" href="/animal/resources/css/main.css">
<link rel="stylesheet" href="/animal/resources/css/style.css">

<style>
.innner{
 margin-left:0px;
}
.sh_notice_area {
  overflow: hidden;
  margin-right:0px;
  margin-left:0px;
}
.swiper {
   width: 100%;
   max-width: 90%;
   padding: 20px 0;
}

.swiper-slide {
   display: flex;
   justify-content: center;
   align-items: center;
}

.swiper-slide iframe {
   width: 80%;
   height: 450px;
   border-radius: 12px;
   box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}
.swiper-pagination {
  display: none;
}
#atc03 .pager .swiper-pagination-bullet {
  width: 12px;
  height: 12px;
  background: #f29100;
  opacity: 0.5;
  margin: 0 4px;
  border-radius: 50%;
  transition: opacity 0.3s;
}

#atc03 .pager .swiper-pagination-bullet-active {
  opacity: 1;
  background: #fff;
}

#atc03 .pager {
  text-align: center;
  margin-bottom: 1000px;
  z-index:10;
}
}
</style>

<!-- Swiper CSS -->
<link rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />


<!-- script -->
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/jquery-ui.js"></script>
<script type="text/javascript" src="/animal/resources/script/jquery-menu.js"></script>
<script type="text/javascript" src="/animal/resources/script/common.js"></script>
<script type="text/javascript" src="/animal/resources/script/wrest.js"></script>
<script type="text/javascript" src="/animal/resources/script/placeholders.min.js"></script>
<link rel="stylesheet" href="/animal/resources/css/font-awesome.min.css">
<script type="text/javascript" src="/animal/resources/script/feather.js"></script>
<script type="text/javascript" src="/animal/resources/script/script.js"></script>
<script type="text/javascript"  src="/animal/resources/script/gsap.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/ScrollTrigger.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/swiper.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/aos.js"></script>
<script type="text/javascript" src="/animal/resources/script/g5.js"></script>
<script type="text/javascript" src="/animal/resources/script/modal.js"></script>
<script type="text/javascript" src="/animal/resources/script/content.js"></script>
<script type="text/javascript" src="/animal/resources/script/nav.js"></script>
<script type="text/javascript" src="/animal/resources/script/slide.js"></script>
<script type="text/javascript" src="/animal/resources/script/swiper.js"></script>

</head>
<script>
	var contextPath = "${pageContext.request.contextPath}";
	var logoutConfirmed = false;

	$(document).ready(
			function() {

				// 확인 버튼 클릭 → 모달 닫기, 플래그 설정
				$('#confirmLogout').on(
						'click',
						function() {
							logoutConfirmed = true;
							const modal = bootstrap.Modal.getInstance(document
									.getElementById('logoutModal'));
							modal.hide(); // 모달 닫기
						});
				$('.modal-backdrop').remove();
				// 모달 닫힌 후 로그아웃 처리
				$('#logoutModal').on(
						'hidden.bs.modal',
						function() {
							if (logoutConfirmed) {
								$.ajax({
									url : contextPath + "/member/logout.do",
									method : "GET",
									success : function() {
										window.location.href = contextPath
												+ "/main.do";
									},
									error : function() {
										alert("로그아웃에 실패했습니다.");
									}
								});
								logoutConfirmed = false;
							}
						});
			});

	// 로그아웃 버튼 클릭 → 모달 실행 (닫힘 방지 설정 포함)
	function logout(event) {
		event.preventDefault();
		const modalElement = document.getElementById('logoutModal');
		if (modalElement) {
			const modal = new bootstrap.Modal(modalElement, {
				backdrop : false
			// 배경 클릭 방지
			});
			modal.show();
		}
	}
</script>
<body>

   <!-- main 영상  -->
   <main id="sh_container">
      <div id="sh_container_wrapper">

         <div id="main_banner" style="position: relative; overflow: hidden;">
            <!-- 배경 영상 -->
            <video autoplay loop muted playsinline preload="auto" id="myVideo"
               style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: 0;">
               <source src="/animal/resources/upload/cat.mp4" type="video/mp4" />
            </video>

            <!-- 어두운 오버레이 -->
            <div class="overlay"
               style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.4); z-index: 1;"></div>

            <!-- 텍스트 및 컨트롤 -->
            <div class="txt" style="position: relative; z-index: 2;">
               <div class="main_txt">
               
                  <h1 data-aos="fade-left" class="aos-init"
                     style="color: rgb(242, 145, 0); font-weight:200;">Cat & Dog</h1>
                     </div>
               </div>
            </div>
         </div>

<style>
#atc03{
font-family: var(--e-font);
  overflow: hidden; 
  padding: -40px 40;

  }	
</style>	
         <!-- 병원 리뷰 슬라이드 영역 -->
         <article id="atc03">
            <div class="inner">
               <div class="tit_area">
                  <p data-aos="fade-right">Our Review</p>
                  

                     <div class="txt" data-aos="fade-right">병원 리뷰를 보여주는 페이지입니다.</div>
                     
	
                     <!-- 리뷰 슬라이드 -->
                     <div class="sh_notice_area">
                     <div class="pager"></div>
                        <div class="sh_notice swiper-container">
                           <ul class="slider swiper-wrapper">
                              <c:forEach var="review" items="${reviewList}">
                              
                                 <li class="slide swiper-slide"><a
                                    href="${contextPath }/board/getBoard.do?bno=${review.bno}&category=${review.category }">
                                       <dl>
                                          <dd class="sh_date">
                                             <fmt:formatDate value="${review.writedate}"
                                                pattern="yyyy-MM-dd" />
                                          </dd>
                                          <dt>${review.title}</dt>
                                          <dd class="sh_contents">
                                             ${fn:substring(review.content, 80, 0)}...</dd>
                                          <dd class="info">
                                             <p>조회수: ${review.readcount}</p>
                                             <div class="more">more view</div>
                                          </dd>
                                       </dl>
                                 </a></li>
                              </c:forEach>
                           </ul>
                        </div>
                     </div>

                  </div>
               </div>
            </div>
         </article>

         <!-- Swiper 초기화 스크립트 -->
         <script>
         var atc03swiper = new Swiper("#atc03 .sh_notice", {
        	  slidesPerView: 3,
        	  spaceBetween: 40,
        	  speed: 1800,
        	  loop: true,
        	  autoplay: {
        	    delay: 1000,
        	  },
        	  navigation: {
        	    nextEl: "#atc03 .next",
        	    prevEl: "#atc03 .prev",
        	  },
        	  pagination: {
        	    el: "#atc03 .pager",
        	    clickable: true
        	  }
        	});
     
         
         </script>


         <div style="font-size: 50px; text-align: center; font-family: var(--e-font);">CAT VIDEO</div>
         <br><br>
         <!-- 유튜브 보다가 혼남.. 제일 마지막 -->
         <!-- Swiper Container -->
         <div class="swiper mySwiper">
            <div class="swiper-wrapper">
               <!-- Slide 1 -->
               <div class="swiper-slide">
                  <iframe
                     src="https://www.youtube.com/embed/9NDvjee0_YI?si=ahKSil82IYvikp2x"
                     title="YouTube video" allowfullscreen frameborder="0"
                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                     referrerpolicy="strict-origin-when-cross-origin"> </iframe>
               </div>
               <!-- Slide 2 -->
               <div class="swiper-slide">
                  <iframe
                     src="https://www.youtube.com/embed/8XlcFqmLLnc?si=zG2Sha0UQ1e2w0g1"
                     title="YouTube video" allowfullscreen frameborder="0"
                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          	           referrerpolicy="strict-origin-when-cross-origin"> </iframe>
               </div>
               <!-- Slide 3 -->
               <div class="swiper-slide">
                  <iframe
                     src="https://www.youtube.com/embed/BNE0SLGvtXA?si=JuYJf97Y7NL147Ia"
                     title="YouTube video" allowfullscreen frameborder="0"
                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                     referrerpolicy="strict-origin-when-cross-origin"> </iframe>
               </div>
               <!-- Slide 4 -->
               <div class="swiper-slide">
                  <iframe
                     src="https://www.youtube.com/embed/ppr8Gbh_YHM?si=1RM88Kqi4hP19JNq"
                     title="YouTube video" allowfullscreen frameborder="0"
                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                     referrerpolicy="strict-origin-when-cross-origin"> </iframe>
               </div>
            </div>

            <!-- Optional navigation -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
         </div>

         <script>
            const swiper = new Swiper(".mySwiper", {
               slidesPerView : 3,
               spaceBetween : 30,
               loop : true,
               autoplay : {
                  delay : 2500, // 2.5초마다 넘김
                  disableOnInteraction : false, // 유저가 클릭해도 계속 자동 재생
               },
               pagination: {
            	      el: '.pager',
            	      clickable: true
            	   },
               navigation : {
                  nextEl : ".swiper-button-next",
                  prevEl : ".swiper-button-prev",
               },
               // pagination은 제거!
               pagination : false,
            });
         </script>



         <!-- 이거 뺴면 inc01, inc02, inc03  디자인 효과 다 날라감 (그냥 텅 비어짐) -->

         <!-- inc01 -->
         <section id="sh_section">
            <article id="inc01">
               <div class="inc01_inr">
                  <div class="inner">
                     <div class="cont_box">
                        <div class="top_area">
                           <div class="left" data-aos="fade-right">
                              <h2 class="en_tit">
                                 Our<br> <b>Family</b> <span>The one I cherish the
                                    most</span>
                              </h2>
                              <div class="ko_box">
                                 <h3 class="tit">
                                    이 아이는 내 삶의 일부가 아니라,<br>나는 <span>이 아이의 전부다.</span><br>
                                 </h3>
                                 단순히 귀엽다고, 갖고싶다고 라는 마음을 가지고는 절대 안돼<br>어린시절에만 잠깐 좋아하는 것도
                                 안돼<br> 늙고 병들어도 끝까지 책임지고 사랑해줄 수 있어야 진짜 가족이야.<br>모든
                                 것들을 사랑으로 감싸줄 준비가 되어 있어야 해. <a href="/animal/cat/cat_about.do"
                                    class="more"><img
                                    src="https://co1156.shiningcorp.com/sh_img/include/inc01/img/arrow.png"
                                    alt="화살표"></a>
                              </div>
                           </div>
                           <div class="right" data-aos="fade-left">
                              <div class="top_txt">
                                 "우리는 반려동물을 단순한 동물이 아닌, 가족 그 이상의 존재로 생각합니다.<br> 작은 발자국
                                 하나에도 진심을 담고, 따뜻한 눈빛 하나에도 사랑을 전하며, 오직 아이들의 행복만을 바라보며 걸어왔습니다."<br>
                                 <br> <br> "수많은 경험과 정성스러운 연구 끝에, 우리의 마음은 아이들의 일상 속에
                                 자연스럽게 <br>스며들었습니다.
                                 <div class="top_txt">더 건강하게, 더 따뜻하게, 더 오래 함께할 수 있도록—
                                    우리는 오늘도 반려동물의 ‘행복한 삶’을 위해 나아갑니다."</div>
                                 <a href="/animal/cat/cat_about.do" class="bot_img">
                                    <div class="h_img" data-aos="fade-left">
                                       <img src="/animal/resources/image/o.jpg">
                                    </div>
                                 </a>
                              </div>

                           </div>
                        </div>
                        <div class="bot_area">
                           <div class="left" data-aos="fade-right">
                              <div class="img_box">
                                 <div class="h_img">
                                    <img src="/animal/resources/image/sb.jpg">
                                 </div>
                                 <a href="/animal/dog/dog_about.do" class="i_more"><i></i>Click<br></a>
                              </div>
                              <h2 class="en_tit" align="center">Cat</h2>
                              <div class="ko_box">
                                 <h3 class="tit">
                                    고양이는 말없이 <span> 마음을 어루만지는 작은 위로다.</span>
                                 </h3>
                                 <br>
                                 <div class="txt pl">
                                    고양이의 부드러운 발걸음은, 하루의 소란을 잊게 해주는 가장 잔잔한 위로입니다. <br>고양이는
                                    말없이 다가와 마음의 빈틈을 채워주는 조용한 친구입니다. 작은 몸짓 하나에도 깊은 이야기가 담겨 있는 듯,
                                    고양이는 말없이 많은 것을 전합니다. 고양이와 함께하는 시간은 그 어떤 소란보다 조용하고, 그 어떤
                                    외로움보다 따뜻합니다. 햇살 아래 눈을 감고 느긋이 누워 있는 고양이를 보면, 세상이 잠시 멈춘 듯한 평화를
                                    느낍니다.
                                 </div>
                              </div>
                           </div>
                           <div class="right" data-aos="fade-left">
                              <div class="txt_inr">
                                 <h2 class="en_tit">Dog</h2>
                                 <div class="ko_box">
                                    <h3 class="tit">
                                       강아지 눈빛엔 <span>조건 없는 사랑</span>이 있다.
                                    </h3>
                                    <br>
                                    <div class="txt pl">강아지는 하루의 끝에 가장 먼저 달려와주는, 세상에서 가장
                                       순수한 마음입니다. 작은 꼬리 하나로 온 마음을 전하는 존재, 그게 바로 강아지입니다. 강아지의 눈동자에는
                                       ‘사랑해’라는 말보다 더 깊은 신뢰와 애정이 담겨 있어요. 언제나 기다려주고, 아무 조건 없이 반겨주는
                                       존재가 있다는 건 참 큰 위로입니다. 강아지와 함께하는 하루는, 그저 살아가는 날이 아닌 ‘사랑받는 날’이
                                       됩니다.</div>
                                 </div>
                              </div>
                              
                                 <div class="h_img" data-aos="fade-left">
                                    <img src="/animal/resources/image/dog_cat.jfif">
                                 </div>
                              
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </article>


            <article id="inc02">
               <div class="inner">
                  <div class="top">
                     <h2 class="tit">
                        PRODUCT<br> <b>with Little things for our beloved</b> <b><b><b>companion</b></b></b>
                     </h2>
                     <div class="txt pl">“사랑스러운 친구들를 위한 작은 것들”</div>
                  </div>
               </div>

               <!-- Swiper 슬라이더 영역 -->
               <div class="swiper mySwiper img_wrap" data-aos="fade-left"
                  data-aos-duration="1000" data-aos-once="false">
                  <div class="swiper-wrapper">

                     <div class="swiper-slide">
                        <a href="${contextPath }/cat/cat_product.do">
                           <div class="img_cont">
                              <img src="/animal/resources/image/food.jfif">
                           </div>
                           <div class="txt_box">
                              <p>사료</p>
                              <div class="txt pl">우리 아이에게 어떤 사료가 가장 잘 맞을까?</div>
                           </div>
                        </a>
                     </div>

                     <div class="swiper-slide">
                        <a href="${contextPath }/cat/cat_product.do">
                           <div class="img_cont">
                              <img src="/animal/resources/image/carrier.jfif">
                           </div>
                           <div class="txt box">
                              <p>이동장</p>
                              <div class="txt pl">우리 아이가 가장 편안할 수 있도록..</div>
                           </div>
                        </a>
                     </div>

                     <div class="swiper-slide">
                        <a href="${contextPath }/cat/cat_product.do">
                           <div class="img_cont">
                              <img src="/animal/resources/image/snack.jfif">
                           </div>
                           <div class="txt_box">
                              <p>간식</p>
                              <div class="txt p1">우리 아이의 삶의 질을 높여줄 sweet</div>
                           </div>
                        </a>
                     </div>

                     <div class="swiper-slide">
                        <a href="${contextPath }/cat/cat_product.do">
                           <div class="img_cont">
                              <img src="/animal/resources/image/toy.jfif">
                           </div>
                           <div class="txt_box">
                              <p>장난감</p>
                              <div class="txt pl">어떤것을 가장 좋아할까?</div>
                           </div>
                        </a>
                     </div>

                     <div class="swiper-slide">
                        <a href="/bbs/board.php?bo_table=table13">
                           <div class="img_cont">
                              <img src="${contextPath }/dog/dog_product.do">
                           </div>
                           <div class="txt_box">
                              <p>목욕 용품</p>
                              <div class="txt pl">목욕하는 시간을 즐겁게 놀이라고 생각할 수 있도록..</div>
                           </div>
                        </a>
                     </div>

                     <div class="swiper-slide">
                        <a href="${contextPath }/dog/dog_product.do">
                           <div class="img_cont">
                              <img src="/animal/resources/image/dish.jfif">
                           </div>
                           <div class="txt_box">
                              <p>식기</p>
                              <div class="txt pl">내가 쓰는 식기라고 생각하고..</div>
                           </div>
                        </a>
                     </div>
                  </div>
               </div>
            </article>


            <script>
               const swiper = new Swiper(".mySwiper", {
                  slidesPerView : 3, // 한 화면에 몇 개 보여줄지
                  spaceBetween : 20, // 슬라이드 간 간격
                  loop : true, // 무한 루프
                  pagination : {
                     el : ".swiper-pagination",
                     clickable : true,
                  },
                  autoplay : {
                     delay : 3000,
                     disableOnInteraction : false,
                  },
               });
            </script>

            <!-- 게시판 -->
            <article id="inc03">
               <div class="inner">
                  <h2 class="en_tit">
                     <b>Articles</b>
                  </h2>
                  <div class="latest" data-aos="fade-down">

                     <article>
                        <a href="${contextPath }/board/getBoardList.do?category=free">
                           <div class="num">01</div>
                           <div class="cont">
                              <p>자유 게시판</p>
                              <div><br>커뮤니티에 참여해 다양한 이야기를 나눠보세요!
								일상, 고민, 유머 등 자유롭게 소통할 수 있는 공간입니다.
								여러분의 이야기를 기다리고 있어요.</div>
                           </div> <span class="arrow"> <img
                              src="/animal/resources/image/arrow.png" alt="화살표">
                        </span>
                        </a>
                     </article>

                     <article>
                        <a href="${contextPath }/board/getBoardList.do?category=cat">
                           <div class="num">02</div>
                           <div class="cont">
                              <p>고양이 게시판</p>
                              <div>고양이 집사님들을 위한 공간이에요!
								귀여운 고양이 사진, 건강 정보, 꿀팁을 공유해보세요.
								오늘도 냥이와 함께 행복한 하루 보내세요.</div>
                           </div> <span class="arrow"> <img
                              src="/animal/resources/image/arrow.png" alt="화살표">
                        </span>
                        </a>
                     </article>

                     <article>
                        <a href="${contextPath }/board/getBoardList.do?category=dog">
                           <div class="num">03</div>
                           <div class="cont">
                              <p>강아지 게시판</p>

                              <div>멍멍이들과 함께하는 따뜻한 이야기들이 가득!
									강아지 산책팁부터 훈련 꿀팁까지 함께 나눠요.
									강아지를 사랑하는 분들의 놀이터입니다.</div>
                           </div> <span class="arrow"> <img
                              src="/animal/resources/image/arrow.png" alt="화살표">
                        </span>
                        </a>
                     </article>
                  </div>
               </div>
            </article>

            <!-- 동물병원 리뷰 -->
            <section id="sh_section">
               <article id="inc04">
                  <div class="inner">
                     <h3 class="en_tit">Interested in this ?</h3>
                     <a href="${contextPath }/main.do">CAT & DOG</a>
                  </div>
               </article>

            </section>

            <script>
               AOS.init();
               feather.replace();
            </script>
</body>
<script src="/animal/resources/js/designTail.js"></script>
</html>
