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
</head>

<body>
  
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  
<div class="book">
    <div class="row-fluid">
	  <div class="chapter" >
		<div class="subject-container">
		  <div class="chapter-info">
		    <div class="chapter-backto-subject">
			  <s:a cssClass="subject-link" action="book_findByName" namespace="/book">
					<s:param name="book.name" value="pageModel.list[0].book.name"></s:param>
				        <--返回<s:property value="pageModel.list[0].book.nickname" /></s:a>
			</div>			
            <h2 class="chapter-title"><s:property value="pageModel.list[0].parent.name" /></h2>
			<hr style="color:#333333;"/>
			<div class="subject-description"></div>
			</div><input id="coursetype" type="text" value="<s:property value="pageModel.list[0].book.course.name"/>" style="display:none"> </input>
		  </div>
		</div>
	  </div>
	<div class="content-lists">
       <s:iterator value="pageModel.list">
	  <div class="tutorial-container">
	    <div class="tutorial-overview">
		  <h3><s:property value="name"/></h3>
		  <div class="tutorial-description">
		    <s:property value="name" />
		  </div>
		</div>
		<div class="tutorial-contents">
		  <div class="contents-box">
		    <ul class="section-container">
                        <s:iterator value="children">
			 <s:a action="video_getByBookItemId" style="text-decoration:none" namespace="/video" >
			 <li class="section-item">
                                <s:param name="bookItem.id" value="id"/> 
			    <div class="section-item-icon">
				  <div class="pipe-bottom"></div>
				  <div class="pipe-top"></div>
				  <div class="video-item"><span class="glyphicon glyphicon-play-circle"> </span></div>
				  <div class="exercise-icon" style="display:none"><span class=""></span></div>
				</div>
				<span class="section-item-title"><s:property value="name" /></span>
			  </li></s:a>
			  
                         </s:iterator>
			</ul>
		  </div>
		</div>
	  </div>

	</s:iterator>  
	 
	</div>
  </div>
  </div>    
<hr />
<div style="clear:both;width:100%;">
		<div style="margin-top:-50px;">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div>  
<script>
$(document).ready(function(){
document.title=$(".chapter-title").text()+"-"+$(".subject-back").text()+"-格物学院";
if($(".content-lists").height()<$(window).height()-100){
$(".content-lists").height($(window).height()-100);
};
$(window).resize(function(){
  if($(".content-lists").height()<$(window).height()-100){
    $(".content-lists").height($(window).height()-100);
  }
});
//Chapters的底色
var type=$("#coursetype").val();
var shuxue="数学";
var yuwen="语文";
var yingyu="英语";
var wuli="物理";
var huaxue="化学";
var shengwu="生物";
var zhengzhi="政治";
var lishi="历史";
var dili="地理";
 if(type==shuxue){
 $(".book").css("background-color","#8080c0");
   }
else if(type==yuwen){
 $(".book").css("background-color","#90A0c0");
   }
else if(type==yingyu){
 $(".book").css("background-color","#9382e0");
   }
else if(type==wuli){
 $(".book").css("background-color","#99CC99");
   }
else if(type==huaxue){
 $(".book").css("background-color","#99FF99");
   }
else if(type==shengwu){
 $(".book").css("background-color","#66FF99");
   }
else if(type==zhengzhi){
 $(".book").css("background-color","#66CC33");
   }
else if(type==lishi){
 $(".book").css("background-color","#66CC66");
   }
else if(type==dili){
 $(".book").css("background-color","#66CC99");
   }
else{
 $(".book").css("background-color","#8080c0");
   }
});
</script>
</body>
</html>
