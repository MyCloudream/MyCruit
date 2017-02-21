<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../menuBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<script type="text/javascript" src="<%=path%>/plug-in/tools/easyui-tabs.js"></script>
</head>
<body class="easyui-layout" id="cc">
	<div data-options="region:'center',title:'',collapsible:false">
		<div class="p">
			<form id="ff" method="post">
				<p>
					<span class="spanl">省份:<select id="pcode" name="pcode"><option value="">全部</option></select>&nbsp;城市:<select id="ccode" name="ccode"><option value="">全部</option></select></span>&nbsp;公司名称:<input type="text" name="name">
					<span class="spanr">&nbsp;&nbsp;<a id="btn" onclick="btn()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>&nbsp;&nbsp;<a id="btn" onclick="reload()" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">重置 </a></span>
				</p>
			</form>
		</div>
		<table id="tt">
		</table>
	</div>
	<div data-options="region:'east',title:'企业用户管理',split:true" class="easyui-tabs tabs-container" id="tabs" style="width: 500px;"></div>
</body>
<script type="text/javascript">
	var Areas;
	var city;
	function getAllAreas() {
		$.ajax({
			type : "POST",
			/* 		cache : false, */
			async : false,
			url : "<%=path%>/busi/common/findAllAreas.do",
			dataType : "json",
			success : function(json) {
				Areas = json;
			}
		});
	}
	function findcity(x) {
		$("#ccode").empty();
		$("#ccode").append("<option value=''>全部</option>");
		for (var i = 0; i < Areas.length; i++) {
			if (Areas[i].ccode != 0) {
				if (Areas[i].pcode == x) {
					$("#ccode").append("<option value='"+Areas[i].ccode+"'>" + Areas[i].name + "</option>");
				}
			}
		}
	}
	var datagrid;
	$(function() {
		getAllAreas();
		$('#cc').layout('collapse', 'east');
		for (var i = 0; i < Areas.length; i++) {
			if (Areas[i].ccode == 0) {
				$("#pcode").append("<option value='"+Areas[i].pcode+"'>" + Areas[i].name + "</option>");
			} else {
				city = Areas[i];
			}
		}
		$("#pcode").live("change", function() {
			findcity(this.value);
		});
		datagrid = $("#tt").datagrid({
			url : '<%=path%>/busi/EnterpriseManager.do',
			fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动 
			pagination : true,// 分页控件
			pageSize : 20,//默认显示大小
			fit : true,// 自动大小
			rownumbers : true,// 行号
			singleSelect : true,//只能选中一行
			pageList : [ 10, 20, 50 ],
			sortName : 'id',//排序
			sortOrder : 'desc',// asc desc
			idField : 'id',
			columns : [ [ {
				field : 'pcode',
				title : '省份',
				width : 300,
				sortable : true,
				formatter : function(value, row, index) {
					for (var i = 0; i < Areas.length; i++) {
						if (value == Areas[i].pcode) {
							return Areas[i].name;
						}
					}
					return '未知';
				}
			}, {
				field : 'ccode',
				title : '城市',
				width : 300,
				sortable : true,
				formatter : function(value, row, index) {
					for (var i = 0; i < Areas.length; i++) {
						if (value == Areas[i].ccode) {
							return Areas[i].name;
						}
					}
					return '未知';
				}
			}, {
				field : 'name',
				title : '名称',
				width : 300,
				sortable : true
			}, {
				field : 'address',
				title : '详细地址',
				width : 300,
				sortable : true
			}, {
				field : 'tel',
				title : '手机',
				width : 300,
				sortable : true
			}, {
				field : 'mobile',
				title : '座机-电话',
				width : 300,
				sortable : true
			}, {
				field : 'qq',
				title : '企业QQ',
				width : 300,
				sortable : true
			}, {
				field : 'email',
				title : '邮箱',
				width : 300,
				sortable : true
			}, {
				field : 'person',
				title : '联络人',
				width : 300,
				sortable : true
			}, {
				field : 'remark',
				title : '备注',
				width : 300,
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
	var a = 0;
	function EnterpriseManagerUpdUser() {
		$('#cc').layout('expand', 'east');
		if (selectonly()) {
			/* 	alert($('#tabs').tabs('getSelected').length()); */
			var rowsData = datagrid.datagrid('getSelections');
			addTab("标识:" + rowsData[0].id + "-名称:" + rowsData[0].name, "EnterpriseManager-R.jsp?eid=" + rowsData[0].id + "&");
		}
	}
	function btn() {
		datagrid.datagrid("load", {
			pcode : ff.find('[name="pcode"]').val(),
			ccode : ff.find('[name="ccode"]').val(),
			name : ff.find('[name="name"]').val(),
			tel : ff.find('[name="tel"]').val(),
			email : ff.find('[name="email"]').val(),
			mobile : ff.find('[name="mobile"]').val(),
			qq : ff.find('[name="qq"]').val(),
			person : ff.find('[name="person"]').val()
		});
	}
	function reload() {
		$("#ccode").empty();
		$("#ccode").append("<option value=''>全部</option>");
		ff[0].reset();
		btn();
	}
	function EnterpriseManagerAdd() {
		addobj(gb("EnterpriseManagerAdd").name, gb("EnterpriseManagerAdd").link, 900, 600);
	}
	function EnterpriseManagerUpd() {
		updateobj(gb("EnterpriseManagerUpd").name, gb("EnterpriseManagerUpd").link, 900, 600);
	}
	function AreasManagerDel() {
		delobj("/busi/delAreas.do");
	}
</script>

</html>
