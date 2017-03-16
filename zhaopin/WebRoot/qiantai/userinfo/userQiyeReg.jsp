<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
		 <STYLE type=text/css>
			.ycbt
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsbt 
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsnr 
			 {
				DISPLAY: block
			 }
			.ycnr 
			 {
				DISPLAY: none
			 }
         </STYLE>
         
         <script type="text/javascript">
         
         
             function check()
             {        //用戶驗證    	
                   if( document.form1.userName.value=="")
	               {
	                   alert("请输入用户名");
	                    document.form1.userName.focus();
	                   return false;
		           } 	
		    
	                //企業名稱驗證      
		               if(document.form1.userRealname.value=="")
	               {
	                   alert("请输入企业名称");
	                   document.form1.userRealname.focus(); 
	                   return false;	                   
	               }          
	             
	               //聯繫方式驗證     
	                 if(document.form1.userTel.value=="")
	               {	               			
	                  		alert("请输入联系方式");
	                  		document.form1.userTel.focus();
	                   		return false;	                   
	               }
	                if(!isPhone(document.form1.userTel.value))
	               	{
	                   	alert("联系电话格式错误");
	                   	 document.form1.userTel.focus();
	                  	return false;	                   
	               	}	
	               	 //邮箱驗證     
	                if( document.form1.userEmail.value=="")
	               {
	                   alert("请输入邮箱");
	                   document.form1.userEmail.focus();
	                   return false;
	               }	
	                  if(!isEmail(document.form1.userEmail.value))
	               	{
	                   alert("电子邮箱格式错误");
	                    document.form1.userEmail.focus();
	                   return false;	                   
	               	}	
	               
 	
	               //密碼驗證
	               	   if( document.form1.userPw.value=="")
	               {
	                   alert("请输入密码");
	                   document.form1.userPw.focus();	                   
	                   return false;	                   
	               }	
	           
	               
	               if(document.form1.userPw.value.length<6||document.form1.userPw.value.length>18||!isNaN(document.form1.userPw.value))
					{
						alert("密码必须是6~18位字母和数字组成");
						document.form1.userPw.focus();
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
		
		//“^[a-zA-Z]w{5,17}$”


         </script>
  </head>
  
  <BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
	<div class="wrap"> 
		<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align=left>
						<DIV class=jstime style="FLOAT: left; WIDTH: 25%">
							<%--【<a href="userLogin.jsp">会员登录</a>】
							【<a href="userReg.jsp">免费注册</a>】--%>
						</DIV>
						<DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">
							<SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;星期'+'日一二三四五六'.charAt(new Date().getDay());",1000)</SCRIPT>
							<SPAN id=clock></SPAN>&nbsp;&nbsp;
							<A href="javascript:javascript:window.external.AddFavorite('http://localhost:8080',' ');">加入收藏</A>
							<A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost:8080/');" href="http://localhost/">设为首页</A>
						</DIV>
					</TD>
				</TR>
		</TABLE>
		
		<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD>
						<DIV class=ad id=banner>
							<img src="<%=path %>/images/111 .jpeg" border=0 width="950" height="90">
						</DIV>
					</TD>
				</TR>
		</TABLE>
		
		
		<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/inc.jsp"></jsp:include>
					</TD>
				</TR>
		</TABLE>


		<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Side vAlign=top align=left width="100%" height=200>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
								<TR>
									<TD class=head id=tb1_bt1  width="100%" height="35">
										<SPAN class=TAG>招聘注册</SPAN>
										<SPAN class=more style="FLOAT: right"><A href="">&nbsp;</A></SPAN>
									</TD>
								</TR>
								<TR>
									<TD class=middle align="left" colspan="2">
										<form action="<%=path %>/userQiyeReg.action" name="form1" method="post" onsubmit="return check()">
										    <table align="left"  border="0" height=100 width=900>
										        <tr>
										             <td align="center">用户名&nbsp;&nbsp;&nbsp;&nbsp;:</td>
										             <td><input type="text" name="userName" id="userName"/></td>
										       			<td align="left"><font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'></font><br></td>
										        </tr>
										      
										        <tr>
										             <td align="center">企业名称&nbsp;:</td>
										             <td><input type="text" name="userRealname"/></td>
										             <td align="left"><font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>请填写您的企业名称;</font><br></td>
										        </tr>
										        <tr>
										             <td align="center">企业地址&nbsp;:</td>
										             <td><input type="text" name="userAddress"/></td>
										        </tr>
										        <tr>
										             <td align="center">联系方式&nbsp;:</td>
										             <td><input type="text" name="userTel"/></td>
										             <td align="left"><font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>联系方式如：15712087047</font><br></td>
										        </tr>
										        <tr>
										             <td align="center">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
										             <td><input type="text" name="userEmail"/></td>
										       		<td align="left"><font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>邮箱格式例如：1732203864@qq.com；</font><br></td>
										        </tr>
										        <tr>
										             <td align="center">从事行业&nbsp;:</td>
										             <td><input type="text" name="userOne2"/></td>
										        </tr>
										        <tr></tr>
										        <tr>
										             <td align="center">企业简介&nbsp;:</td>										             
										             <td><textarea name="userOne1" cols="14" wrap="VIRTUAL" rows="4" placeholder="请输入简单的描述"></textarea></td>
										        </tr>
										          <tr>
										             <td align="center">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;:</td>
										             <td><input type="password" name="userPw"/></td>
										             <td align="left"><font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>密码必须：以字母开头，长度在6-18之间，　只能包含字符和数字;</font><br></td>
										        </tr><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
										        <tr>
										             <td colspan="2">
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;
										                 <input type="submit" value="确定" />
										                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="reset" value="取消"/>
										                 <font color="red"></font>
										             </td>
										        </tr>
										        <tr height="30">
										        </tr>
										    </table>
								         </form>
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		
        <!-- foot   onclick="check()    <td>
										          <FCK:editor instanceName="userOne1"  basePath="/fckeditor" width="300" height="150" value="请输入内容" toolbarSet="Basic">
	                                               </FCK:editor>
                                                     </td> -->
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
        <!-- foot -->
    </div>
  </BODY>
</html>