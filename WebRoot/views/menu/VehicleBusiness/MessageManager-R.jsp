<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../menuBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
</head>
<body >
		<div class="p">
			<form id="ff" method="post">
			   <p style="font-size: 14px;">
			   &nbsp;&nbsp;&nbsp;&nbsp;用户姓名：<span id="uname"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户电话：<span id="uphone"></span> 
			   </p>
			   <p>
			   &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)"
					onclick="updout()" iconCls="icon-add" class="easyui-linkbutton"
					plain="true">生成订单</a>
			   </p>
			</form>
		</div>
		<table id="tt">
		</table>
</body>
<script type="text/javascript">
function updout(){
     updateids("<%=path%>/busi/MessageManagerSearch.do?method=UpdMessageDetailedStatus", datagrid,"您确认生成订单?"); 
}
	var datagrid;
	$(function() {
		getdatagrid();
	});
	function getLocalTime(x) {
		var now = new Date(x);
		var year = now.getYear() + 1900;
		var month = now.getMonth() + 1;
		var date = now.getDate();
		var hour = now.getHours();
		var minute = now.getMinutes();
		var second = now.getSeconds();
		return year + "-" + month + "-" + date + " " + hour + ":" + minute
				+ ":" + second;
	}
	function btn() {
		datagrid.datagrid('load', {
			regdate : ff.find('[name="regdate"]').val(),
			pid : ff.find('[name="pid"]').val(),
			cars : ff.find('[name="cars"]').val(),
			brand : ff.find('[name="brand"]').val(),
			modelcode : ff.find('[name="modelcode"]').val(),
			ncode : ff.find('[name="ncode"]').val(),
			gcode : ff.find('[name="gcode"]').val()
		});
	}
	function reload() {
		ff[0].reset();
		btn();
	}
	function createFrame(url) {
		var s = '<iframe scrolling="auto" frameborder="0"  src="' + url
				+ '" style="width:100%;height:100%;"></iframe>';
		return s;
	}
	var uid; 
	function getdatagrid() {
		uid = request("uid");
		$("#uphone").html(request("phone"));
		$("#uname").html(request("name"));
		datagrid = $("#tt").datagrid({
			url : '<%=path%>/busi/MessageManagerSearch.do?method=MessageDetailed&uid='+uid,
			fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动  
			pagination : true,// 分页控件
			pageSize : 20,//默认显示大小
			fit : true,// 自动大小
			rownumbers : true,// 行号
	    	singleSelect : false, //只能选中一行
			pageList : [ 10, 20, 50 ],
			sortName : 'id',//排序
			sortOrder : 'asc',// asc desc
			idField : 'id',
			columns : [ [ {
				field : 'id',
				checkbox:true
			},  {
				field : 'type',
				title : '件类',
				width : 100,
				sortable : true,
				formatter : function(value, row, index) {
					if(value==1){
						return '机动车';	
					}else{
						return '散件';	
					}
				}
			},{
				field : 'brandname',
				title : '品牌',
				width : 200
			},{
				field : 'carsname',
				title : '车系',
				width : 200
			},{
				field : 'modelname',
				title : '型号',
				width : 200
			},{
				field : 'gcodename',
				title : '总类',
				width : 200
			}, {
				field : 'ncodename',
				title : '类型',
				width : 200
			}, {
				field : 'msgdate',
				title : '最新时间',
				width : 300,
				sortable : true,
				formatter : function(value, row, index) {
					return getLocalTime(value);
				}
			} ] ],
			toolbar : ".p",
			onRowContextMenu : function(e, rowIndex, rowData) { // 右击事件
				e.preventDefault(); // 阻止浏览器自带的右键菜单弹出
				$('#menu').menu('show', {
					left : e.pageX, // 弹出窗口的方位坐标
					top : e.pageY
				});
			}
		});
	}
</script>
</html>
