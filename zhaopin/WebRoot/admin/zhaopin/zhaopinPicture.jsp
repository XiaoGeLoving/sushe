<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
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

        <form action="<%=path %>/uploadPicture.action" theme="simple" enctype="multipart/form-data" method="post" >
            <table align="center" width="50%" border="1">
                <tr>
                    <td>file</td>
                    <td id="more">
                        <input type="file" name="file"/>
                        <input type="button" value="Add More.." onclick="addMore()">
                    </td>
                </tr>
                <tr>
                    <td>  <input type="submit" value="修改"/></td>
                    <td> <input type="reset" value="重置"/></td>
                </tr>
            </table>
        <form>
  </body>
<script type="text/javascript">        
function addMore()
{
    var td = document.getElementById("more");
    
    var br = document.createElement("br");
    var input = document.createElement("input");
    var button = document.createElement("input");
    
    input.type = "file";
    input.name = "file";
    
    button.type = "button";
    button.value = "Remove";
    
    button.onclick = function()
    {
        td.removeChild(br);
        td.removeChild(input);
        td.removeChild(button);
    }
    td.appendChild(br);
    td.appendChild(input);
    td.appendChild(button);
}
</script>
</html>