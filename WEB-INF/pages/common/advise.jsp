<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>给我们建议-格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">

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
		    <li class="tab-about-us">
			  <s:a action="index_about" namespace="/front">关于我们</s:a>
			</li>
			<li class="tab-join-us">
			 <s:a action="index_joinUs" namespace="/front">加入我们</s:a>
			</li>
			<li class="tab-faq">
			  <s:a action="index_faq" namespace="/front">常见问题</s:a>
			</li>
			<li class="tab-advise active">
			  <a href="javascript:;">给我们建议</a>
			</li>
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
