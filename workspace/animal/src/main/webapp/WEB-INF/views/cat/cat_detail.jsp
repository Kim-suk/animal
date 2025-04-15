<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<head>
    <title>고양이 상세 정보</title>
    <style>
        #cat-info {
            border: 2px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            max-width: 600px;
            margin:200px;
        }
        #cat-info h2 {
            color: rgb(138, 43, 226); /* 보라색 */
        }
        #cat-info p {
            font-size: 16px;
            line-height: 1.5;
        }
        #cat-info img {
            width: 100%;
            border-radius: 10px;
        }
    </style>
    
</head>
<body>
<input type="hidden" id="breedVal" value="${breed}">
<div id="cat-info">로딩 중...</div>
<script>

const breed = document.getElementById("breedVal").value.trim().toLowerCase(); 	// 컨트롤러에서 받은 품종 이름
    
    fetch("/animal/resources/data/cat_data.json") // 실제 위치에 맞게 수정
        .then(response => response.json())
        .then(data => {
        
            const cat = data[breed];
           
            if (!cat) {
                document.getElementById("cat-info").innerHTML = "<p>해당 품종 정보를 찾을 수 없습니다.</p>";
                
                return;
            }
            let html = "";
            html += "<h2>" + cat.name + "</h2>";
            html += "<p>" + cat.description + "</p>";
            html += "<p>" + cat.introduce + "</p>";
            html += "<p>" + cat.detail + "</p>";
            html += "<p>" + cat.point + "</p>";
            html += "<img src='" + cat.image + "' alt='" + cat.name + "'>";

            document.getElementById("cat-info").innerHTML = html;
        })
        .catch(err => {
            document.getElementById("cat-info").innerHTML = "<p>정보를 불러오는 데 실패했습니다.</p>";
        });
</script>

</body>
</html>