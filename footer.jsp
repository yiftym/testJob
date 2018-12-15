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
	<div class="CommonFooter">
		<form method ="post" action="registerServlet?action=updateButton" name = "footForm">		
			<table id = "tb_3" cellspacing="0" cellpadding="5" width="3210" class="CommonListArea" border = "1">
				<tbody id="ForumGroup1" >
					<tr class="CommonListHeader" align="center">	
						<c:if test="${empty requestScope.footerAdd}">
						<td style="width: 40"> 序号</td>
						<td style="width: 160">创建时间</td>
						</c:if>
						<td style="width: 60" > 拍年</td>
						<td style="width: 60" > 拍月</td>
						<td style="width: 60" > 拍日</td>
						<td style="width: 150">地点</td>
						<td style="width: 150">国家</td>
						<td style="width: 60" >拍摄类型</td>
						<td style="width: 60" >拍摄人员</td>
						<td style="width: 80">第一笔定金</td>
						<td style="width: 100">定交付时间</td>
						<td style="width: 60" >支付类型</td>
						<td style="width: 80">第二笔定金</td>
						<td style="width: 100"> 定交付时间</td>
						<td style="width: 60" >支付类型</td>
						<td style="width: 70">定金总额</td>
						<td style="width: 120">支付尾款（元）</td>
						<td style="width: 120">实付尾款（元）</td>
						<td style="width: 100">尾交付时间</td>
						<td style="width: 60" >支付类型</td>
						<td style="width: 60" >加修</td>
						<td style="width: 60" >加急</td>
						<td style="width: 60">差旅费</td>
						<td style="width: 100">合计（元）</td>
						<td style="width: 60" >客服</td>
						<td style="width: 60" >备注</td>
						<td style="width: 60">照片（P）</td>
						<td style="width: 60">视频（V）</td>
						<td style="width: 100">现场剪辑</td>
						<td style="width: 100">化妆（M）</td>
						<td style="width: 100">加进时间</td>
						<td style="width: 60" >成交周期</td>
						<td style="width: 60" >客户姓名</td>
						<td style="width: 30" >性别</td>
						<td style="width: 110" >联系方式</td>
						<td style="width: 120" >客人微信号</td>
						<td style="width: 60" >客户渠道</td>	
								
					</tr>
					
					<c:if test = "${!empty requestScope.footerModHistory}">
					<c:forEach items = "${requestScope.footerDataList }" var="fd">			
					<tr>						
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "2.1" name = "i_dataId" value = "${fd.dataId }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "20" name = "i_createTime" value = "${fd.createTime }"></td>
						
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootYear" value = "${fd.shootYear }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootMoon" value = "${fd.shootMoon }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootDay" value = "${fd.shootDay }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "20" name = "i_place" value = "${fd.place }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "20" name = "i_country" value = "${fd.country }	"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootType" value = "${fd.shootType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootStaff" value = "${fd.shootStaff }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_moneyFst" value = "${fd.moneyFst }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_moneyFstTime" value = "${fd.moneyFstTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_moneyFstType" value = "${fd.moneyFstType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_moneySec" value = "${fd.moneySec }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_moneySecTime" value = "${fd.moneySecTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_moneySecType" value = "${fd.moneySecType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_moneyTotal" value = "${fd.moneyTotal }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_finalPayReceive" value = "${fd.finalPayReceive }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_finalPayGet" value = "${fd.finalPayGet }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_finalPayTime" value = "${fd.finalPayTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_finalPayType" value = "${fd.finalPayType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_urgentFix" value = "${fd.urgentFix }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_urgentTime" value = "${fd.urgentTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_travelExpense" value = "${fd.travelExpense }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_total" value = "${fd.total }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_service" value = "${fd.service }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_bzxx" value = "${fd.bzxx }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_photoCount" value = "${fd.photoCount }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_videoCount" value = "${fd.videoCount }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "8" name = "i_sceneClips" value = "${fd.sceneClips }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "8" name = "i_makeUp" value = "${fd.makeUp }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "8" name = "i_addInTime" value = "${fd.addInTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_dealCycle" value = "${fd.dealCycle }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_customName" value = "${fd.customName }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_customSex" value = "${fd.customSex }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "8" name = "i_customPhone" value = "${fd.customPhone }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "8" name = "i_customWechat" value = "${fd.customWechat }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_customSource" value = "${fd.customSource }"></td>
					</tr> 
					</c:forEach>		
					</c:if>
					
					<c:if test="${!empty requestScope.footerUpdate || !empty requestScope.footerAdd}">
					<tr>
						<c:if test="${empty requestScope.footerAdd}">
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "2.1" name = "i_dataId" readonly value = "${requestScope.footerData.dataId }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "20" name = "i_createTime" value = "${requestScope.footerData.createTime }"></td>
						</c:if>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootYear" value = "${requestScope.footerData.shootYear }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootMoon" value = "${requestScope.footerData.shootMoon }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootDay" value = "${requestScope.footerData.shootDay }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "20" name = "i_place" value = "${requestScope.footerData.place }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "20" name = "i_country" value = "${requestScope.footerData.country }	"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootType" value = "${requestScope.footerData.shootType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_shootStaff" value = "${requestScope.footerData.shootStaff }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_moneyFst" value = "${requestScope.footerData.moneyFst }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_moneyFstTime" value = "${requestScope.footerData.moneyFstTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_moneyFstType" value = "${requestScope.footerData.moneyFstType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_moneySec" value = "${requestScope.footerData.moneySec }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_moneySecTime" value = "${requestScope.footerData.moneySecTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_moneySecType" value = "${requestScope.footerData.moneySecType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "8" name = "i_moneyTotal" value = "${requestScope.footerData.moneyTotal }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_finalPayReceive" value = "${requestScope.footerData.finalPayReceive }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "11" name = "i_finalPayGet" value = "${requestScope.footerData.finalPayGet }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_finalPayTime" value = "${requestScope.footerData.finalPayTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_finalPayType" value = "${requestScope.footerData.finalPayType }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_urgentFix" value = "${requestScope.footerData.urgentFix }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_urgentTime" value = "${requestScope.footerData.urgentTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_travelExpense" value = "${requestScope.footerData.travelExpense }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_total" value = "${requestScope.footerData.total }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_service" value = "${requestScope.footerData.service }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_bzxx" value = "${requestScope.footerData.bzxx }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_photoCount" value = "${requestScope.footerData.photoCount }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_videoCount" value = "${requestScope.footerData.videoCount }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_sceneClips" value = "${requestScope.footerData.sceneClips }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_makeUp" value = "${requestScope.footerData.makeUp }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_addInTime" value = "${requestScope.footerData.addInTime }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_dealCycle" value = "${requestScope.footerData.dealCycle }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_customName" value = "${requestScope.footerData.customName }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "7" name = "i_customSex" value = "${requestScope.footerData.customSex }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_customPhone" value = "${requestScope.footerData.customPhone }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "9" name = "i_customWechat" value = "${requestScope.footerData.customWechat }"></td>
						<td style="border:1px solid #000;margin:0px;padding:0px;overflow:hidden;"><input type = "text" size = "6" name = "i_customSource" value = "${requestScope.footerData.customSource }"></td>
					</tr> 
					</c:if>
				</tbody>
			</table>

		
			<br><br>	
			<div  style="text-align:center; width:100%;height:100%;margin:0px; "  >
				<c:if test="${!empty requestScope.footerAdd}" >
					<input type = "submit" value = " 增 加 " onclick="javascript:this.form.action='registerServlet?action=addButton';">
				</c:if>
				<c:if test="${!empty requestScope.footerUpdate}">
					<input type = "submit" value = " 修 改"  >
				</c:if> 
			</div>
		</form>
	</div>
</body>
