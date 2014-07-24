﻿<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>给我们建议|格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

<script>

</script>

</head>

<body>
<div class="container">
     <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="body-wrapper">
    <div class="body-content-wrapper">
	  <div class="sidebar">
		  <ul class="nav nav-pills nav-stacked">
		    <li class="tab-about-us"><a href="/qianduan/about.jsp">关于我们</a></li>
			<li class="tab-join-us"><a href="javascript:;">加入我们</a></li>
			<li class="tab-faq"><a href="/qianduan/faq.jsp">常见问题</a></li>
			<li class="tab-advise active"><a href="javascript:;">给我们建议</a></li>
		  </ul>
	  </div>
	<div id="advise">
	  有任何建议，欢迎发送邮件到：<a href="mailto:2723728494@qq.com">2723728494@qq.com</a>
	</div>
	</div>
	<div style="clear:both;"></div>
  </div>
</div>
<div style="clear:both;width:100%;">
		<div style="margin-top:0px;">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div> 
</body>
</html>
