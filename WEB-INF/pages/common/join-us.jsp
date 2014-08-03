<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>加入格物-格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

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
  <div class="our-quotes">
    <div class="our-quotes-wrapper">
	  <div class="text">
	  <h1>加入格物学院</h1>
	  <p class="desc">如果有机会使得教育更加开放，公平，富有效率，为什么不这样做呢！</p>
	  <p>格物学院是一个小小的团队，理想是给教育带来一点点积极地改变。</p>
	  <div>
	    <a type="button" class="btn btn-success" href="#open-jobs">查看职位</a>
	  </div>
	  </div>
	  <div>
	    <img src="<%=ctx%>/img/joinus.png" alt="logo">
	  </div>
	</div>
  </div>
  <div id="open-jobs">
    <div class="open-jobs-label">开放职位</div>
	<div>
	  <div class="col-sm-6 col-md-4 col-lg-3 ">
          <div class="thumbnail">
            <s:a action="index_houduan" namespace="/front" target="_blank">
			  <img src="<%=ctx%>/img/web-dev.png" width="300" height="150" alt="Web developers">
			</s:a>
            <div class="">
              <h4> 
                <s:a action="index_houduan" namespace="/front" cssClass="job-des" target="_blank">后端开发工程师</s:a>
              </h4>
              <p>
              实现稳定可扩展的后台服务，不断对后台进行改善，完成产品的快速迭代。
              </p>
            </div>
          </div>
        </div>
		<div class="col-sm-6 col-md-4 col-lg-3 ">
          <div class="thumbnail">
            <s:a  action="index_qianduan" namespace="/front" target="_blank">
			  <img src="<%=ctx%>/img/web-dev.png" width="300" height="150" alt="Web developers">
			</s:a>
            <div class="">
              <h4> 
                <s:a  action="index_qianduan" namespace="/front" cssClass="job-des" target="_blank">前端开发工程师</s:a>
              </h4>
              <p>
              负责用户界面的交互开发，并对现有产品进行改进，持续完善高性能可复用的前端组件。
              </p>
            </div>
          </div>
        </div>
		<div class="col-sm-6 col-md-4 col-lg-3 ">
          <div class="thumbnail">
            <s:a action="index_job_neirong" namespace="/front" target="_blank">
			  <img src="<%=ctx%>/img/neirong.jpg" width="300" height="160" alt="内容策划">
			</s:a>
            <div class="">
              <h4> 
                <s:a action="index_job_neirong" namespace="/front" cssClass="job-des" target="_blank">内容策划</s:a>
              </h4>
              <p>
              负责学院课程的生产渠道，扩展课程的生产方式，丰富学院的课程，保证课程的质量。
              </p>
            </div>
          </div>
        </div>
		<div class="col-sm-6 col-md-4 col-lg-3 ">
          <div class="thumbnail">
            <s:a action="index_job_intern" namespace="/front" target="_blank">
			  <img src="<%=ctx%>/img/intern.png" width="300" height="160" alt="实习生">
			</s:a>
            <div class="">
              <h4> 
                <s:a action="index_job_intern" namespace="/front" cssClass="job-des" target="_blank">实习生</s:a>
              </h4>
              <p>
              如果认可在线教育，认可格物学院的价值观，有冒险精神，并且认为自己大有所为，那格物学院就是你的舞台。
              </p>
            </div>
          </div>
        </div>
	</div>
  </div>
</div>
<div style="clear:both;width:100%;">
		<div style="margin-top:0px;">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div> 


		  
	  
</body>
</html>
