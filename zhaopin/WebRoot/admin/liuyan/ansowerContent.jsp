<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ansowerContent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div class="body-box">
		<TABLE cellSpacing=1 cellPadding=4 width="100%" border=0>
			
			    <TR>
				<TD>
				<form action="<%=path %>/ansower.action" method="post">
					<TABLE class=tpt width="100%" border=0>
						<TBODY>
							<TR bgColor=#cccccc>
								<TD align=middle width="5%">
									<STRONG>留言人：</STRONG>
								</TD>
								<TD width="15%">
								
									<FONT color=#000000>&nbsp;${sessionScope.liuyan.liuyanUser}</FONT>
								</TD>
								<TD align=middle width="6%">
									<STRONG>留言时间：</STRONG>
								</TD>
								<TD width="29%">
									<FONT color=#000000>&nbsp;${sessionScope.liuyan.liuyanDate}</FONT>
								</TD>
							</TR>
							<TR>
								<TD align=middle>
									<STRONG>标题：</STRONG>
								</TD>
								<TD colSpan=3>
									<FONT color=#000000>&nbsp;${sessionScope.liuyan.liuyanTitle}</FONT>
								</TD>
							</TR>
							<TR>
								<TD vAlign=top align=middle>
									<STRONG>内容：</STRONG>
								</TD>
								<TD colSpan=3>
									${sessionScope.liuyan.liuyanContent}
								</TD>
							</TR>
							<TR>
		         <TD vAlign=top align=middle>
									<STRONG>回复：</STRONG>
								</TD>
		         <TD>
		            <%--   <FCK:editor instanceName="ansowerContent"  basePath="/fckeditor" width="500" height="200"   toolbarSet="Basic">
                      </FCK:editor> 
                    <%--   <input type="text" name="liuyan_ansowerContent" id="liuyan_ansowerContent"/> --%>
                     <textarea name="liuyan_ansowerContent" cols="14" wrap="VIRTUAL" rows="4" id="liuyan_ansowerContent" style="width: 330px; height: 189px;"></textarea>
                 </TD></TR>
						</TBODY><tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        &nbsp;
						    </td>
						    <td width="20%" class="pn-fcontent">
						       <input type="submit" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						       <input type="button" value="取消" onclick="closeOpen()"/>
						    </td>
						</tr>
						
					</TABLE>
					</form>
				</TD>
			</TR>
			
		</TABLE>
	</div>
  </body>
</html>
