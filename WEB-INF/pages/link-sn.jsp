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

</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="../head.jsp"%>
	</div>
  </div>
  <div style="width:760px;margin:0 auto;">
  <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation"><a href="/qianduan/settings/account.jsp">基本资料</a></li>
	  <li role="presentation"><a href="/qianduan/settings/password.jsp">密码</a></li>
	  <li role="presentation" class="active"><a href="#">社区绑定</a></li>
	  <li role="presentation"><a href="/qianduan/settings/email.jsp">邮件</a></li>
	</ul>
  <div style="height:20px"></div>
  <div class="settings-body">
    <h4 style="margin-bottom:30px;">绑定社区帐号，把最好的知识分享给最好的朋友</h4>
    <form action="account.jsp" method="POST" >
	  <div class="settings-info">
	    <div style="margin:10px;"><button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">绑定QQ帐号</button></div>
		<div style="margin:10px;"><button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">绑定新浪微博帐号</button></div>
	  </div>
	</form>
  </div>
  </div>
</body>
</html>