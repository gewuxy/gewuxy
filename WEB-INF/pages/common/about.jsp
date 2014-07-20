<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <title>格物</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Example of Fluid Layout with Bootstrap version 2.0 from w3cschool.cc">
    <meta name="author" content="">
</head>

<body >
<div class="container">
     <div class="row-fluid clearfix">
			<div class="col-md-12 column">
				<%@include file="/WEB-INF/pages/common/head.jsp"%>
			</div>
	</div>
	<div class="row clearfix">
	
		<div class="col-md-6 column">
			<h2>
				团队简介
			</h2>
			<p>
				<h4>只要知道去哪里，全世界人都会帮助你！<br />
我们是一个小小的公益创业团队。<br />
我们致力于利用互联网技术来帮助学生更好更快更强地学习；<br />
我们相信小小的团队也可以带来大大的不同。</h4>

			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
			<hr>
			<h2>
				团队使命
			</h2>
			<p>
				<h4>一方面，由于师资力量分配不均衡，许多学生没能够很好的接受教育；<br />
另一方面，更多地学生被单方面地灌输知识，一刀切的方式难以真正地尊重学生的个性。<br />
我们认为借助互联网技术，可以保证学生在教育中的主体地位，尊重学生的个性，让学生充分发挥自己的主观能动性去学习，去沟通，去碰撞出知识的火花。
				</h4>
				
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		
		</div>
		
	<div class="col-md-6 column" >
			<div class="jumbotron" style="background-image:url('<%=ctx%>/img/gewu.jpg');background-size:600px 500px;background-repeat:no-repeat;">
				<h1>
					格物
				</h1>
				<p>
					格物，意为探究事物的道理纠正人的行为，“格”在此有“穷究”之意。《礼记·大学》：“致知在格物，物格而后知至。” 格物致知，是中国古代儒家思想的一个重要概念，乃儒家专门研究“物之理”的学科，后失佚。格物为儒家认识论方法论的重要问题，三纲八目中“八目”之基石。
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
	</div>
	</div>
	
	
		<div class="row well" style="border-radius:15px;margin-top:20px;">
		<div class="page-header">
		<h2>创始人 </h2>
		</div>
		<div class="col-md-6 column">
			<div class="row " style="border-radius:15px;margin-top:20px;">
				<div class="col-md-6 column well ">
				<img src="<%=ctx%>/img/niaoxian.jpg" width="240px" height="380" alt="Story2">
				</div>
			<div class="col-md-4 column col-md-offset-1"><p>
				<h2>Zex</h2>12年获得中山大学物理科学与工程技术学院学士学位，此后曾任职于三星。
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>	
		</div>
		</div>
		<div class="col-md-6 column">
			<div class="row " style="border-radius:15px;margin-top:20px;">
				<div class="col-md-6 column well ">
				<img src="<%=ctx%>/img/niaoguo.JPG" width="240px" height="380" alt="Story2" >
				</div>
			<div class="col-md-4 column col-md-offset-1"><p>
				<h2>Qiug</h2>12年获得中山大学物理科学与工程技术学院学士学位，此后曾任职于三星。
			</p>
			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>	
		</div>
		</div>
		
		</div>
		
	
	<div class="row clearfix">
		<div class="col-md-12 column">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div>
</div>
</body>
</html>
