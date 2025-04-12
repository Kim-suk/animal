<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>새글등록</title>

<link rel="stylesheet" type="text/css" href="css/board_cu.css">
</head>
<body>

<br>

	<center>
		<h1>레시피 수정</h1>
		
		<hr>
		<form action="updateBoard.do" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<th>제목</th>
					<td align="left"><input type="text"  class="w3-input" name="title" value="${board.title }"/></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td align="left"><input type="text"  class="w3-input" name="id" size="10"  value="${board.id }" readonly="readonly"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td align="left"><textarea name="content" class="w3-input w3-border" cols="40" rows="10" >${board.content}</textarea></td>
				</tr>
				<tr>
					<th>hashtag</th>
					<td align="left"><input name="hashtag" class="w3-input w3-border" size="10" value="${board.hashtag }"/></td>
				</tr>
				<tr>
					<th>업로드</th>
					<td align="left"><input type="file" name="uploadFile" /></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="취소 " onclick="history.back(-1);"  class="w3-button w3-round w3-dark-grey"> &nbsp;&nbsp;
						<input type="submit" value="글 수정 " class="w3-button w3-round  w3-red" />

					</td>
				</tr>
			</table>
		</form>
		<br><br><br>
		
	</center>
<br><br>

</body>
</html>