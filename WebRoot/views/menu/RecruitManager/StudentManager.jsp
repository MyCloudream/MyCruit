<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../menuBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
</head>
<body>
	<div class="p">
		<form id="ff" method="post">
			<p>
				<span class="spanr">手机号码:<input type="text" name="mobile">&nbsp;&nbsp;
					名称:<input type="text" name="name">&nbsp;&nbsp;<a id="btn"
					onclick="btn()" class="easyui-linkbutton"
					data-options="iconCls:'icon-search'">查询</a>&nbsp;&nbsp;<a id="btn"
					onclick="reload()" class="easyui-linkbutton"
					data-options="iconCls:'icon-reload'">重置 </a></span>
			</p>
		</form>
	</div>
	<table id="tt">
	</table>
	<script type="text/javascript">
		var vtype = [ "是", "否" ];
		var datagrid;
		$(function() {
			datagrid = $("#tt").datagrid({
				url : '/busi/StudentManager.do',
				/* 	fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动 */
				pagination : true,// 分页控件
				pageSize : 20,//默认显示大小
				fit : true,// 自动大小
				rownumbers : true,// 行号
				singleSelect : true,//只能选中一行
				pageList : [ 10, 20, 50 ],
				sortName : 'id',//排序
				sortOrder : 'asc',// asc desc
				idField : 'id',
				columns : [ [ {
					field : 'name',
					title : '姓名',
					width : 300,
					sortable : true
				}, {
					field : 'qq',
					title : 'QQ号码',
					width : 300,
					sortable : true
				}, {
					field : 'mobile',
					title : '手机号码',
					width : 300,
					sortable : true
				}, {
					field : 'status',
					title : '状态',
					width : 300,
					sortable : true,
					formatter : function(value, row, index) {
						if (value == "1") {
							return "考虑中";
						} else if (value == "2"){
							return "已入学";
						} else if(value == "3"){
							return "已放弃";
						} else{
							return "未知状态";
						}
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
		});
		function btn() {
			datagrid.datagrid("load", {
				name : ff.find('[name="name"]').val(),
				mobile : ff.find('[name="mobile"]').val()
			});
		}
		function reload() {
			ff[0].reset();
			btn();
		}
		function StudentManagerUpd() {
			updateobj(gb("StudentManagerUpd").name, gb("StudentManagerUpd").link,
					"", "");
		}
		function StudentManagerAdd() {
			addobj(gb("StudentManagerAdd").name, gb("StudentManagerAdd").link, "",
					"");
		}
		function StudentManagerDel() {
			delobj("/busi/StudentManagerDel.do");
		}
	</script>
</body>
</html>
