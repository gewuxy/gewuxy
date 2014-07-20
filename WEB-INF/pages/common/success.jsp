<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <title>格物</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Example of Fluid Layout with Bootstrap version 2.0 from w3cschool.cc">
    <meta name="author" content="">
</head>
<body>
<%@include file="/WEB-INF/pages/common/head.jsp"%> 
<table width=780 align="center"	>
<tr> 
<td height="39"><br>
<div align="center"><font color="#FF0000" size="+1"><b>注册成功，去邮箱认证</b></font></div>
</td>
</tr>
<tr>
<td height="315">
<s:property value="exception.message"/>
</a>
</td>
</tr>
<tr>
</tr>
</table>
<%@include file="/WEB-INF/pages/common/footer.jsp"%> 
</body>
</html>

