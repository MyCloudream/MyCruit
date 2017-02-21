<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../menuBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
</head>
<body class="easyui-layout" id="cc">
	<div data-options="region:'center',title:'',collapsible:false">
		<div class="p">
			<form id="ff" method="post"></form>
		</div>
		<table id="tt">
		</table>
	</div>
	<div data-options="region:'east',title:'消息详情',split:true"  class="easyui-panel"  style="width: 800px;" id="r">
	
	</div>
</body>
<script type="text/javascript" src="<%=path%>/plug-in/tools/easyui-tabs.js"></script>
<script type="text/javascript">
	var datagrid;
	$(function() {
		$('#cc').layout('collapse', 'east');
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
	function MessageManagerSearch() {
		var rowsData = datagrid.datagrid('getSelections');
		if (!rowsData || rowsData.length == 0) {
			tip('请选择编辑项目');
			return false;
		}
		if (rowsData.length > 1) {
			tip('请选择一条记录再编辑');
			return false;
		}
		$('#cc').layout('expand', 'east');
	    $("#r").panel({    
		content : createFrame("MessageManager-R.jsp?uid="+rowsData[0].uid+"&name="+ rowsData[0].name+"&phone="+ rowsData[0].phone),  
	    onLoad:function(){    
	    }    
	}); 			
				
	}
	function createFrame(url) {
		var s = '<iframe scrolling="auto" frameborder="0"  src="' + url
				+ '" style="width:100%;height:100%;"></iframe>';
		return s;
	}
	function getdatagrid() {
		datagrid = $("#tt").datagrid({
			url : '<%=path%>/busi/MessageManager.do',
			/* 		fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动  */
			pagination : true,// 分页控件
			pageSize : 20,//默认显示大小
			fit : true,// 自动大小
			rownumbers : true,// 行号
			singleSelect : true,//只能选中一行
			pageList : [ 10, 20, 50 ],
			sortName : 'msgdate',//排序
			sortOrder : 'asc',// asc desc
			idField : 'uid',
			columns : [ [ {
				field : 'phone',
				title : '手机',
				width : 200
			}, {
				field : 'name',
				title : '姓名',
				width : 200
			}, {
				field : 'msgdate',
				title : '最新时间',
				width : 200,
				sortable : true,
				formatter : function(value, row, index) {
					return getLocalTime(value);
				}
			} ,{
				field : 'aaddress',
				title : '地址',
				width : 200
			}] ],
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
