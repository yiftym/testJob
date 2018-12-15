<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<script language="javascript" type="text/javascript">if(top == self)window.location.href = "index.jsp";</script>
	<script src="js/global.js" type="text/javascript"></script>
	<style type="text/css">body,table{font-size:9pt;}</style>
</head>
<body>
<form action="userServlet?action=login" method="post" name="form">
	<table cellspacing="1" cellpadding="2" width="100%">
		<tr>
			<td width="30%" align="right">用户名称：</td>
			<td>
				<input type="text" name="userName"  style="width:150px; color:#999" />
			</td>
		</tr>
		<tr>
			<td width="30%" align="right">用户密码：</td>
			<td>
				<input type="password" name="userPwd" style="width:150px" />
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2" width = "">
				<input type="submit" value=" 登 录 " />　<input type="button" onclick="javascript:parent.YYBBS_Modal.Close();" value=" 取 消 " />
			</td>
		</tr>
	</table>
</form>
</body>
</html>