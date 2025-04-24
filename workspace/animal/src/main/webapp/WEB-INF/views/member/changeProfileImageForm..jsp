<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>프로필 이미지 변경</title>
    <style>
    
    
        .preview-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ccc;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <h2>프로필 이미지 변경</h2>

    <!-- 프로필 이미지 변경 폼 -->
    <form action="${contextPath}/member/changeProfileImageForm.do" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${loginMember.id}" />

        <label>현재 프로필 이미지:</label><br/>
        <c:choose>
            <c:when test="${empty loginMember.profileimg}">
                <img src="${contextPath}/resources/image/default_profile.png" class="preview-img" id="currentPreview"/>
            </c:when>
            <c:otherwise>
                <img src="${contextPath}/upload/profile/${loginMember.profileimg}" class="preview-img" id="currentPreview"/>
            </c:otherwise>
        </c:choose>

        <label>새 이미지 선택:</label><br/>
        <input type="file" name="profileImage" accept="image/*" onchange="previewImage(this)" /><br/>

        <!-- 새 이미지 미리보기 -->
        <img id="preview" class="preview-img" style="display:none;" />

        <button type="submit">이미지 변경</button>
    </form>

    <!-- 기본 이미지로 변경 폼 -->
    <form method="post" action="${contextPath}/member/deleteProfileImage.do" style="margin-top:10px;">
        <input type="hidden" name="id" value="${loginMember.id}">
        <button type="submit" class="btn btn-danger">기본 이미지로 변경</button>
    </form>

    <script>
        function previewImage(input) {
            const preview = document.getElementById("preview");
            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    preview.src = e.target.result;
                    preview.style.display = "block";
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</body>
</html>
