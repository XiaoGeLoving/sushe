<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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
		
        <script type="text/javascript">
        function check()
        {      
	          if(document.form1.userRealname.value=="")
              {
                  alert("请输入企业名称");
                  document.form1.userRealname.focus(); 
                  return false;	                   
              }          
            
              //聯繫方式驗證     
               if( document.form1.userEmail.value=="")
              {
                  alert("请输入邮箱");
                  document.form1.userEmail.focus();
                  return false;
              }	
                 if(!isEmail(document.form1.userEmail.value))
              	{
                  alert("聯繫郵箱格式错误");
                   document.form1.userEmail.focus();
                  return false;	                   
              	}	
	
              if(document.form1.userOne2.value.length>50)
				{
					alert("企业简介不能超过50个字符！");
					document.form1.userOne1.focus();
					return false;
				} 
         	 	if(!isPhone(document.form1.userTel.value))
            	{
                	alert("聯繫電話格式错误");
                	 document.form1.userTel.focus();
               	return false;	                   
            	}	
         	                                     
             return true;
        }   
        function isEmail(strEmail) 
     	{
    		if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
    			return true;
    		else
    			return false;
    	}

      	 
    	function isPhone(TEL)      
    	{     
    	
    	
    	// ^((d{3,4})|d{3,4}-)?d{7,8}$
    		if(TEL!=""&&TEL.length<12&&TEL.length>6)
    		{
    		var i,j,strTemp;      
    		strTemp="0123456789-()# ";      
    		for (i=0;i<TEL.length;i++)      
    			{      
    				j=strTemp.indexOf(TEL.charAt(i));      
    				if (j==-1)      
    					{        
    						return false;						   
    					}      
    			}	      
    			//说明合法      
    			return true;
    			}
    		}
    		
        </script>
	</head>

	<body>
		<div class="body-box">
			<form method="post" action="<%=path %>/userEditQiYe.action" name="form1" onsubmit="return check()">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				         用户名：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" value="${sessionScope.user.userName }" name="userName" size="22" readonly="readonly"/>
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>用户名是不允许修改的;</font>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        密码：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="password" name="userPw" value="${sessionScope.user.userPw }"  size="22" readonly="readonly"/>
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>请选择密码修改项修改密码;</font>
				    </td>
				    
				    
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        企业名称：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userRealname" value="${sessionScope.user.userRealname }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        企业地址：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userAddress" value="${sessionScope.user.userAddress }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        联系方式：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userTel" value="${sessionScope.user.userTel }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        email：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userEmail" value="${sessionScope.user.userEmail }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				       从事行业：
				    </td>
				    <td width="80%" class="pn-fcontent">
				         <input type="text" name="userOne2" value="${sessionScope.user.userOne2 }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				       企业简介：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <FCK:editor instanceName="userOne1"  basePath="/fckeditor" width="300" height="150" value="${sessionScope.user.userOne1}" toolbarSet="Basic">
	                    </FCK:editor>
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
			        </td>
				</tr>
			</table>
			</form>
		</div>
   </body>
</html>
