<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link href="${rootPath}/static/css/e-write.css" rel="stylesheet"> 
<script src="${rootPath}/static/js/e-write.js"></script>
<form:form id="email" modelAttribute="emsVO">
	<fieldset>
		<legend>email 보내기</legend>

		<div>
			<label for="id">ID</label>
			<form:input path="id" value="${emsVO.id}" placeholder="ID" />
		</div>

		<div>
			<label for="from_email">발송Email</label>
			<form:input path="from_email" value="${emsVO.from_email}" placeholder="발송Email" />
		</div>

		<div>
			<label for="to_email">받는Email</label>
			<form:input path="to_email" value="${emsVO.to_email}" placeholder="받는Email" />
		</div>

		<div>
			<label for="s_date">발송일자</label>
			<form:input path="s_date" value="${emsVO.s_date}" placeholder="발송일자" />
		</div>

		<div>
			<label for="s_time">발송시각</label>
			<form:input path="s_time" value="${emsVO.s_time}" placeholder="발송시각" />
		</div>

		<div>
			<label for="s_subject">제목</label>
			<form:input path="s_subject" value="${emsVO.s_subject}" placeholder="제목" />
		</div>

		<div>
			<label for="s_content">내용</label>
			<form:input path="s_content" value="${emsVO.s_content}" placeholder="내용" />
		</div>

		<div>
			<label for="s_content">첨부파일</label>
			<form:input path="s_content" value="${emsVO.s_content}" placeholder="첨부파일" />
		</div>
		<div>
			<label></label>
			<textarea id="b_content" rows="5" cols="25" name="b_content"></textarea>
		</div>
		<div>
			<label>멀티이미지</label> <input type="file" name="files" accept="image/*" multiple="multiple">
		</div>
		<div class="button-box">
			<button type="button" id="list">리스트</button>
			<button type="submit" id="save">저장</button>
		</div>

	</fieldset>
</form:form>