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
<script type="text/javascript" src="<%=path%>/plug-in/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function() {
	valform("id", formdata[0].id, "");
	$('#price').numberbox({    
	    min:0,  
	    max:99999,
	    precision:2,
	    value:formdata[0].price
	});
});
</script>
</head>
<body>
	<form class="formobj" method="post"
		action="<%=path%>/busi/OrderFormManagerSearchInfo.do?method=OrderFormManagerUpdPrice">
		<table class="vtb">
			<tr>
				<th><span class="t_t"></span>单价:</th>
				<td>¥&nbsp;<input type="text" name="price" datatype="s3-8"  id="price">&nbsp;RMB<div
					class="Validform_checktip">请修改单价</div></td>
			</tr>
		</table>
		<span class="thidden"><!-- <input type="hidden" name="method"
			value="OrderFormManagerUpdPrice"> --> <input type="hidden" name="id"><input type="button"
			id="btn_sub"></span>
	</form>
</body>
</html>