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
	<form class="formobj" method="post" action="/busi/StudentManagerAdd.do">
		<table class="vtb">
			<tr>
				<th><span class="t_t">*</span>姓名:</th>
				<td><input type="text" name="name" datatype="zh2-5"
					errormsg="请输入真实姓名，长度2-5个汉字" nullmsg="请填写信息！"><span
					class="Validform_checktip">真实姓名，例如张三</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>QQ号码:</th>
				<td><input type="text" name="qq" datatype="n8-12"
					errormsg="请输入正确的QQ号码" nullmsg="请填写信息！"><span
					class="Validform_checktip">QQ号码，例如632977922</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>电话号码:</th>
				<td><input type="text" name="mobile" datatype="m"
					errormsg="请输入正确的电话号码" nullmsg="请填写信息！"><span
					class="Validform_checktip">电话号码，例如18601942391</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>学生状态:</th>
				<td><select name="status">
						<option value="1">考虑中</option>
						<option value="2">已入学</option>
						<option value="3">已放弃</option>
				</select> <span class="Validform_checktip">选择当前的学生状态（考虑中，已入学，已放弃，默认考虑中）</span></td>
			</tr>
		</table>
		<span class="thidden"><input type="button" id="btn_sub"></span>
	</form>
</body>
</html>