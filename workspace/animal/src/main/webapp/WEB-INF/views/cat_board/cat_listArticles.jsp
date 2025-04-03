<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
    request.setCharacterEncoding("utf-8");
%>
<script>
    function fn_articleForm(isLogin, articleForm, loginForm) {
        if (isLogin === 'true') {
            location.href = articleForm;
        } else {
            alert('로그인 후 글쓰기가 가능합니다.');
            location.href = loginForm + "?action=/cat_board/cat_articleForm.do";
        }
    }
</script>
<body>
    <table align="center" border="1" width="100%">
        <tr height="10" align="center" bgcolor="lightgreen">
            <td>글번호</td>
            <td>작성자</td>
            <td>제목</td>
            <td>작성일자</td>
        </tr>
        
        <c:choose>
            <c:when test="${empty articlesList}">
                <tr height="10">
                    <td colspan="4">
                        <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
                    </td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach var="article" items="${articlesList}">
                    <tr align="center">
                        <td width="5%">${article.articleNo}</td>
                        <td width="10%">${article.id}</td>
                        <td align="left" width="35%">
                            <span style="padding-right:30px;"></span>
                            <a class="cls1" href="${contextPath}/cat_board/cat_viewArticle.do?articleNo=${article.articleNo}">
                                ${article.title}
                            </a>
                        </td>
                        <td width="10%">${article.writeDate}</td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </table>

    <a class="cls1" href="javascript:fn_articleForm('${isLogin}', 
        '${contextPath}/cat_board/cat_articleForm.do',
        '${contextPath}/member/loginForm.do')">
        <p class="cls2">글쓰기</p>
    </a>
</body>
