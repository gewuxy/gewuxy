<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>关于我们-格物学院</title>
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
		    <li class="tab-about-us active">
			  <a href="javascript:;">关于我们</a>
			</li>
			<li class="tab-join-us">
			  <s:a action="index_joinUs" namespace="/front">加入我们</s:a>
			</li>
			<li class="tab-faq">
			  <s:a action="index_faq" namespace="/front">常见问题</s:a>
			</li>
			<li class="tab-advise">
			  <s:a action="index_advise" namespace="/front">给我们建议</s:a>
			</li>
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
			    <img src="<%=request.getContextPath()%>/img/niaoxian.jpg" alt="Zex" width="150" height="200">
				<h4>罗泽贤</h4>
				</span>
			  </li>
			  <li><span class="member-container">
			    <img src="<%=request.getContextPath()%>/img/niaoguo.jpg" alt="李求果" width="150" height="200">
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
<div style="clear:both;width:100%;">
		<div style="margin-top:0px;">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div> 
</body>
</html>
