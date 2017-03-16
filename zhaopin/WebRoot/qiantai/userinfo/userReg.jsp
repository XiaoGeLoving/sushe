<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
             function check(userNam)
             {var userName= document.form1.userName.value;
              var userPw=document.form1.userPw.value;
              var userRealname=document.form1.userRealname.value;
              var userAge=document.form1.userAge.value;
              var userAddress=document.form1.userAddress.value;
              var userTel=document.form1.userTel.value;
              var userEmail=document.form1.userName.value;
                   if( userName=="")
	               {
	                   alert("请输入用户名");
	                   document.form1.userName.focus();
	                   return false;
		           }		          		           		  	         
	             
	                if(userRealname=="")
	               {
	                   alert("请输入真实姓名");
	                   document.form1.userRealname.focus();
	                   return false;
	               }
	                if(userTel=="")
		          {
		              alert("请输入联系方法");
		              document.form1.userTel.focus();
		              return false;
		          }
	                if(!isPhone(userTel))
	               {
	                   	alert("电话格式错误");
	                   	//userTel.focus();
	                   	document.form1.userTel.focus();
	                  	return false;	                   
	               }	
	            	   
	                if(userAddress=="")
	               {
	                   alert("请输入地址");
	                   document.form1.userAddress.focus();
	                   return false;
	               }
	             
	                 if(document.form1.userEmail.value=="")
	               {
	                   alert("请输入电子邮箱");
	                   document.form1.userEmail.focus();
	                   return false;
	               }
	                if(!isEmail(document.form1.userEmail.value))
	               {
	                   alert("邮箱格式错误");
	                   document.form1.userEmail.focus();
	                   return false;
	               }
	                  if(userPw=="")
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
         			return true;
         			}
         		}
         	
         	
         	
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
										<SPAN class=TAG>求职注册</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class=middle align="left" colspan="2">
										<form action="<%=path %>/userReg.action" name="form1" method="post" onsubmit="return check(form1.userName)">
										    <table align="center" border="0.5" height=100 width=600>
										        <tr>
										             <td align="center">用户名&nbsp;&nbsp;:</td>										            
										             <td><input type="text" name="userName" id="userName"/>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>*</font></td>	            
										            									           									             
										        </tr>
										    
										        <tr>
										             <td align="center">真实姓名:</td>
										             <td><input type="text" name="userRealname"/>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>*</font></td>	
										             </tr>
										              <tr>
										             <td align="center">联系方式:</td>
										             <td><input type="text" name="userTel" id="userTel"/>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>联系方式如：15712087047</font></td>
										        
										        </tr>									        										         										        </tr>
										        <tr>
										             <td align="center">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄&nbsp;:</td>
										             <td> <input type="number" min="1" max="120" name="userAge" value="20"/></td>
										            <!-- <input type="text" name="userAge" /> -->
										        </tr>
										        <tr>
										             <td align="center">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;:</td>
										             <td><input type="radio" name="userSex" value="男" checked="checked">男<input type="radio" name="userSex" value="女" >女</td><br>
										           
										        </tr>
										        <tr>
										             <td align="center">住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址&nbsp;:</td>
										             <td><input type="text" name="userAddress"/>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>*</font></td>
										          
										        </tr>
										       
										        <tr>
										             <td align="center">Email&nbsp;&nbsp;&nbsp;&nbsp;:</td>
										             <td><input type="text" id="userEmail" name="userEmail"/>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>邮箱格式例如：1732203864@qq.com；</font></td>
										        
										        </tr>
										        <tr>
										             <td align="center">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历&nbsp;:</td>
										             <td>
										                 <SELECT name="userXueli">
										                    <option value="小学">小学</option>
										                    <option value="初中">初中</option>
										                    <option value="高中">高中</option>
										                    <option value="专科">专科</option>
										                    <option value="本科">本科</option>
										                    <option value="硕士">硕士</option>
										                    <option value="博士">博士</option>
										                 </SELECT>
                                                     </td>
										        </tr>
										        <tr>
										             <td align="center">简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介&nbsp;:</td>
										          <!--   <td>
										                 <FCK:editor instanceName="userOne1"  basePath="/fckeditor" width="300" height="150" value="请输入内容" toolbarSet="Basic">
	                                                     </FCK:editor>
                                                     </td> --> 
                                                     
                                                     <td><textarea name="userOne1" cols="14" wrap="VIRTUAL" rows="4" placeholder="请填写您的简历"></textarea></td>
										        </tr>
										            <tr>
										             <td align="center">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
										             <td><input type="password" name="userPw"/>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>*</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>密码必须：<br>
										             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										                                                 以字母开头，长度在6-18之间，　只能包含字符和数字;</font></td>
										             
										             							          
										        </tr>
										        <tr>
										             <td colspan="2">
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										               <input type="submit" value="确定"/>
										               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input  type="reset" value="取消"/>
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
		
        <!-- foot -->
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
        <!-- foot -->
    </div>
  </BODY>
</html>
