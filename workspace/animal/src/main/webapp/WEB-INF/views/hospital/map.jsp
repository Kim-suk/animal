<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
 
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>지도</title>
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/css/default.css?ver=210215">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet" href="/sh_img/hd/r_quickmenu/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/hd/top_menu/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/js/aos/aos.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/js/swiper/swiper.min.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/include/inc01/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/include/inc02/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/include/inc03/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/include/inc04/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/include/inc05/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/sh_img/index/main_banner/style.css?ver=210215">
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/css/user.css?ver=210215">
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumbrushscript.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

/* 나눔스퀘어 */
@font-face {
   font-family: 'NanumSquare';
   src: url(//font.shiningcorp.com/css/font/NanumSquareR.eot);
   src: url(//font.shiningcorp.com/css/font/NanumSquareR.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/NanumSquareR.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/NanumSquareR.ttf) format('truetype');
}

/* 본고딕 */
@font-face {
   font-family: 'notokr-thin';
   src: url(//font.shiningcorp.com/css/font/notokr-thin.eot);
   src: url(//font.shiningcorp.com/css/font/notokr-thin.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/notokr-thin.woff2) format('woff2'),
       url(//font.shiningcorp.com/css/font/notokr-thin.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/notokr-thin.ttf) format('truetype'),
       url(//font.shiningcorp.com/css/font/notokr-thin.svg#notokr-thin) format('svg');
   font-weight: normal;
   font-style: normal;
}
@font-face {
    font-family: 'notokr-regular';
    src: url(//font.shiningcorp.com/css/font/notokr-regular.eot);
    src: url(//font.shiningcorp.com/css/font/notokr-regular.eot?#iefix) format('embedded-opentype'),
         url(//font.shiningcorp.com/css/font/notokr-regular.woff2) format('woff2'),
         url(//font.shiningcorp.com/css/font/notokr-regular.woff) format('woff'),
         url(//font.shiningcorp.com/css/font/notokr-regular.svg#notokr-regular) format('svg');
    font-weight: normal;
    font-style: normal;

}
@font-face {
    font-family: 'notokr-medium';
    src: url(//font.shiningcorp.com/css/font/notokr-medium.eot);
    src: url(//font.shiningcorp.com/css/font/notokr-medium.eot?#iefix) format('embedded-opentype'),
         url(//font.shiningcorp.com/css/font/notokr-medium.woff2) format('woff2'),
         url(//font.shiningcorp.com/css/font/notokr-medium.woff) format('woff'),
         url(//font.shiningcorp.com/css/font/notokr-medium.svg#notokr-medium) format('svg');
    font-weight: normal;
    font-style: normal;

}
@font-face {
    font-family: 'notokr-light';
    src: url(//font.shiningcorp.com/css/font/notokr-light.eot);
    src: url(//font.shiningcorp.com/css/font/notokr-light.eot?#iefix) format('embedded-opentype'),
         url(//font.shiningcorp.com/css/font/notokr-light.woff2) format('woff2'),
         url(//font.shiningcorp.com/css/font/notokr-light.woff) format('woff'),
         url(//font.shiningcorp.com/css/font/notokr-light.ttf) format('truetype'),
         url(//font.shiningcorp.com/css/font/notokr-light.svg#notokr-light) format('svg');
    font-weight: normal;
    font-style: normal;

}
@font-face {
    font-family: 'notokr-demilight';
    src: url(//font.shiningcorp.com/css/font/notokr-demilight.eot);
    src: url(//font.shiningcorp.com/css/font/notokr-demilight.eot?#iefix) format('embedded-opentype'),
         url(//font.shiningcorp.com/css/font/notokr-demilight.woff2) format('woff2'),
         url(//font.shiningcorp.com/css/font/notokr-demilight.woff) format('woff'),
         url(//font.shiningcorp.com/css/font/notokr-demilight.ttf) format('truetype'),
         url(//font.shiningcorp.com/css/font/notokr-demilight.svg#notokr-demilight) format('svg');
    font-weight: normal;
    font-style: normal;

}
@font-face {
    font-family: 'notokr-bold';
    src: url(//font.shiningcorp.com/css/font/notokr-bold.eot);
    src: url(//font.shiningcorp.com/css/font/notokr-bold.eot?#iefix) format('embedded-opentype'),
         url(//font.shiningcorp.com/css/font/notokr-bold.woff2) format('woff2'),
         url(//font.shiningcorp.com/css/font/notokr-bold.woff) format('woff'),
         url(//font.shiningcorp.com/css/font/notokr-bold.svg#notokr-bold) format('svg');
    font-weight: normal;
    font-style: normal;

}

@font-face {
    font-family: 'notokr-black';
    src: url(//font.shiningcorp.com/css/font/notokr-black.eot);
    src: url(//font.shiningcorp.com/css/font/notokr-black.eot?#iefix) format('embedded-opentype'),
         url(//font.shiningcorp.com/css/font/notokr-black.woff2) format('woff2'),
         url(//font.shiningcorp.com/css/font/notokr-black.woff) format('woff'),
         url(//font.shiningcorp.com/css/font/notokr-black.ttf) format('truetype'),
         url(//font.shiningcorp.com/css/font/notokr-black.svg#notokr-black) format('svg');
    font-weight: normal;
    font-style: normal;

}
/* 아리따 */
@font-face {
   font-family: 'arita-thin';
   src: url(//font.shiningcorp.com/css/font/arita-Thin.eot);
   src: url(//font.shiningcorp.com/css/font/arita-Thin.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/arita-Thin.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/arita-Thin.ttf) format('truetype');
   font-weight: normal;
   font-style: normal;
}
@font-face {
   font-family: 'arita-light';
   src: url(//font.shiningcorp.com/css/font/arita-Light.eot);
   src: url(//font.shiningcorp.com/css/font/arita-Light.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/arita-Light.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/arita-Light.ttf) format('truetype');
   font-weight: normal;
   font-style: normal;
}
@font-face {
   font-family: 'arita-medium';
   src: url(//font.shiningcorp.com/css/font/arita-Medium.eot);
   src: url(//font.shiningcorp.com/css/font/arita-Medium.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/arita-Medium.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/arita-Medium.ttf) format('truetype');
   font-weight: normal;
   font-style: normal;
}
@font-face {
   font-family: 'arita-semibold';
   src: url(//font.shiningcorp.com/css/font/arita-SemiBold.eot);
   src: url(//font.shiningcorp.com/css/font/arita-SemiBold.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/arita-SemiBold.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/arita-SemiBold.ttf) format('truetype');
   font-weight: normal;
   font-style: normal;
}
@font-face {
   font-family: 'arita-bold';
   src: url(//font.shiningcorp.com/css/font/arita-Bold.eot);
   src: url(//font.shiningcorp.com/css/font/arita-Bold.eot?#iefix) format('embedded-opentype'),
       url(//font.shiningcorp.com/css/font/arita-Bold.woff) format('woff'),
       url(//font.shiningcorp.com/css/font/arita-Bold.ttf) format('truetype');
   font-weight: normal;
   font-style: normal;
}
</style><!--[if lte IE 8]>
<script src="https://hos1034.shiningcorp.com/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://hos1034.shiningcorp.com";
var g5_bbs_url   = "https://hos1034.shiningcorp.com/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
</script>
<script src="https://hos1034.shiningcorp.com/js/jquery-1.8.3.min.js"></script>
<script src="https://hos1034.shiningcorp.com/js/jquery-ui.js"></script>
<script src="https://hos1034.shiningcorp.com/js/jquery.menu.js?ver=210215"></script>
<script src="https://hos1034.shiningcorp.com/js/common.js?ver=210215"></script>
<script src="https://hos1034.shiningcorp.com/js/wrest.js?ver=210215"></script>
<script src="https://hos1034.shiningcorp.com/js/placeholders.min.js"></script>
<link rel="stylesheet" href="https://hos1034.shiningcorp.com/js/font-awesome/css/font-awesome.min.css">
<script src="https://hos1034.shiningcorp.com/sh_img/hd/top_menu/script.js?ver=210215"></script>
<script src="https://hos1034.shiningcorp.com/sh_img/js/gsap.min.js"></script>
<script src="https://hos1034.shiningcorp.com/sh_img/js/ScrollTrigger.min.js"></script>
<script src="https://hos1034.shiningcorp.com/sh_img/js/aos/aos.js?ver=210215"></script>
<script src="https://hos1034.shiningcorp.com/js/swiper/swiper.min.js?ver=210215"></script>
<script type="text/javascript"
    src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=222e15b05d5b656e4fecd3d1b114a121&libraries=clusterer"></script>

</head>
<body>
<style>
/* 디자인샘플 보러가기 */
#goToDesign{position:absolute;z-index:50;width:100%;padding:7px 0;border-bottom:1px solid #fff073;font-size:12px;text-align:center;background-color:#fffbd9;font-family:dotum} 
#goToDesign a{padding-left:10px;font-weight:bold;color:#f96319}
#goToDesign a:hover{text-decoration:underline}
</style>








    

<section id="sh_section">
   


<article id="inc05">
    <div id="map" class="map_area" data-aos="fade-right"> </div>
    <div class="cont_area" data-aos="fade-left">
        <h2 class="tit">SAMPLE <span>Location</span></h2>
        <ul class="loc">
            <li><span class="material-symbols-outlined">location_on</span>경기도 부천시 부흥로 258 일산빌딩 5층</li>
            <li><span class="material-symbols-outlined">directions_bus</span>1호선 중동역 2번출구 도보 20분 </li>
            <li>
                <img src="https://hos1034.shiningcorp.com/sh_img/include/inc05/img/kakao_map.png" alt="카카오맵">
                <a href="">카카오맵 보기<img src="https://hos1034.shiningcorp.com/sh_img/include/inc05/img/arrow.png" alt="화살표"></a>
         </li>
            </ul>
        <div class="sch">
            <p class="s_tit">진료시간 안내</p>
            <ul>
                <li>
                    <p class="day">주간</p>
                    <p class="time">월 · 수 · 금  오전 9시 ~ 오후 7시</p>
                </li>
                <li>
                    <p class="day">야간</p>
                    <p class="time">화 · 목 오전 9시 ~ 오후 9시</p>
                </li>
            </ul>
        </div>
    </div>
</article></section>


      
<script>
    function initMap(latitude, longitude) {
      const mapContainer = document.getElementById('map');
      const mapOption = {
        center: new kakao.maps.LatLng(latitude, longitude),
        level: 5
      };
      const map = new kakao.maps.Map(mapContainer, mapOption);

      const userMarker = new kakao.maps.Marker({
        position: new kakao.maps.LatLng(latitude, longitude),
        map: map,
        title: "내 위치"
      });

      const circle = new kakao.maps.Circle({
        center: new kakao.maps.LatLng(latitude, longitude),
        radius: 5000,
        strokeWeight: 2,
        strokeColor: '#00a0ff',
        strokeOpacity: 0.8,
        strokeStyle: 'dashed',
        fillColor: '#cceeff',
        fillOpacity: 0.3
      });
      circle.setMap(map);

      const clusterer = new kakao.maps.MarkerClusterer({
        map: map,
        averageCenter: true,
        minLevel: 6
      });

      fetch("/animal/api/hospitals?latitude=" + latitude + "&longitude=" + longitude)
        .then(response => response.json())
        .then(data => {
          const markers = [];
          data.forEach(hospital => {
            const lat = parseFloat(hospital.longitude);
            const lng = parseFloat(hospital.latitude);

            if (!isNaN(lat) && !isNaN(lng)) {
              const markerPosition = new kakao.maps.LatLng(lat, lng);
              const marker = new kakao.maps.Marker({
                position: markerPosition,
                title: hospital.name
              });

              const infowindow = new kakao.maps.InfoWindow({
                content:
                  '<div style="padding:8px; font-size:13px; line-height:1.4; border-radius:8px; border:1px solid #ddd; box-shadow:2px 2px 5px rgba(0,0,0,0.1); background:#fff;">' +
                  '<strong style="font-size:14px; color:#333;">' + hospital.name + '</strong><br/>' +
                  '<span style="color:#555;">📞 ' + (hospital.phone || '전화번호 없음') + '</span><br/>' +
                  '<span style="color:#777;">📍 ' + (hospital.address || '주소 없음') + '</span>' +
                  '</div>',
                removable: true
              });

              kakao.maps.event.addListener(marker, 'mouseover', function () {
                infowindow.open(map, marker);
              });
              kakao.maps.event.addListener(marker, 'mouseout', function () {
                infowindow.close();
              });

              markers.push(marker);
            }
          });
          clusterer.addMarkers(markers);
        })
        .catch(error => {
          console.error("❌ 병원 데이터 불러오기 실패:", error);
        });
    }

    navigator.geolocation.getCurrentPosition(
      function (position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        initMap(latitude, longitude);
      },
      function (error) {
        const defaultLat = 37.5665;
        const defaultLng = 126.9780;
        initMap(defaultLat, defaultLng);
      }
    );
  </script>


<script>
       AOS.init();
       var pageup = $("html").innerHeight();
   $('#toTop').click(function(){
      $("html, body").animate({scrollTop:0}, 400);
      return false;
   });    
</script>


</body>
<script src="https://www.shiningcorp.com/designTail.js"></script> 

</html>
