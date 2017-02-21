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
 <script type="text/javascript"
	src="<%=path%>/plug-in/media-master/jquery.media.js"></script>
<script type="text/javascript">
	$(function() {
	 	var id = formdata[0].id;
		$.ajax({
			type : "POST",
			async : false,
			url : "<%=path%>/busi/OrderFormManagerPrintInfo.do",
			data:{id:id},
			dataType : "json",
			success : function(json) {
				if(json.success){
					$('.media').media({
						width : 880,
						height : 580,
						src : "<%=path%>/"+json.obj,
					});
				}
			}
		}); 
	});
</script>

</head>
<body>
	<a class="media" href=""></a>
</body>
</html>