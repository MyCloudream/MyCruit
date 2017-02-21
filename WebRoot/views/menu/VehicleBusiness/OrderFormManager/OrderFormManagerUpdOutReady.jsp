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
	width: 70%;
}

.vtb tr th {
	width: 30%;
}
</style>
<script type="text/javascript">
$(function() {
	valform("orderid", formdata[0].id, "");
	 $.ajax({
			type : "POST",
			async : false,
			url : "<%=path%>/busi/common/findEnterpriseUser.do",
			dataType : "json",
			success : function(json) {
				 	if (json.success) {
							var is = json.obj;
							var str= "";
							for (var i = 0; i < is.length; i++) {
								 str+="<option value='"+is[i].id+"'>"+is[i].username+"</option>";		
							}
							 $("#userid").append(str);
						}
			}
		
	});
});
</script>
</head>
<body>
	<form class="formobj" method="post"
		action="<%=path%>/busi/OrderFormManagerUpdOutReady.do">
		<table class="vtb">
			<tr>
				<th><span class="t_t"></span>选择备货人:</th>
				<td><select name="userid" id="userid" datatype="s1-6"></select> &nbsp;<div
					class="Validform_checktip">请选择备货人</div></td>
			</tr>
		</table>
		<span class="thidden"><input type="hidden" name="orderid"> <input type="hidden" name="status" value="2"><input type="button"
			id="btn_sub"> </span>
	</form>
</body>
</html>