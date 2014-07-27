<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>设置|格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">

<style>
</style>
</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
       <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div style="width:760px;margin:0 auto;">
  <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation"><s:a action="user_account" namespace="/user">基本资料</s:a></li>
	  <li role="presentation" class="active"><s:a action="user_password" namespace="/user">密码</s:a></li>
	  <li role="presentation"><s:a action="user_linkSn" namespace="/user">社区绑定</s:a></li>
	  <li role="presentation"><s:a action="user_email" namespace="/user">邮件</s:a></li>
	</ul>
  <div style="height:20px"></div>
  <div class="settings-body">
    <form action="password.jsp" method="POST" >
	  <div class="settings-info">
	    <h4>修改您的登录密码</h4>
		<hr />
		<div class="item-info">
		  <label for="current-password">当前密码：</label>
		  <input  type="password" autocomplete=off name="current-password" id="current-password">
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="new-password">新密码：</label>
		  <input  type="password" autocomplete=off name="new-password" id="new-password">
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="new-password-confirm">确认新密码：</label>
		  <input  type="password" autocomplete=off name="new-password-confirm" id="new-password-confirm">
		</div>
		<hr style="line-height:50%;"/>
		<div style="margin:10px;"><button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">保存</button></div>
	  </div>
	</form>
  </div>
  </div>
</body>
</html>
