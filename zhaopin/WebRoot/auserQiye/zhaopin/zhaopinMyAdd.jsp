<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        <base target="_self"/>
		<link rel="stylesheet" href="<%=path%>/css/front.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"></link>
		
        <style type="text/css">
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path %>/img/arrow.gif) center left no-repeat;}
        </style>
        <script language="javascript">
        var zhiwei = document.getElementById("zhiwei");
        var daiyui = document.getElementById("daiyui");
        var xuliyaoqiu = document.getElementById("xuliyaoqiu");
        var gongzuodidian = document.getElementById("gongzuodidian");
        var gongzuojingyan = document.getElementById("gongzuojingyan");
         /*    function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    } */
            function check()
		    {
		    	if(document.getElementById("zhiwei").value=="")
		      {
		    	  alert("请输入招聘职位");
		    	  return false;
		      }
		    	if(document.getElementById("daiyui").value=="")
			      {
			    	  alert("请输入待遇");
			    	  return false;
			      }
		    	if(document.getElementById("xuliyaoqiu").value=="")
			      {
			    	  alert("请输入学历要求");
			    	  return false;
			      }
		    	if(document.getElementById("gongzuodidian").value=="")
			      {
			    	  alert("请输入工作低点");
			    	  return false;
			      }
		    	if(document.getElementById("gongzuojingyan").value=="")
			      {
			    	  alert("请输入工作经验");
			    	  return false;
			      }
		      /* if(daiyui.value==""){
		    	  alert("请输入待遇");
		    	  return false;
		      }
		      if(xuliyaoqiu.value==""){
		    	  alert("请输入学历要求");
		    	  return false;
		    	  
		      }
		      if(gongzuodidian.value==""){
		    	  alert("请输入工作地点");
		    	  return false;
		    	  
		      }
		      if(gongzuojingyan.value==""){
		    	  alert("请输入工作经验");
		    	  return false;
		    	  
		      }
		    return false;*/
			return true;
		    }
        </script>
	</head>

	<body>
	        <div class="body-box">
			<form action="<%=path %>/zhaopinMyAdd.action" name="formAdd" method="post" onsubmit="return check(formAdd)">
				     <table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         招聘职位：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" id="zhiwei" name="zhiwei" size="20"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         待遇：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" id="daiyui" name="daiyui" size="20"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         学历要求：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" id="xuliyaoqiu" name="xuliyaoqiu" size="20"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         工作地点：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" id="gongzuodidian" name="gongzuodidian" size="20"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         工作经验：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" id="gongzuojingyan" name="gongzuojingyan" size="20"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         其他：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" name="qitashuoming" size="50"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        &nbsp;
						    </td>
						    <td width="20%" class="pn-fcontent">
						       <input type="submit" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						       <input type="button" value="取消" />
						    </td>
						</tr>
					 </table>
			</form>
			</div>
   </body>
</html>
