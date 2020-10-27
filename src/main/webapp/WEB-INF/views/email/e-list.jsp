<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<link href="${rootPath}/static/css/e-list.css?ver=2020-10-27-001" rel="stylesheet">
<script src="${rootPath}/static/js/e-list.js"></script>    
	<table id="io-list">
		<tr>
			<th>SEQ</th>
			<th>ID</th>
			<th>발송Email</th>
			<th>받는Email</th>
			<th>발송일자</th>
			<th>발송시각</th>
			<th>제목</th>
			<th>내용</th>
			<th>첨부파일</th>
			<th></th>
			<th></th>
		</tr>
		<%
			// 서버로부터 데이터를 수신하여 데이터가 없으면 "데이터 없음"이라고 표시
		// 있으면 tr,td 리스트를 만들어서 데이터 표시
		%>
		<c:choose>
			<c:when test="${empty EMAILS}">
				<tr>
					<td colspan="10">데이터가 없음</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${EMAILS}" var="email" varStatus="i">
					<tr>
						<td>${i.count}</td>
						<td>${email.id}</td>
						<td>${email.from_email}</td>
						<td>${email.to_email}</td>
						<td>${email.s_date}</td>
						<td>${email.s_time}</td>
						<td>${email.s_subject}</td>
						<td>${email.s_content}</td>
						<td>${email.s_file1}</td>
						<td><a href="${rootPath}/ems/update?seq=${email.id}" id="update">수정</a></td>
						<td><a href="${rootPath}/ems/delete?seq=${email.id}" id="delete">삭제</a></td>
					</tr>
				</c:forEach>		
			</c:otherwise>
		</c:choose>
	</table>
	<div id="io-link-box">
		<a href="${rootPath}/ems/write">write</a>
	</div>