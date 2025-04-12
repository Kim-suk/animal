<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="/animal/resources/script/board.js"></script>
<link rel="stylesheet" href="/animal/resources/css/board_cu.css">

<style>
	body {
		margin-top:200px;
	}
</style>
<title>새글등록</title>
</head>
<body>
<!-- 헤더 -->
<br><br><br><br>

<center>
	<h1>게시글 등록</h1>
	<form name="frm" action="insertBoard.do" method="post" enctype="multipart/form-data">
		<table >
			<tr>
				<th>요리명</th>
				<td align="left">
				<input type="text" class="w3-input" name="title" placeholder="요리이름을 입력해주세요 ! ex)버섯치킨 카레" /></td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td align="left"><input type="text" class="w3-input" name="id" size="10" value="${sessionScope.loginId }" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>레시피</th>
				<td align="left"><textarea name="content" class="w3-input w3-border" cols="40" rows="10" placeholder="요리소개 및 레시피 순서 "></textarea></td>
			</tr>
			<tr>
				<th>hashtag</th>
				<td align="left"><input type="text"  name="hashtag" class="w3-input w3-border" placeholder="검색 키워드로 사용할 해쉬태그 입력  '#버섯치킨 카레 #카레 #버섯 #치킨 #감자'" /></td>
			</tr>
			<tr>
				<th>요리 사진</th>
				<td align="left"><input type="file" name="uploadFile" /></td>
			</tr>

			<!-- category 값을 hidden 필드로 추가 -->
			<tr>
				<td colspan="2">
					<input type="hidden" name="category" value="${param.category}" />
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<br>
					<input type="button" value="취소" onclick="location.href='getBoardList.do'" class="w3-button w3-round w3-dark-grey"> &nbsp;&nbsp;
					<input type="submit" value="글쓰기" class="w3-button w3-round w3-red" onclick="return boardCheck()" />
				</td>
			</tr>
		</table>
	</form>
	<br><br><br>

</center>
<br><br>
<!-- 푸터 -->
</body>
</html>
