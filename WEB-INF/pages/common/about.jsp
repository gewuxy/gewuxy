<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>关于我们|格物学院</title>
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
		    <li class="tab-about-us active"><a href="javascript:;">关于我们</a></li>
			<li class="tab-join-us"><a href="javascript:;">加入我们</a></li>
			<li class="tab-faq"><a href="/qianduan/faq.jsp">常见问题</a></li>
			<li class="tab-advise"><a href="/qianduan/advise.jsp">给我们建议</a></li>
		  </ul>
	  </div>
	  <div id="about-us">
		  <div class="about-body">
		    <h2 id="about-our-team">团队简介</h2>
			<p>
			  只要知道去哪里，全世界人都会帮助你！
				我们是一个小小的公益创业团队。
				我们致力于利用互联网技术来帮助学生更好更快更强地学习；
				我们相信小小的团队也可以带来大大的不同。
            </p>
			<h2 id="about-our-team">团队使命</h2>
			<p>
			  一方面，师资力量分配是不均衡的，许多学生没能够很好的接受教育；
			  另一方面，更多地学生被单方面地灌输知识，一刀切的方式难以真正地尊重学生的个性。
			  我们认为借助互联网技术，可以保证学生在教育中的主体地位，尊重学生的个性，
			  让学生充分发挥自己的主观能动性去学习，去沟通，去碰撞出知识的火花。
            </p>
			<h2 id="our-team-members">团队成员</h2>
			<ul class="team-members">
			  <li>
			    <span class="member-container">
			    <img src="img/zex.jpg" alt="Zex" width="150" height="200">
				<h4>罗泽贤</h4>
				</span>
			  </li>
			  <li><span class="member-container">
			    <img src="" alt="李求果" width="150" height="200">
				<h4>李求果</h4></span>
			  </li>
			</ul>
			<h2 id="support">联系我们</h2>
			<p>
            不管您是学生，还是老师，家长，抑或是其他身份，关于我们的网站，我们的内容，抑或是其他的问题，建议，欢迎发送邮件到：
		    <a href="mailto:2723728494@qq.com">2723728494@qq.com</a>
			</p>
		  </div>
		<div class="clear"></div>
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
