<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<head>
    <title>강아지 상세 정보</title>
    <style>
        #dog-info {
            border: 2px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            max-width: 600px;
            margin: 0 auto;
        }
        #dog-info h2 {
            color: rgb(138, 43, 226); /* 보라색 */
        }
        #dog-info p {
            font-size: 16px;
            line-height: 1.5;
        }
        #dog-info img {
            width: 100%;
            border-radius: 10px;
        }
    </style>
    

</head>
<body>
<input type="hidden" id="breedVal" value="${breed}">
<div id="dog-info">로딩 중...</div>






<script>

const breed = document.getElementById("breedVal").value.trim().toLowerCase(); 	// 컨트롤러에서 받은 품종 이름
    
    fetch("/animal/resources/data/dog_data.json") // 실제 위치에 맞게 수정
        .then(response => response.json())
        .then(data => {
        
            const dog = data[breed];
           
            if (!dog) {
                document.getElementById("dog-info").innerHTML = "<p>해당 품종 정보를 찾을 수 없습니다.</p>";
                
                return;
            }
            let html = "";
            html += "<h2>" + dog.name + "</h2>";
            html += "<p>" + dog.description + "</p>";
            html += "<img src='" + dog.image + "' alt='" + dog.name + "'>";

            document.getElementById("dog-info").innerHTML = html;
            
        })
        .catch(err => {
            document.getElementById("dog-info").innerHTML = "<p>정보를 불러오는 데 실패했습니다.</p>";
        });
</script>


</body>
</html>