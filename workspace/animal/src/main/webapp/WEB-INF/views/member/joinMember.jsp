<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<form method='post' action='${contextPath }/member/addMember.do'>
		<h1 style='text-align:center'>회원 가입</h1>
		<table align='center'>
			<tr>
				<td width='200'><p align='right'>아이디</p></td>
				<td width='400'><input type='text' name='id'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>암호</p></td>
				<td width='400'><input type='password' name='pwd'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>나이</p></td>
				<td width='400'><input type='text' name='age'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>이름</p></td>
				<td width='400'><input type='text' name='name'></td>
			</tr>
			<tr>
				<td width='50'><p align='right'>성별</td></p>
				<td width='50'><input type='checkbox' name='man'>남자</td>
				<td width='50'><input type='checkbox' name='woman'>여자</td>
			
			</tr>
			<tr>
				<td width='200'><p align='right'>이메일</p></td>
				<td width='400'><input type='email' name='email'></td>
			</tr>
			<tr>
				<td width='200'><p>&nbsp;</p></td>
				<td>
					<input type='submit' value='가입하기'>
					<input type='reset' value='다시입력'>
				</td>	
			</tr>
		</table>
	</form>
</body>
</html>





