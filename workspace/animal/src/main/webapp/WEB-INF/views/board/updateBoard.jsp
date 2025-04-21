<%@page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/animal/resources/script/board.js"></script>
<link rel="stylesheet" href="/animal/resources/css/board_cu.css">
<title>게시글 수정</title>
<style>
.center-container {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

form {
	width: 80%;
	max-width: 800px;
}

table {
	width: 100%;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>

	<div class="center-container">
		<h1>게시글 수정</h1>
		<form name="frm" action="updateBoard.do" method="post"
			enctype="multipart/form-data">
			<!-- 게시글 번호 hidden -->
			<input type="hidden" name="bno" value="${board.bno}" />

			<table>
				<tr>
					<th>제목</th>
					<td align="left"><input type="text" name="title"
						class="w3-input" value="${board.title}" placeholder="제목을 입력하세요" /></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td align="left"><input type="text" name="id" class="w3-input"
						value="${board.id}" readonly="readonly" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td align="left"><textarea name="content"
							class="w3-input w3-border" cols="40" rows="10">${board.content}</textarea></td>
				</tr>
				<tr>
					<th>hashtag</th>
					<td align="left"><input type="text" name="hashtag"
						class="w3-input w3-border" value="${board.hashtag}" /></td>
				</tr>
				<tr>
					<th>기존 사진</th>
					<td align="left">
						<div id="imagePreview">
							<c:forEach var="img" items="${imageList}">
								<div
									style="display: inline-block; text-align: center; margin-right: 10px;">
									<c:choose>
										<c:when test="${not empty img.imageFileName}">
											<img src="/animal/upload/${img.imageFileName}"
												style="width: 100px;" />
											<br />
										</c:when>
										<c:otherwise>
											<span>이미지가 없습니다.</span>
										</c:otherwise>
									</c:choose>
									<label> <input type="radio" name="thumbnail"
										value="${img.imageFileName}"
										<c:if test="${board.thumbnail eq img.imageFileName}">checked</c:if> />
										썸네일
									</label><br /> <input type="checkbox" name="deleteImages"
										value="${img.imageFileName}" /> <span
										style="font-size: 0.9em;">삭제</span>
								</div>
							</c:forEach>

						</div>
					</td>
				</tr>
				<tr>
					<th>추가 사진</th>
					<td align="left"><input type="file" name="uploadFiles"
						multiple />
						<p style="font-size: 0.9em; color: gray;">※ 여러 장의 이미지를 선택할 수
							있습니다.</p>
						<div id="newImagePreview" style="margin-top: 10px;"></div></td>
				</tr>
				<tr>
					<!-- 기존 category 값 유지 -->
					<td colspan="2"><input type="hidden" name="category"
						value="${category}" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><br /> <input
						type="button" value="취소"
						onclick="location.href='getBoardList.do?category=${category}'"
						class="w3-button w3-round w3-dark-grey"> &nbsp;&nbsp; <input
						type="submit" value="수정" class="w3-button w3-round w3-red"
						onclick="return boardCheck()" /></td>
				</tr>
			</table>
		</form>
	</div>

	<script type="text/javascript">
	let selectedFiles = [];

	document.querySelector('input[name="uploadFiles"]').addEventListener('change', function(event) {
		let files = event.target.files;

		for (let i = 0; i < files.length; i++) {
			let file = files[i];
			if (selectedFiles.some(f => f.name === file.name)) continue;

			selectedFiles.push(file);
			previewNewImage(file);
		}

		event.target.value = '';
	});

	function previewNewImage(file) {
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
				selectedFiles = selectedFiles.filter(f => f.name !== file.name);
				div.remove();
			};

			div.appendChild(img);
			div.appendChild(label);
			div.appendChild(delBtn);

			document.getElementById('newImagePreview').appendChild(div);
		};
		reader.readAsDataURL(file);
	}

	document.querySelector('form[name="frm"]').addEventListener('submit', function(e) {
		let form = e.target;
		let formData = new FormData(form);

		selectedFiles.forEach(file => {
			formData.append("uploadFiles", file);
		});

		const thumbnailRadio = document.querySelector('input[name="thumbnail"]:checked');
		if (thumbnailRadio) {
			formData.delete("thumbnail");  // 중복 제거!
			formData.append("thumbnail", thumbnailRadio.value);
		}

		fetch(form.action, {
			method: "POST",
			body: formData
		}).then(response => {
			if (response.redirected) {
				window.location.href = response.url;
			} else {
				alert("수정 완료 또는 오류 발생");
			}
		});

		e.preventDefault();
	});
</script>
</body>
</html>