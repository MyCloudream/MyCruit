<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../formBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <link rel="stylesheet"
	href="<%=path%>/plug-in/easyui/themes/bootstrap/easyui.css"
	type="text/css"></link>
<link rel="stylesheet" href="<%=path%>/plug-in/easyui/themes/icon.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=path%>/plug-in/lhgDialog/skins/iblue.css">
<script type="text/javascript"
	src="<%=path%>/plug-in/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/plug-in/easyui/locale/easyui-lang-zh_CN.js"></script> --%>
<style type="text/css">
.vtb {
	width: 100%;
}

.vtb tr td {
	width: 80%;
}

.vtb tr th {
	width: 20%;
}
</style>
<script type="text/javascript">
	$(function() {
		valform("id", formdata[0].id, "");
		valform("remarks", formdata[0].remarks, "textarea");
		$("#gaddress").html(formdata[0].gaddress);
		$("#gmobile").html(formdata[0].gmobile);
		$("#gname").html(formdata[0].gname);
	})
</script>
</head>
<body>
	<form class="formobj" method="post"
		action="<%=path%>/busi/OrderFormManagerUpd.do">
		<table class="vtb">
			<tr>
				<th>电话:</th>
				<td><span id="gmobile"></span> <!-- <span class="Validform_checktip"></span> -->
				</td>
			</tr>
			<tr>
				<th>姓名:</th>
				<td><span id="gname"></span>
					<!-- <span class="Validform_checktip"></span> -->
				</td>
			</tr>
			<tr>
				<th>地址:</th>
				<td><span id="gaddress"></span>
					<!-- <span class="Validform_checktip"></span> -->
				</td>
			</tr>
			<tr>
				<th>备注:</th>
				<td><textarea rows="3" cols="50" name="remarks" ignore="ignore"  datatype="s5-80"></textarea><span
					class="Validform_checktip"></span></td>
			</tr>
		</table>
		<span class="thidden"><input type="hidden" name="id"
			type="text"><input type="button" id="btn_sub"></span>
	</form>
</body>
</html>