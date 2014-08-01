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

</head>

<body>
  <div class="clearfix">
	<div class="col-md-12 column">
	  <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="reset-ps-container">
    
  </div>
  <div style="clear:both;width:100%;">
	<div style="margin-top:0px;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div> 
</body>
</html>
