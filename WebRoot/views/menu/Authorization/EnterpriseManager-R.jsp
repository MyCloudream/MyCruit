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
				<span class="spanr">关键字:<input type="text" name="keyword">&nbsp;<a
					id="btn" onclick="btn()" class="easyui-linkbutton"
					data-options="iconCls:'icon-search'">查询</a>&nbsp;<a id="btn"
					onclick="reload()" class="easyui-linkbutton"
					data-options="iconCls:'icon-reload'">重置 </a></span>
			</p>
			<p>
				<span class="spanl"><a href="javascript:void(0)"
					onclick="add()" iconCls="icon-add" class="easyui-linkbutton"
					plain="true">添加</a><a href="javascript:void(0)" onclick="upd()"
					iconCls="icon-edit" class="easyui-linkbutton" plain="true">修改</a> <a
					href="javascript:void(0)" onclick="updPassword()"
					iconCls="icon-edit" class="easyui-linkbutton" plain="true">修改密码</a><a
					href="javascript:void(0)" onclick="updStatus()" iconCls="icon-edit"
					class="easyui-linkbutton" plain="true">启用/禁用</a></span>
			</p>
		</form>
	</div>
	<table id="tt">
	</table>
</body>
<script type="text/javascript">
	var datagrid;
	var Role;
	function getAllRole() {
		$.ajax({
			type : "POST",
			cache : false,
			async : false,
			url : "<%=path%>/busi/common/findAllRoleGroups.do",
			data : {
				groups : '2'
			},
			dataType : "json",
			success : function(json) {
				Role = json;
			}
		});
	}
	var eid = "";
	$(function() {
		eid = request("eid");
		getAllRole();
		datagrid = $("#tt").datagrid({
			url : '<%=path%>/busi/EnterpriseManagerUpdUser.do?method=findUser&eid=' + eid,
			fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动 
			pagination : true,// 分页控件
			pageSize : 10,//默认显示大小
			fit : true,// 自动大小
			rownumbers : true,// 行号
			singleSelect : true,//只能选中一行
			pageList : [ 10,20,50],
			sortName : 'id',//排序
			sortOrder : 'asc',// asc desc
			idField : 'id',
			columns : [ [ {
				field : 'username',
				title : '用户名称',
				width : 100,
				sortable : true
			}, {
				field : 'tel',
				title : '电话',
				width : 100,
				sortable : true
			}, {
				field : 'roleid',
				title : '角色',
				width : 100,
				sortable : true,
				formatter : function(value, row, index) {
					for (var i = 0; i < Role.length; i++) {
						if (value == Role[i].id) {
							return Role[i].name;
						}
					}
					return "未知";
				}
			}, {
				field : 'status',
				title : '状态',
				width : 80,
				sortable : true,
				formatter : function(value, row, index) {
					if (value == 'Y') {
						return "<font color='green'>启用</font>";
					} else if (value == 'N') {
						return "<font color='red'>禁用</font>";
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
			keyword : ff.find('[name="keyword"]').val(),
		});
	}
	function reload() {
		ff[0].reset();
		btn();
	}
	function add() {
		addobj("添加", "EnterpriseManagerUserAdd", "", "");
	}
	function upd() {
		updateobj("修改", "EnterpriseManagerUserUpd", "", "");
	}
	function updPassword() {
		updateobj("修改密码", "EnterpriseManagerUserUpdPassword", "", "");
	}
	function updStatus() {
		if (selectonly() == true) {
			var datas = datagrid.datagrid('getSelections');
			var id = datas[0].id;
			var status = datas[0].status == 'Y' ? 'N' : 'Y';
			var data = {
				id : id,
				status : status
			};
			updateo("<%=path%>/busi/EnterpriseManagerUpdUser.do?method=updUserStatus", data);
		}
	}
</script>

</html>
