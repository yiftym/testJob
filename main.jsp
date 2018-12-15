<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="shortcut icon" type="image/x-icon" href="images/yybbs.ico" />
	<link rel="stylesheet" type="text/css" href="images/style.css" />
	<title>信息记录系统</title>
	<script language="JavaScript" type="text/javascript" src="js/global.js"></script>
	<script language="JavaScript" type="text/javascript" src="js/baseData.js"></script>
		
	<script  src="jquery.js"></script>
	<script  src="colResizable-1.3.min.js"></script>
	
	<style type = "text/css">
		.headerHeight{
			Height: 15%;
		}
		.mainHeight{
			Height: 65%;
		}
		.footerHeight{
			Height: 20%;
		}
	</style>
</head>
<div class ="headerHeight">
<jsp:include page="header.jsp" />
</div>

<div class = "mainHeight">
	<div class="mainHeight">
		
		<!-- <form action = "registerServlet?action=exlExport" method ="post" name= "mainForm"> -->
		<form action = "excelServlet" method ="post" name= "mainForm">
			<div class="CommonBreadCrumbArea">
				<div style="float:left">
					<table>
						<tr>
							<td>
								<a href="index.jsp">首页</a></td>
							
							<c:if test="${sessionScope.userRole == 1 || sessionScope.userRole == 9}">
								<td>
									<a class="CommonImageTextButton" style="BACKGROUND-IMAGE: url(images/newpost.gif)" href="registerServlet?action=addData">添加数据</a></td>						
							</c:if>
							
							<c:if test="${sessionScope.userRole == 9}">
								<td>
									<a class="CommonImageTextButton" style="BACKGROUND-IMAGE: url(images/newpost.gif)" href="userServlet?action=showAll">权限管理</a></td>						
								<td>
							</c:if>
							
							<c:if test="${sessionScope.userRole == 1 || sessionScope.userRole == 9}">
								<td>
									<input class="CommonImageTextButton" style="BACKGROUND-IMAGE: url(images/newpost.gif)" type = "submit" value ="导出excel"></td>
								<td>
<!-- 									<input type = "text" size = "6" name = "exlPath" onblur="CheckExlPath(this.value)"> <span id="CheckExlPath" style="color:#FF0000"></span></td> -->
							</c:if>
					</table>
				</div>		
			</div>
		</form>
		
		<c:if test="${sessionScope.userRole == 1 || sessionScope.userRole == 9}">	
			<table id = "tableExcel" cellspacing="0" cellpadding="5" width="3270" class="CommonListArea" border = "1">
				<tbody id="ForumGroup1" >
					<tr class="CommonListHeader" align="center">			
						<td style="width: 40"> 序号</td>
						<td style="width: 160">创建时间</td>
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
						<c:if test="${sessionScope.userRole == 9}">
							<td style="width: 60" >创建人</td>
						</c:if>
						<td style="width: 200">操作</td>				
					</tr>
					<c:forEach items="${sessionScope.register }" var="fg">						
					<tr class="CommonListCell" align="left">
		 				<td align="right">${fg.dataId }</td>
						<td>${fg.createTime }</td>
		 				<td align="right">${fg.shootYear }</td>
						<td align="right">${fg.shootMoon }</td>
						<td align="right"> ${fg.shootDay }</td>
						<td>${fg.place }</td>
						<td>${fg.country }</td>	
						<td>${fg.shootType }</td>
						<td>${fg.shootStaff }</td>
						<td align="right">${fg.moneyFst }</td>
						<td>${fg.moneyFstTime }</td>
						<td>${fg.moneyFstType }</td>
						<td align="right">${fg.moneySec }</td>
						<td>${fg.moneySecTime }</td>
						<td>${fg.moneySecType }</td>
						<td>${fg.moneyTotal }</td>
						<td align="right">${fg.finalPayReceive }</td>
						<td align="right">${fg.finalPayGet }</td>
						<td>${fg.finalPayTime }</td>
						<td>${fg.finalPayType }</td>
						<td>${fg.urgentFix }</td>
						<td>${fg.urgentTime }</td>
						<td align="right">${fg.travelExpense }</td>
						<td align="right">${fg.total }</td>
						<td>${fg.service }</td>
						<td>${fg.bzxx }</td>
						<td align="right">${fg.photoCount }</td>
						<td align="right">${fg.videoCount }</td>
						<td align="right">${fg.sceneClips }</td>
						<td align="right">${fg.makeUp }</td>
						<td>${fg.addInTime }</td>
						<td>${fg.dealCycle }</td>
						<td>${fg.customName }</td>
						<td>${fg.customSex }</td>
						<td>${fg.customPhone }</td>
						<td>${fg.customWechat }</td>
						<td>${fg.customSource }</td>
						<c:if test="${sessionScope.userRole == 9}">
							<td>${fg.userName }</td>
						</c:if>
						<td><a href="registerServlet?action=updateData&dataId=${fg.dataId }">修改(${fg.dataId})</a> | 
							<a href = "registerServlet?action=delButton&dataId=${fg.dataId }">删除</a> |
							
							<c:if test="${requestScope.noData != fg.dataId }">
								<a href ="registerServlet?action=scanHistory&dataId=${fg.dataId }">查看历史</a>
							</c:if> 
						</td>
						
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>				
	</div>
