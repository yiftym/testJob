<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="shortcut icon" type="image/x-icon" href="images/yybbs.ico" />
	<link rel="stylesheet" type="text/css" href="images/style.css" />
	<title>注册账号</title>
	<script language="JavaScript" type="text/javascript" src="js/global.js"></script>
	<script language="JavaScript" type="text/javascript" src="js/baseData.js" ></script>
</head>

<body>
	<jsp:include page="header.jsp" />
		<script type="text/javascript" src="js/pwd.js"></script>
		
		<div class="CommonBody">
			<div class="CommonBreadCrumbArea">
				<div style="float:left"><a href="index.jsp">首页</a> &raquo; 注册账号</div>
			</div>
			
			<form method="post" name="form" action="userServlet?action=register" >
				<table cellspacing="1" cellpadding="5" width="100%" class="CommonListArea">
					<tr class="CommonListTitle">
						<td colspan="2" valign="middle" align="left">&nbsp;注册账号</td>
					</tr>
					
					<tr class="CommonListCell">
						<td align="right" width="30%"><b>用户名：</b></td>
					  	<td align="left" width="77%">
					  	<input type="text" name="userLogin" size="40" onblur="CheckUserLogin(this.value)" /> <span id="CheckUserLogin" style="color:#FF0000"></span></td>
					</tr>
				
					<tr class="CommonListCell">
						<td align="right" valign="middle" width="23%"><b>密码：</b><br /> 密码必须至少包含 6 个字符</td>
					  	<td align="left" valign="middle" width="77%">
					  	<input type="password" name="userPwd" size="40" maxlength="16" onkeyup="EvalPwd(this.value);" onchange="EvalPwd(this.value);" onblur="CheckPassword(this.value)" /> <span id="CheckPassword" style="color:#FF0000"></span></td>
					</tr>
					<tr class="CommonListCell">
						<td align="right"><b>密码强度：</b></td>
						<td align="left" valign="middle" width="77%">
							<table border="0" width="250" cellspacing="1" cellpadding="2">
								<tr bgcolor="#f1f1f1">
									<td id="iWeak" align="center">弱</td>
									<td id="iMedium" align="center">中</td>
									<td id="iStrong" align="center">强</td>
								</tr>
							</table>		
						</td>
					</tr>
					<tr class="CommonListCell">
						<td align="right" valign="middle" width="23%"><b>确认密码：</b><br />请与您的密码保持一致</td>		
						<td align="left" valign="middle" width="77%">
						<input type="password" name="retypePwd" size="40" onblur="CheckRetypePassword(this.value)" /> <span id="CheckRetypePassword" style="color:#FF0000"></span></td>
					</tr>					
					<tr class="CommonListCell">
						<td align="right" valign="middle" width="23%"><b>用户昵称：</b><br /></td>
					 	<td align="left" valign="middle" width="77%">
						<input type="text" name="userName" size="40" onblur="CheckUserName(this.value)"  /> <span id="CheckUserName" style="color:#FF0000"></span></td>
					</tr>
						
 					<tr class="CommonListCell">
						<td align="right" valign="middle" width="23%"><b>用户权限：</b><br />（1- 普通 9-所有权限）</td>
					 	<td align="left" valign="middle" width="77%">
						<input type="text" name="userRole" size="40" onblur="CheckRole(this.value)"  /> <span id="CheckRole" style="color:#FF0000"></span></td>
					</tr>
					<tr align="center" class="CommonListCell">
						<td valign="middle" colspan="2"><input type="submit" value=" 注 册 " /></td>
					</tr>
				</table>
			</form>
	
			<script language="JavaScript" type="text/javascript">
				function CheckUserLogin(userLogin)
				{
					if(userLogin.length > 15 || userLogin.length <3) 
					{
						ShowCheckResult("CheckUserLogin", "您输入的用户名长度应该在 3-15 范围内", "error");
						return;
					}
					
					Ajax_CallBack(false,"CheckUserLogin", "userServlet?action=CheckUserLogin&userLogin="+escape(userLogin));
				}
				
				function CheckUserName(userName) 
				{
					if(userName.length > 15 || userName.length <3) 
					{
						ShowCheckResult("CheckUserName", "您输入的用户名长度应该在 3-15 范围内", "error");
						return;
					}
					
					Ajax_CallBack(false,"CheckUserName", "userServlet?action=CheckUserName&userName="+escape(userName));
				}
				
				function CheckPassword(UserPassword) 
				{
					if (UserPassword.length < 6)
					{
						ShowCheckResult("CheckPassword", "密码必须至少包含 6 个字符", "error");
						return;
					}
				
					ShowCheckResult("CheckPassword", "", "right");
				
				}
				function CheckRetypePassword(RetypePassword) 
				{
					if (RetypePassword != document.form.userPwd.value)
					{
						ShowCheckResult("CheckRetypePassword", "您 2 次输入的密码不相同", "error");
						return;
					}
					
					if (RetypePassword != '')
					{
						ShowCheckResult("CheckRetypePassword", "", "right");
					}
				}
				
				function CheckRole(Role) 
				{
					if(Role.trim() != 1 && Role.trim() != 9)
					{
						ShowCheckResult("CheckRole", "权限暂时仅为备注所设置", "error");
					    return;
					}
					
					ShowCheckResult("CheckRole", "", "right");
				}
			</script>
	
		</div>
</body>

</html>