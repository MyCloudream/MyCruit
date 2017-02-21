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
<script type="text/javascript">
	$(function() {
		$("#eid").val(win.eid);
		for (var i = 0; i < win.Role.length; i++) {
			$("#role").append(
					"<option value='"+win.Role[i].id+"'>" + win.Role[i].name
							+ "</option>");
		}
		valform("id", formdata[0].id, "");
		valform("username", formdata[0].username, "");
		valform("roleid", formdata[0].roleid, "select");
		valform("tel", formdata[0].tel, "");
	});
</script>
</head>
<body>
	<form class="formobj" method="post" action="/busi/EnterpriseManagerUpdUser.do?method=updUser">
		<table class="vtb">
			<tr>
				<th><span class="t_t"></span>企业ID:</th>
				<td><input id="eid" name="eid" type="text" value=""
					readonly="readonly" datatype="*"><span
					class="Validform_checktip">自动关联不允许修改</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>角色:</th>
				<td><select id="role" name="roleid" datatype="*"><option
							value="">请选择角色</option>
				</select><span class="Validform_checktip"></span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>手机:</th>
				<td><input type="text" name="tel" datatype="m"
					errormsg="请输入正确的手机号码" nullmsg="请填写信息！"><span
					class="Validform_checktip"></span></td>
			</tr>
			<tr>
				<th><span class="t_t"></span>用户昵称:</th>
				<td><input type="text" name="username" datatype="s2-10"
					errormsg="请输入正确的名称" nullmsg="请填写信息！"><span
					class="Validform_checktip"></span></td>
			</tr>
		</table>
		<span class="thidden"><input type="hidden" name="id"
			type="text"><input type="button" id="btn_sub"></span>
	</form>
</body>
</html>