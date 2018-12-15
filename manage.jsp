<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<meta charset="utf-8" >

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="shortcut icon" type="image/x-icon" href="images/yybbs.ico" />
	<link rel="stylesheet" type="text/css" href="images/style.css" />
	<title>信息记录系统</title>
	
	<script  src="jquery.js"></script>
	<script  src="colResizable-1.3.min.js"></script>
	
</head>

<body>
	<jsp:include page="header.jsp" />

		<div class="CommonBody">
			<div class="CommonBreadCrumbArea">
				<div style="float:left"><a href="index.jsp">首页</a> &raquo; 权限管理 <a class="CommonImageTextButton" style="BACKGROUND-IMAGE: url(images/newpost.gif)" href="register.jsp">添加账号</a> </div>
			</div>
				
			<form method ="post" action="userServlet?action=updateButton" name = "userForm">	
				<table cellspacing="1" cellpadding="5" width="100%" class="CommonListArea">
					<tr class=CommonListTitle>
						<td>用户登录名</td>
						<td>用户名称</td>
						<td>用户密码</td>
						<td>权限级别(1-普通增删改  9-管理权限)</td>																
						<td>管理</td>
					</tr>
					
					<c:forEach items="${requestScope.userInfo }" var="fu">	
						<tr class="CommonListCell">
							<td>${fu.userLogin }</td>
							<td>${fu.userName }</td>
							<td>${fu.userPwd }</td>
							<td>${fu.role } </td>
							
							<td>
								<a href="userServlet?action=updateUser&uLogin=${fu.userLogin }">修改</a> | 
								<a href = "userServlet?action=delUser&uLogin=${fu.userLogin }">删除</a> |								
							</td>
						</tr>
					</c:forEach>	
					
					<c:if test="${!empty requestScope.isUpdate }">
						<tr class="CommonListCell">
							<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" readonly size = "6" name = "i_uLogin" value = "${requestScope.uInfo.userLogin }"></td>
							<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_uName" value = "${requestScope.uInfo.userName }"></td>
							<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_uPwd" value = "${requestScope.uInfo.userPwd }"></td>
							<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_uRole" value = "${requestScope.uInfo.role }"></td>
						</tr>
					</c:if>	
				</table>

				<c:if test="${!empty requestScope.isUpdate }">	
					<div  style="text-align:center; width:100%;height:100%;margin:0px; "  >
						<input type = "submit" value = " 修 改"  >
					</div>
				</c:if>	
			</form>	
			
		</div>		
	
</body>

</html>