</div>

<script>
    var data = $('#tableExcel').map(function () {
        return [this.cells[0].innerHTML, this.cells[1].innerHTML, this.cells[2].innerHTML, this.cells[3].innerHTML, this.cells[4].innerHTML, this.cells[5].innerHTML];
    }).get();
    data = JSON.stringify(data);//转为json字符串
    alert(data);//data就是你要提交的json字符串数据对象，自己服务器端反序列化为字符串数组后操作，至于你用表单或者ajax提交自己实现
</script>
	
<script type="text/javascript">
   var tTD; //用来存储当前更改宽度的Table Cell,避免快速移动鼠标的问题
   var table = document.getElementById("tb_3");
   for (j = 0; j < table.rows[0].cells.length; j++) {
       table.rows[0].cells[j].onmousedown = function () {
//记录单元格
            tTD = this;
            if (event.offsetX > tTD.offsetWidth - 10) {
                tTD.mouseDown = true;
                tTD.oldX = event.x;
                tTD.oldWidth = tTD.offsetWidth;
            }
//记录Table宽度
//table = tTD; while (table.tagName != ‘TABLE') table = table.parentElement;
//tTD.tableWidth = table.offsetWidth;
        };
        table.rows[0].cells[j].onmouseup = function () {
//结束宽度调整
            if (tTD == undefined) tTD = this;
            tTD.mouseDown = false;
            tTD.style.cursor = 'default';
        };
        table.rows[0].cells[j].onmousemove = function () {
//更改鼠标样式
            if (event.offsetX > this.offsetWidth - 10)
                this.style.cursor = 'col-resize';
            else
                this.style.cursor = 'default';
//取出暂存的Table Cell
            if (tTD == undefined) tTD = this;
//调整宽度
            if (tTD.mouseDown != null && tTD.mouseDown == true) {
                tTD.style.cursor = 'default';
                if (tTD.oldWidth + (event.x - tTD.oldX) > 0)
                    tTD.width = tTD.oldWidth + (event.x - tTD.oldX);
//调整列宽
                tTD.style.width = tTD.width;
                tTD.style.cursor = 'col-resize';
//调整该列中的每个Cell
                table = tTD;
                while (table.tagName != 'TABLE') table = table.parentElement;
                for (j = 0; j < table.rows.length; j++) {
                    table.rows[j].cells[tTD.cellIndex].width = tTD.width;
                }
//调整整个表
//table.width = tTD.tableWidth + (tTD.offsetWidth – tTD.oldWidth);
//table.style.width = table.width;
            }
        };
    }
</script>

<script language="JavaScript" type="text/javascript">
	function CheckExlPath(exlPath)
	{	
		Ajax_CallBack(false,"CheckExlPath","registerServlet?action=checkExlPath&exlPath="+escape(exlPath));
	}
</script>				
<div class = "footerHeight">
	<c:if test="${!empty requestScope.footerUpdate || !empty requestScope.footerAdd || !empty requestScope.footerModHistory}">
	<jsp:include page="footer.jsp"/>
	</c:if>
</div>

</html>

