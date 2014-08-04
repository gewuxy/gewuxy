<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<title></title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
$(document).ready(function(){
document.title=$(".subject-title").text()+"-格物学院";
if($(".right").height()<$(window).height()-100){
$(".right").height($(window).height()-100);
};
$(window).resize(function(){
  if($(".right").height()<$(window).height()-100){
    $(".right").height($(window).height()-100);
  }
});
});
</script>
</head>

<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <!--div  class="external-styles-missing"
        style='background: #f2dede;font:bold 20px Arial, Helvetica;text-align:center'>
        <p>oooohps!格物学院提出了一个问题</p>
        <p>请确保网络畅通哦！或者再刷新一下下，o(∩_∩)o</p>
  </div-->
  
  <div class="book">
    <div class="row-fluid" >
	  <div class="left">
		<div class="subject-container">
		<s:iterator value="pageModel.list">
		  <div class="subject-info">
			<h1 class="subject-title"><s:property value="nickname" /></h1>
			<hr style="color:#333333;"/>
			<div class="subject-description"><s:property value="desc" /></div>
		  </div>
		  </s:iterator>
		</div>
	  </div>
	  <div class="right">
	  <ul>
	   <hr color=#de3456/>
		<s:iterator value="pageModel.list[0].bookItems">
		<s:if test="level==1">
                 <s:a action="bookItem_list" namespace="/bookItem" style="text-decoration:none;width:100%;">
				 <li class="section" >
					<s:param name="pid" value="id"> </s:param>
		<span class="glyphicon glyphicon-adjust tutorial-nav-node-icon"></span><s:property value="name" />
		</li></s:a>
		<hr color=#de3456/>
		</s:if>
		</s:iterator>
	  </ul>
	 
	</div>
	</div>
  </div>
  
  <hr />
  <div style="clear:both;width:100%;">
		<div style="margin-top:-70px;">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div>  
</body>
</html>
