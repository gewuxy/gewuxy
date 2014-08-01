<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>重设密码|格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
</head>

<body>
  <div class="clearfix">
	<div class="col-md-12 column">
	  <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="reset-ps-container">
    <div class="reset-ps-wrapper">
	  <h1>格物学院</h1>
	  <p>我们将把重置密码的链接发送到您的邮箱。</p>
	  <!--如果邮箱不存在，返回提示-->
	  <div class="alert alert-danger reset-ps-failure" role="alert">
	  </div>
	  <form role="form" method="post">
	    <div class="form-group">
		  <div class="col-sm-12">
			<input type="email" class="form-control" placeholder="邮箱" autocomplete='on'>
		  </div>
		</div>
		<div class="form-group">
		  <div class="col-sm-12">
			<button type="submit" class="btn btn-success col-sm-12 reset-password">重置密码</button>
		  </div>
		</div>
	  </form>
	</div>
  </div>
  <div style="clear:both;width:100%;">
	<div style="margin-top:0px;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
<script>
$(document).ready(function(){
  if($(".reset-ps-container").height()<$(window).height()){
		$(".reset-ps-container").height($(window).height());
  }
$(".reset-ps-container").width($(document.body).outerWidth());
$(window).resize(function(){
	$(".reset-ps-container").width($(document.body).outerWidth());
	if($(".reset-ps-container").height()<$(window).height()){
		$(".reset-ps-container").height($(window).height());
	}
});

})
</script>  
</body>
</html>
