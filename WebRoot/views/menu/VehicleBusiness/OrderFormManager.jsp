<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../menuBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<style type="text/css">
</style>
</head>
<body class="easyui-layout" id="cc">
	<div data-options="region:'center',title:'',collapsible:false">
		<div class="p">
			<form id="ff" method="post"></form>
		</div>
		<table id="tt">
		</table>
	</div>
	<div
		data-options="region:'east',title:'订单详情',split:true,collapsible:false"
		class="easyui-panel" style="width: 700px;" id="r"></div>
</body>
<script type="text/javascript"
	src="<%=path%>/plug-in/tools/easyui-tabs.js"></script>
<script type="text/javascript">
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
			url : '<%=path%>/busi/OrderFormManager.do',
			fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动 */
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
				field : 'code',
				title : '订单号',
				width : 300
			}, {
				field : 'gname',
				title : '名称',
				width : 300
			}, {
				field : 'gmobile',
				title : '电话',
				width : 300
			}, {
				field : 'gaddress',
				title : '地址',
				width : 300
			}, {
				field : 'status',
				title : '状态',
				width : 150,
				formatter : function(value, row, index) {
					var sss = "";
				    var v= value.toString();
				    if(v=="0"){
				    	sss= "<font color='#FFAA00'>未备货</font>";
				    }else if(v=="1"){
			 	    	sss= "<font color='#FFAA00'>备货中</font>";
					}else if(value=="2"){
						sss= "<font color='#68C127'>已出库</font>";
					}else if(value=="3"){
						sss= "<font color='#68C127'>完成</font>";
					} 
					return sss;
				}
			}] ],
			toolbar : ".p",
			onClickRow:function(index, row) {
				rr(row.id,row.gmobile,row.gaddress,row.gname);
				ttid=row.id;
			},
			onLoadSuccess:function(data){
				if(ttid==0){
					datagrid.datagrid('selectRow',0);
					rr(data.rows[0].id,data.rows[0].gmobile,data.rows[0].gaddress,data.rows[0].gname); 
				}else{
				  var c =data.rows.length;
				   for (var i = 0; i < c; i++) {
				     if(data.rows[i].id==ttid){
				            rr(data.rows[i].id,data.rows[i].gmobile,data.rows[i].gaddress,data.rows[i].gname); 
				      }
				  } 
				}
			},
			onRowContextMenu : function(e, rowIndex, rowData) { // 右击事件
				e.preventDefault(); // 阻止浏览器自带的右键菜单弹出
				$('#menu').menu('show', {
					left : e.pageX, // 弹出窗口的方位坐标
					top : e.pageY
				});
			}
		});
	}
	function rr(id,gmobile,gaddress,gname){
		   $("#r").panel({    
				content : createFrame("OrderFormManager-R.jsp?orderid="+id+"&gmobile="+gmobile+"&gaddress="+ gaddress+"&gname="+gname),  
	        });		
	}
	var ttid = 0;
	function OrderFormManagerSearchInfo(){
		var rowsData = datagrid.datagrid('getSelections');
		if (!rowsData || rowsData.length == 0) {
			tip('请选择编辑项目');
			return false;
		}
		if (rowsData.length > 1) {
			tip('请选择一条记录再编辑');
			return false;
		}
	    $("#r").panel({    
		content : createFrame("OrderFormManager-R.jsp?orderid="+rowsData[0].id+"&gmobile="+ rowsData[0].gmobile+"&gaddress="+ rowsData[0].gaddress+"&gname="+rowsData[0].gname),  
		});
	}
	
	function OrderFormManagerUpdOutReady(){
		var rowsData = datagrid.datagrid('getSelections');
		if (!rowsData || rowsData.length == 0) {
			tip('请选择编辑项目');
			return false;
		}
		if (rowsData.length > 1) {
			tip('请选择一条记录再编辑');
			return false;
		}
     	if(rowsData[0].status==0){
			updateobj(gb("OrderFormManagerUpdOutReady").name,gb("OrderFormManagerUpdOutReady").link, 400, 100);
		} else if (rowsData[0].status == 1) {
			alertTip("您已在备货过程中", "提示");
		}else{
			alertTip("商品不在备货阶段", "提示");
		}
	}
	function OrderFormManagerUpd() {
		updateobj(gb("OrderFormManagerUpd").name,gb("OrderFormManagerUpd").link, "", "");
	}
	function OrderFormManagerUpdOut() {
		var rowsData = datagrid.datagrid('getSelections');
		if (!rowsData || rowsData.length == 0) {
			tip('请选择编辑项目');
			return false;
		}
		if (rowsData.length > 1) {
			tip('请选择一条记录再编辑');
			return false;
		}
		var data={
				"id":rowsData[0].id
		 }
		$.dialog.confirm("是否出库?", function() {
			$.ajax({
				url : '<%=path%>/busi/OrderFormManagerUpdOut.do', // 后台处理程序"
				type : 'post', // 数据发送方式
				dataType : 'json', // 接受数据格式
				data : data, // 要传递的数据
				success : function(data) {
					if (data.success) {
						tip(data.msg);
						reloadTable();
					} else {
						tip(data.msg);
					}
				}
			});
		}, function() {

		});
	}
	
	function OrderFormManagerPrintInfo(){
		var rowsData = datagrid.datagrid('getSelections');
		if (!rowsData || rowsData.length == 0) {
			tip('请选择编辑项目');
			return false;
		}
		if (rowsData.length > 1) {
			tip('请选择一条记录再编辑');
			return false;
		}
	  	if(rowsData[0].status >= 2){
	  		check(gb("OrderFormManagerPrintInfo").name,gb("OrderFormManagerPrintInfo").link,900, 600);
		} else{
			alertTip("没有出库不能打印", "提示");
		}
	}
</script>
</html>
