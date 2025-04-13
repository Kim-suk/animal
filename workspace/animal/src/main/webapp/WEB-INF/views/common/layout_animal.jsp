<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title><tiles:insertAttribute name="title"/></title>
<link rel="stylesheet" href="/animal/resources/css/style.css?v=1.0.3">
</head>
<body>
		<div id="header">
			<tiles:insertAttribute name="header" /> 
		</div>
		 <div style="display: flex; flex: 1;">
        <div id="sidebar-animal">
            <tiles:insertAttribute name="side" />
        </div>
        <div id="content">
            <tiles:insertAttribute name="body" />
        </div>
    </div>

    <div id="footer">
        <tiles:insertAttribute name="footer" />
    </div>

</body>
</html>