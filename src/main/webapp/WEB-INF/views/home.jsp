<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Spring Framework~!!</title>
<link href="${rootPath}/static/css/index.css?2020-10-27-002" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	// js파일에서 ${rootPath}값을 참조하기 위해서 rootPath를 전역변수로 선언
	var rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/main-nav.js?2020-10-27-003"></script>

</head>
<body>
<header>
	<h3>Email Management System</h3>
</header>
	<nav id="main-nav">
		<ul>
			<li id="menu-home">EMS</li>
			<li id="menu-list">list</li>
			<li id="menu-write">write</li>
		</ul>
	</nav>
	<section id="main-section">
		<c:choose>
			<c:when test="${BODY == 'E-LIST'}">
				<%@ include file="/WEB-INF/views/email/e-list.jsp"%>
			</c:when>
			<c:when test="${BODY == 'E-WRITE'}">
				<%@ include file="/WEB-INF/views/email/e-write.jsp"%>
			</c:when>
			<c:when test="${BODY == 'E-UPDATE'}">
				<%@ include file="/WEB-INF/views/email/e-write.jsp"%>
			</c:when>
			<c:otherwise>
				<%@ include file="/WEB-INF/views/main-body.jsp"%>
			</c:otherwise>
		</c:choose>
	</section>
	<footer>
		<address>&copy; shju0317@naver.com 2020</address>
	</footer>
</body>
</html>