<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../formBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
</head>
<body>
	<form class="formobj" method="post" action="/busi/AreasManagerAdd.do">
		<table class="vtb">
			<tr>
				<th><span class="t_t">*</span>省份编码:</th>
				<td><input type="text" name="pcode" datatype="n6-8"
					errormsg="请输入正确的省份编号" nullmsg="请填写信息！"><span
					class="Validform_checktip">省份编码，例如100000</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>城市编码:</th>
				<td><input type="text" name="ccode" datatype="n6-8"
					errormsg="请输入正确的城市编号" nullmsg="请填写信息！"><span
					class="Validform_checktip">城市编码，例如100100（如果为省份，则此处填写0）</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>名称:</th>
				<td><input type="text" name="name" datatype="zh2-10"
					errormsg="请输入正确的名称" nullmsg="请填写信息！"><span
					class="Validform_checktip">名称，例如石家庄</span></td>
			</tr>
			<tr>
				<th>是否可用:</th>
				<td>
					<input type="radio" name="isenable" value="y" checked="checked">可用
					<input type="radio" name="isenable" value="n">禁用
				</td>
			</tr>
		</table>
		<span class="thidden"><input type="button" id="btn_sub"></span>
	</form>
</body>
</html>