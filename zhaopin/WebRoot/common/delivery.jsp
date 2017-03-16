<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<center>
	<font color="red">${session.messa}<p></font><!--提示消息  -->
	<div id="info">本窗口将在5秒后自动关闭</div>
	<input type="button" value="关闭窗口" onclick="closewindow()">
</center>

<script type="text/javascript">
function closewindow()
{
	window.returnValue=true;
	window.close();
	
}
function clock()
{
	i = i -1;
	
	if(i > 0)
	{
	    document.getElementById("info").innerHTML = "本窗口将在"+i+"秒后自动关闭";
		setTimeout("clock();",1000);
	}
	else
	{
		closewindow();
	}
}

var i = 6;
clock();
</script>
</body>
</html>