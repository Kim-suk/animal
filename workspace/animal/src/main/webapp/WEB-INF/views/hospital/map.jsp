<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appKey=222e15b05d5b656e4fecd3d1b114a121"></script>
	<script>
		window.onload = function(){
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	};
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