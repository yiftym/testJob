<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<c:if test="${!empty requestScope.gourl }">
	<meta http-equiv="refresh" content="1.5;url=${requestScope.gourl }" />
	</c:if>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="shortcut icon" type="image/x-icon" href="images/yybbs.ico" />
	<link rel="stylesheet" type="text/css" href="images/style.css" />
	<title>提示信息</title>
	<script language="JavaScript" type="text/javascript" src="js/global.js"></script>
	<script language="JavaScript" type="text/javascript" src="js/baseData.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="CommonBody">
	<div class="CommonBreadCrumbArea">
		<div style="float:left"><a href="index.jsp">首页</a> &raquo; 提示信息</div>
	</div>
	<table cellspacing="1" cellpadding="5" width="100%" class="CommonListArea">
		<tr class="CommonListTitle">
			<td width="100%" align="center">提示信息</td>
		</tr>
		<tr class="CommonListCell">
			<td valign="top" align="left" height="122">
			<table cellspacing="0" cellpadding="5" width="100%" border="0">
				<tr>
					<td align="center">
					<img height="97" src="images/${requestScope.img }.gif" width="95" /><br />
						<br />
						<b>${requestScope.msg }</b><br />
						<br />
<!-- 						<input onclick="history.back()" type="button" value=" &lt;&lt; 返 回 " /> -->
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</div>
</body>
</html>