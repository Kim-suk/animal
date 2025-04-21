<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="/animal/resources/script/board.js"></script>
<link rel="stylesheet" href="/animal/resources/css/board_cu.css">

<title>새글등록</title>
</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<br>

	<center>
		<h1>게시글 등록</h1>
		<form name="frm" action="insertBoard.do" method="post"
			enctype="multipart/form-data">
			<table>
				<tr>
					<th>제목</th>
					<td align="left"><input type="text" class="w3-input"
						name="title" placeholder="제목을 입력하세요" /></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td align="left"><input type="text" class="w3-input" name="id"
						size="10" value="${sessionScope.loginId }" readonly="readonly" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td align="left"><textarea name="content"
							class="w3-input w3-border" cols="40" rows="10"
							placeholder="게시글 내용"></textarea></td>
				</tr>
				<tr>
					<th>hashtag</th>
					<td align="left"><input type="text" name="hashtag"
						class="w3-input w3-border"
						placeholder="검색 키워드로 사용할 해쉬태그 입력" /></td>
				</tr>
				<tr>
					<th>사진</th>
					<td align="left">
						<input type="file" name="uploadFiles"
						multiple />
						<p style="font-size: 0.9em; color: gray;">※ 여러 장의 이미지를 선택할 수 있습니다.</p>
						
						<!-- 이미지 썸네일 선택 -->
						<div id="imagePreview" style="margin-top: 10px;">
							<!-- 업로드한 이미지 미리보기 및 썸네일 선택을 위한 UI -->
						</div>
					</td>
				</tr>

				<!-- category 값을 hidden 필드로 추가 -->
				<tr>
					<td colspan="2"><input type="hidden" name="category"
						value="${param.category}" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><br> <input type="button"
						value="취소"
						onclick="location.href='getBoardList.do?category=${param.category}'"
						class="w3-button w3-round w3-dark-grey"> &nbsp;&nbsp; <input
						type="submit" value="글쓰기" class="w3-button w3-round w3-red"
						onclick="return boardCheck()" /></td>
				</tr>
			</table>
		</form>
		<br>
		<br>
		<br>

	</center>
	<br>
	<br>
	
	
	<script type="text/javascript">
	let selectedFiles = [];

	document.querySelector('input[name="uploadFiles"]').addEventListener('change', function(event) {
		let files = event.target.files;

		for (let i = 0; i < files.length; i++) {
			let file = files[i];

			// 중복 파일 방지 (이름 기준으로)
			if (selectedFiles.some(f => f.name === file.name)) continue;

			selectedFiles.push(file);
			previewImage(file);
		}

		// 파일 선택창 초기화 (같은 파일 또 선택 가능하도록)
		event.target.value = '';
	});

	function previewImage(file) {
		let reader = new FileReader();
		reader.onload = function(e) {
			let div = document.createElement('div');
			div.style.display = 'inline-block';
			div.style.textAlign = 'center';
			div.style.marginRight = '10px';

			let img = document.createElement('img');
			img.src = e.target.result;
			img.style.width = '100px';

			let radio = document.createElement('input');
			radio.type = 'radio';
			radio.name = 'thumbnail';
			radio.value = file.name;

			let label = document.createElement('label');
			label.appendChild(document.createTextNode("썸네일"));
			label.appendChild(radio);

			let delBtn = document.createElement('button');
			delBtn.type = 'button';
			delBtn.textContent = '삭제';
			delBtn.style.display = 'block';
			delBtn.style.marginTop = '5px';
			delBtn.onclick = function() {
				// 파일 제거
				selectedFiles = selectedFiles.filter(f => f.name !== file.name);
				div.remove();
			};

			div.appendChild(img);
			div.appendChild(label);
			div.appendChild(delBtn);

			document.getElementById('imagePreview').appendChild(div);
		};

		reader.readAsDataURL(file);
	}

	// 폼 전송 전: 실제 FormData에 selectedFiles 추가하기
	document.querySelector('form[name="frm"]').addEventListener('submit', function(e) {
		let form = e.target;
		let formData = new FormData(form);

		// 기존 input으로는 파일이 비어있으므로 selectedFiles를 다시 append 해줘야 함
		selectedFiles.forEach(file => {
			formData.append("uploadFiles", file);
		});
		
		 // 썸네일 파일 추가
	    const thumbnailRadio = document.querySelector('input[name="thumbnail"]:checked');
	    if (thumbnailRadio) {
	        formData.append("thumbnail", thumbnailRadio.value); // 선택된 썸네일 파일명 추가
	    }

		// 직접 폼 전송
		fetch(form.action, {
			method: "POST",
			body: formData
		}).then(response => {
			if (response.redirected) {
				window.location.href = response.url;
			} else {
				alert("업로드 완료 또는 오류");
			}
		});

		e.preventDefault(); // 기본 form submit 막기
	});
	
</script>

</body>
</html>