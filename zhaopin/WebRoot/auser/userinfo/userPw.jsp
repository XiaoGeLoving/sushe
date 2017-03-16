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

		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"/>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"/>
		
		<style type="text/css">
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path%>/img/arrow.gif) center left no-repeat;}
	       .pn-lthead th{height:27px;background-image:url(<%=path%>/img/msg_bg.jpg);}
        </style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("新密码不能空");
                     document.formPw.userPw1.focus();
	                   return false;
                 }
                 if(document.formPw.userPw2.value =="")
             	 {               	
                  alert("确认密码不能为空");
                  document.formPw.userPw2.focus();
	                    return false;
             	 }
                 if(document.formPw.userPw1.value.length<6||document.formPw.userPw1.value.length>18||!isNaN(document.formPw.userPw1.value))
      			{
      				alert("密码必须是6~18位字母和数字组成");
      				document.formPw.userPw1.focus();
      				return false;
      			}
                 if(document.formPw.userPw2.value.length<6||document.formPw.userPw2.value.length>18||!isNaN(document.formPw.userPw2.value))
       			{
       				alert("确认密码必须是6~18位字母和数字组成");
       				document.formPw.userPw2.focus();
       				return false;
       			}
                 if(document.formPw.userPw1.value != document.formPw.userPw2.value)
          	 	{
              			 alert("两次输入的密码不一致");
               		 document.formPw.userPw2.focus();
	                     return false;
          		 } 
             
 					
              	
                
			              
            }

      
        </script>
	</head>


	<body>
		<div class="body-box">
			<form method="post" action="<%=path %>/userPwEdit.action" name="formPw" onsubmit="return check()">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				         登录名：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" value="${sessionScope.user.userName }" name="userName" size="22" disabled="disabled"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        原密码：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="password" name="userPw" id="userPw" size="22" value="${sessionScope.user.userPw }"/>
				    </td>
				</tr>
				<tr> 
				    <td width="20%" class="pn-flabel pn-flabel-h">
				         新密码：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="password" id="userPw1" name="userPw1" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        确认密码：
				    </td>
				       <td width="80%" class="pn-fcontent">
				           <input type="password" name="userPw2" id="userPw2" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        &nbsp;
				    </td>
			        <td width="80%" class="pn-fcontent">
			             <input type="submit" value="修改"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="重置"/>
			             <img id="indicator" src="<%=path %>/images/loading32.gif" alt="Loading..." style="display:none"/>
			        </td>
				</tr>
			</table>
			</form>
		</div>
   </body>
</html>
