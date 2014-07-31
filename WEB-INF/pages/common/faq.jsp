<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>常见问题|格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">

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
			<li class="tab-faq active">
			  <s:a action="index_faq" namespace="/front">常见问题</s:a>
			</li>
			<li class="tab-advise">
			  <s:a action="index_advise" namespace="/front">给我们建议</s:a>
			</li>
		  </ul>
	  </div>
	  <div id="faq">
	    <h2 class="faq-title">常见问题</h2>
	    <ul class="faq-questions">
		  <li><a href="#how-to-make-tutorials">格物学院如何制作课件？</a></li>
		  <li><a href="#tutorial-time">格物学院每一节课多久合适？</a></li>
		  <li><a href="#tutorial-tools">我没有ipad，可以制作课件吗？</a></li>
		  <li><a href="#how-to-upload-tutorials">我要如何才能把课件上传到格物学院上？</a></li>
		  <li><a href="#gewu-app">格物学院有Android，iOS应用吗？</a></li>
	  </ul>
	  
	  <h3 id="how-to-make-tutorials" class="question">格物学院如何制作课件？</h3>
	  <p class="answer">
        格物学院的课件制作采用educreations，showme等ipad白板制作工具，这种方式的好处是，
		一方面老师可以边讲解边写写划划加以解释，且课件制作简单快捷；
		另一方面，在授课时写划的方式，可以使得学生更加集中注意力跟随老师的节奏去思考。
      </p>
	  
	  <h3 id="tutorial-time" class="question">格物学院每一节课多久合适？</h3>
	  <p class="answer">
        出于学生碎片化学习的考虑，我们一般把时间限制为十几分钟以内，我们也强烈建议老师们在制作课件时采纳这一时长限制。
      </p>
	  
	  <h3 id="tutorial-tools" class="question">我没有ipad，可以制作课件吗？</h3>
	  <p class="answer">
        可以的，educreations同样提供了网页版的课件制作方式，您只需要制作更加详细的ppt，然后保存为图片，用电脑登录educreations的网站即可录制课件。
      </p>
	  
	  <h3 id="how-to-upload-tutorials" class="question">我要如何才能把课件上传到格物学院上？</h3>
	  <p class="answer">
        首先使用educreations，showme等课件制作工具，录制好视频，然后把视频的分享地址，以及其所属科目，年级，章节，标题发送到2723728494@qq.com，
		第二天您就可以在相应的目录下看到您的视频
      </p>
	  
	  <h3 id="gewu-app" class="question">格物学院有Android，iOS应用吗？</h3>
	  <p class="answer">
        格物学院暂时并无移动应用，以后开发出来时将第一时间通知大家。
      </p>
	  
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
