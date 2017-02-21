<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../formBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="<%=path%>/plug-in/lhgDialog/skins/iblue.css" type="text/css">
<style type="text/css">
.vtb {
	width: 100%;
}
.vtb tr td {
	width: 200px;
}

.vtb tr th {
	width: 100px;
}
</style>
</head>
<body>
<a id="submit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="mm()">确 认</a>
	<form class="formobj" method="post" action="<%=path%>/busi/PartsManagerUpd.do">
		<table class="vtb">
			<tr></tr>
		</table>
	</form>
	<script type="text/javascript" src="<%=path%>/plug-in/lhgDialog/lhgdialog.min.js"></script>
<script type="text/javascript" src="<%=path%>/plug-in/tools/curdtools.js"></script>
	<script type="text/javascript">
	function mm(){
		addobj("123","test.jsp",300, 200);
	}
	function getLocalTime(x) {  
		  var now=new Date(x); 
	      var year=now.getYear()+1900;     
	      var month=now.getMonth()+1;     
	      var date=now.getDate();     
	      var hour=now.getHours();     
	      var minute=now.getMinutes();     
	      var second=now.getSeconds();   
        return  year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second;
	}   
	$(function() {
	
	});
	</script>
</body>
</html>