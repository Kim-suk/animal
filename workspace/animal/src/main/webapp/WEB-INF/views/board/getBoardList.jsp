<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/animal/resources/css/boardList.css">

<title>글 목록</title>
<style>
  /* 기본 여백 처리 */
  .spacer { margin: 60px 0; }

  /* 컨테이너 */
  .board-container {
    width: 90%;
    margin: 200px auto 0;
  }

  /* 검색창 */
  .search-bar {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 30px;
  }

  .search-input {
    flex: 1;
    padding: 8px 12px;
    border: 1px solid #ccc;
    border-radius: 10px;
    font-size: 16px;
  }

  .search-button {
    padding: 8px 20px;
    border: none;
    border-radius: 10px;
    background-color: #555;
    color: white;
    cursor: pointer;
  }

  .write-button {
    margin-left: auto;
    padding: 8px 20px;
    background-color: #e74c3c;
    color: white;
    border: none;
    border-radius: 10px;
    cursor: pointer;
  }

  /* 게시판 제목 버튼 */
  .category-button {
    margin-bottom: 30px;
    padding: 10px 20px;
    background-color: #333;
    color: white;
    border-radius: 10px;
    border: none;
  }

  /* 게시글 카드 */
  .card-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    justify-content: center;
  }

  .card {
    width: 300px;
    background-color: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    transition: transform 0.2s;
  }

  .card:hover {
    transform: translateY(-5px);
  }

  .card img {
    width: 100%;
    height: 220px;
    object-fit: cover;
  }

  .card-content {
    padding: 15px;
    font-size: 16px;
  }

  .card-title {
    font-weight: bold;
    margin-bottom: 10px;
  }

  .card-icons {
    display: flex;
    justify-content: flex-end;
    gap: 10px;
    font-size: 14px;
    color: #555;
  }

  .card-icons img {
    width: 16px;
    height: 16px;
    vertical-align: middle;
  }
    @media (max-width: 1024px) {
    .board-container {
      width: 95%;
    }

    .card-grid {
      gap: 20px;
    }

    .card {
      width: 45%;
    }

    .search-bar {
      flex-wrap: wrap;
    }
  }

  @media (max-width: 600px) {
    .card {
      width: 100%;
    }

    .search-bar {
      flex-direction: column;
      align-items: stretch;
    }

    .search-input, .search-button, .write-button {
      width: 100%;
      margin-bottom: 10px;
    }

    .write-button {
      margin-left: 0;
    }
  }
</style>
</head>
<body>

<div class="board-container">
  
   <!-- 🔥 검색창 -->
  <form action="getBoardList.do?category=${category }" method="post" class="search-bar">
    <!-- 🔥 검색조건 드롭다운 추가 -->
    <select name="searchCondition" class="search-input" style="flex: 0.5;">
      <option value="TITLE" <c:if test="${searchCondition == 'TITLE'}">selected</c:if>>제목</option>
      <option value="CONTENT" <c:if test="${searchCondition == 'CONTENT'}">selected</c:if>>내용</option>
      <option value="TAG" <c:if test="${searchCondition == 'TAG'}">selected</c:if>>해시태그</option>
    </select>

    <input name="searchKeyword" type="text" class="search-input" value="${searchKeyword}" placeholder="검색어를 입력하세요" />
    <input type="submit" value="검색" class="search-button" />

    <c:if test="${sessionScope.loginId != null}">
      <button type="button" class="write-button" onclick="location.href='insertBoard.do?category=${category}'">
        <img src="/animal/resources/image/edit.png" style="width: 15px; height: 15px;"> 글쓰기
      </button>
    </c:if>
  </form>

  <!-- 카테고리 표시 -->
  <div style="text-align:center;">
    <c:choose>
      <c:when test="${category == 'hospital'}">
        <button class="category-button">동물병원 게시판</button>
      </c:when>
      <c:when test="${category == 'free'}">
        <button class="category-button">자유게시판</button>
      </c:when>
      <c:when test="${category == 'cat'}">
        <button class="category-button">고양이 게시판</button>
      </c:when>
      <c:when test="${category == 'dog'}">
        <button class="category-button">강아지 게시판</button>
      </c:when>
    </c:choose>
  </div>

  <div class="spacer"></div>

  <!-- 게시글 리스트 -->
  <div class="card-grid">
    <c:forEach items="${boardList}" var="board">
      <div class="card">
        <a href="getBoard.do?bno=${board.bno}&category=${category}">
          <img src="${pageContext.request.contextPath}/upload/${board.thumbnail}" alt="Thumbnail">
        </a>
        <div class="card-content">
          <div class="card-title">${board.title}</div>
          <div class="card-icons">
            <span><img src="/animal/resources/image/comment.png"> ${board.comment_count}</span>
            <span><img src="/animal/resources/image/love.png"> ${board.like_it}</span>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>

  <div class="spacer"></div>
  
  <!-- 🔥 페이징 처리 -->
  <c:if test="${totalPages > 1}">
    <div class="pagination">
      <!-- 이전 페이지 -->
      <c:if test="${currentPage > 1}">
        <a href="getBoardList.do?category=${category}&page=${currentPage - 1}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">&laquo;</a>
      </c:if>

      <!-- 페이지 번호 -->
      <c:forEach begin="1" end="${totalPages}" var="i">
        <c:choose>
          <c:when test="${i == currentPage}">
            <span class="active">${i}</span>
          </c:when>
          <c:otherwise>
            <a href="getBoardList.do?category=${category}&page=${i}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">${i}</a>
          </c:otherwise>
        </c:choose>
      </c:forEach>

      <!-- 다음 페이지 -->
      <c:if test="${currentPage < totalPages}">
        <a href="getBoardList.do?category=${category}&page=${currentPage + 1}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">&raquo;</a>
      </c:if>
    </div>
  </c:if>
</div>
<!-- 푸터 -->

</body>
</html>
