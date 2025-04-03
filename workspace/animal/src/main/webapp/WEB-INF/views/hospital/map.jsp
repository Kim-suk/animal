<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- Kakao 지도 API (자동 로드 비활성화) -->
    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appKey=222e15b05d5b656e4fecd3d1b114a121&libraries=services&autoload=false"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        kakao.maps.load(function() {
        	// Kakao Map 초기화
        	var mapContainer = document.getElementById('map');
        	var mapOption = {
        	    center: new kakao.maps.LatLng(37.5665, 126.9780), // 기본 위치 (서울 중심)
        	    level: 5
        	};

        	var map = new kakao.maps.Map(mapContainer, mapOption);

        	// 내 위치 가져오기
        	navigator.geolocation.getCurrentPosition(function (position) {
        	    var lat = position.coords.latitude;
        	    var lng = position.coords.longitude;

        	    // 지도 중심 이동
        	    map.setCenter(new kakao.maps.LatLng(lat, lng));

        	    // 내 위치 마커 추가
        	    var marker = new kakao.maps.Marker({
        	        map: map,
        	        position: new kakao.maps.LatLng(lat, lng),
        	        title: "내 위치"
        	    });

        	    // 반경 5km 동물병원 정보 가져오기
        	    fetch(`/api/hospitals/nearby?latitude=${lat}&longitude=${lng}`)
        	        .then(response => response.json())
        	        .then(data => {
        	            data.forEach(hospital => {
        	                var marker = new kakao.maps.Marker({
        	                    map: map,
        	                    position: new kakao.maps.LatLng(hospital.latitude, hospital.longitude),
        	                    title: hospital.name
        	                });

        	                var infowindow = new kakao.maps.InfoWindow({
        	                    content: `<div>${hospital.name}</div>`
        	                });

        	                kakao.maps.event.addListener(marker, 'click', function () {
        	                    infowindow.open(map, marker);
        	                });
        	            });
        	        });
        	});
        });
    </script>
<style>
	 #map {
        display: block; /* 블록 요소로 변경 */
        margin: 0 auto; /* 가로 가운데 정렬 */
    }

</style>
<head>
<meta charset="UTF-8">
<title>동물병원 위치</title>
</head>
<body>
		<div id="map" style="width:700px;height:500px;"></div>

</body>
</html>