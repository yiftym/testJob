<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="CommonHeader">
	<div class="CommonTop">
		<div class="CommonTopMenuText">	
			<c:if test="${!empty sessionScope.userName}">
				<a href="">${sessionScope.userName}</a> | <a href="userServlet?action=logout">退出</a>
			</c:if>
			<c:if test="${empty sessionScope.userName}">
				<a href="javascript:YYBBS_Modal.Open('login.jsp',380,120);">登录</a>
			</c:if>
		</div>
	</div>
</div>