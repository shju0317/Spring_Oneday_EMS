<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>    
<style>
	section#main-body{
		width: 100%;
		height: 100%;
		display: flex;
	}
	
	section#main-body article{
		flex: 1;
		width:70%;
		height: 70%;
		margin: 10px;
	}
	
	section#main-body div{
		width:70%;
		height: 70%;
		margin: 0 auto;
		border: 1px solid blue;
		text-align: center;
	}
</style>
<section id="main-body">
	<article>
		<div>Email Management System</div>
	</article>
</section>