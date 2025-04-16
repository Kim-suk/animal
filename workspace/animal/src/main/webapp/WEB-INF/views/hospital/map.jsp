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

<link rel="stylesheet" href="/animal/resources/css/inc05_style.css">
<link rel="stylesheet" href="/animal/resources/css/aos.css">

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

<script type="text/javascript"
    src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=222e15b05d5b656e4fecd3d1b114a121&libraries=clusterer"></script>

</head>

<br><br>
<section id="sh_section">
<article id="inc05" style="margin-right: 0!important"> <!-- Adjusted style -->
    <div id="map" class="map_area" data-aos="fade-right"> </div>
    <div class="cont_area" data-aos="fade-left">
        <h2 class="tit">Hospital <span> Location</span></h2>
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
  
    </article>
</section>

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
</html>
