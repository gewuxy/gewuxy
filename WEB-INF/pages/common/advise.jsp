<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>给我们建议|格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append ¡®#!watch¡¯ to the browser URL, then refresh the page. -->
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/zex.jpg">
  
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>

<script>

</script>

</head>

<body>
<div class="container">
     <div class="clearfix">
			<div class="col-md-12 column">
				<%@include file="head.jsp"%>
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
<div class="clearfix">
		<div class="col-md-12 column">
			<%@include file="footer.jsp"%>
		</div>
  </div>
</body>
</html>
