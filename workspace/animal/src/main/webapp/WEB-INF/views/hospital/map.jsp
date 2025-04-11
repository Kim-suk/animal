<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물병원 지도</title>
<!-- 클러스터링 라이브러리 포함 -->
<script type="text/javascript"
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=222e15b05d5b656e4fecd3d1b114a121&libraries=clusterer"></script>
<style>
.custom-info-window {
	position: absolute;
	background-color: white;
	border: 1px solid #ddd;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
	padding: 10px;
	font-size: 13px;
	border-radius: 5px;
	max-width: 200px;
	display: none;
	z-index: 10;
}
</style>
</head>
<body>
	<div id="map" style="width: 1000px; height: 500px;"></div>
	<div id="infoWindow" class="custom-info-window"></div>

	<script>
function initMap(latitude, longitude) {
    const mapContainer = document.getElementById('map');
    const mapOption = {
        center: new kakao.maps.LatLng(latitude, longitude),
        level: 5
    };
    const map = new kakao.maps.Map(mapContainer, mapOption);

    // 내 위치 마커
    const userMarker = new kakao.maps.Marker({
        position: new kakao.maps.LatLng(latitude, longitude),
        map: map,
        title: "내 위치"
    });

    // 반경 5km 원
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

    // 클러스터러 생성
    const clusterer = new kakao.maps.MarkerClusterer({
        map: map,
        averageCenter: true,
        minLevel: 6  // 줌 레벨이 6보다 클 때만 클러스터링 해제
    });

    // 병원 목록 요청
    fetch("/animal/api/hospitals?latitude=" + latitude + "&longitude=" + longitude)
        .then(response => response.json())
        .then(data => {
            console.log("📍 받아온 병원 리스트:", data);

            const markers = []; // 마커 배열

            data.forEach(hospital => {
            	const lat = parseFloat(hospital.longitude); // 실제 위도
            	const lng = parseFloat(hospital.latitude);  // 실제 경도	

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

                    // 인포윈도우 이벤트
                    kakao.maps.event.addListener(marker, 'mouseover', function () {
                        infowindow.open(map, marker);
                    });
                    kakao.maps.event.addListener(marker, 'mouseout', function () {
                        infowindow.close();
                    });

                    markers.push(marker);  // 배열에 추가
                }
            });

            // 클러스터러에 마커 추가
            clusterer.addMarkers(markers);
        })
        .catch(error => {
            console.error("❌ 병원 데이터 불러오기 실패:", error);
        });
}

// 위치 가져오기 시도
navigator.geolocation.getCurrentPosition(
    function (position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        console.log("✅ 현재 위치 확인:", latitude, longitude);
        initMap(latitude, longitude);
    },
    function (error) {
        console.warn("⚠️ 위치 정보를 가져올 수 없습니다. 기본 좌표로 설정합니다.", error);
        const defaultLat = 37.5665;
        const defaultLng = 126.9780;
        initMap(defaultLat, defaultLng);
    }
);
</script>
</body>
</html>
