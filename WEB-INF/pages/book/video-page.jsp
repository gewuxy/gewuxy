<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.ui.datepicker.js"></script> 


<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">


</head>
<body>
  <div class="modal fade" id="jubao-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">举报理由</h4>
      </div>
      <div class="modal-body">
	    <div class="jubao-options">
        <div class="radio">
		  <label>
			<input type="radio" name="optionsRadios" id="Radios-ad" value="1">
			广告等垃圾信息
		  </label>
		</div>
		<div class="radio">
		  <label>
			<input type="radio" name="optionsRadios" id="Radios-mute" value="2">
			内容诋毁他人，语言不友善
		  </label>
		</div>
		<div class="radio">
		  <label>
			<input type="radio" name="optionsRadios" id="Radios-not-helpful" value="3">
			内容没有帮助
		  </label>
		</div>
		<div class="radio">
		  <label>
			<input type="radio" name="optionsRadios" id="Radios-others" value="4" onclick="show-jubao-others(4)">
			其他
		  </label>
		</div>
		</div>
		<div class="jubao-others">
		<input type="text" class="jubao-others-reason" placeholder="请输入原因...">
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary">提交</button>
      </div>
    </div>
  </div>
</div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="flash-page">
    <div class="tutorial-wrap">
	  <div class="back-to-section">
		
		   <span class="glyphicon glyphicon-chevron-left"></span>
		  <s:a action="bookItem_list" namespace="/bookItem" style="text-decoration:none;width:100%">
					<s:param name="pid" value="pageModel.list[0].bookItem.parent.parent.id"> </s:param>
					<s:property value="pageModel.list[0].bookItem.parent.name" /></s:a>
		
	  </div>
	  <h3 class="tutorial-title"><s:property value="pageModel.list[0].bookItem.name" /></h3>
	  <div style="clear:both;">
	  <div  class="flash-box">
           <s:iterator value="pageModel.list">
	    <iframe width="100%" height="100%" src="<s:property value="videoFile.path"/>" 
		frameborder="1" webkitAllowFullScreen mozallowfullscreen allowfullscreen>
		</iframe>
		<div class="video-options">
	      <div class="dropdown" style="float:right;">
            <div class="dropdown-toggle share-video" data-toggle="dropdown">
			  <span class="glyphicon glyphicon-share"></span>分享
			</div>
			<ul class="dropdown-menu dropdown-menu-right">
			  <li><a href="#">分享到QQ空间</a></li>
			  <li><a href="#">分享到新浪微博</a></li>
			  <li><a href="#">分享到人人网</a></li>
			</ul>
		  </div>
		  <!--div style="float:right;"><a href="javascript:void(0);" class="report-video-problem">报告视频问题</a></div-->
	    </div>
          </s:iterator>
	  </div>
	  <div class="tutorial-nav">
	    <!--div  class="tutorial-nav-header">
		  <a href="#" class="tutorial-nav-header-item tutorial-mulu" style="background-color:white;">
		    <span class="glyphicon glyphicon-th-list"></span>
			 目录
		  </a>
		  <a href="#" class="tutorial-nav-header-item tutorial-tiwen">
		    <span class="glyphicon glyphicon-question-sign"></span>
			 提问
		  </a>
		</div-->
		<ul class="nav nav-pills tutorial-nav-header" role="tablist">
		  <li role="presentation" class="tutorial-nav-header-item tutorial-mulu active">
		    <a href="#"><span class="glyphicon glyphicon-th-list" style="padding-right:5px;"></span>目录</a>
		  </li>
		  <li role="presentation" class="tutorial-nav-header-item tutorial-tiwen">
		    <a href="#"><span class="glyphicon glyphicon-question-sign" style="padding-right:5px;"></span>提问</a>
		  </li>
		</ul>
		<div class="tutorial-nav-body">
		  <div class="tutorial-nav-content">
		    <ol class="tutorial-nav-content-list">
		      <s:iterator value="pageModel.list[0].bookItem.parent.children">
		      <li class="tutorial-nav-node">
					<s:a action="video_getByBookItemId" namespace="/video" cssClass="tutorial-tab-link" >
					  <span class="glyphicon glyphicon-adjust tutorial-nav-node-icon"></span>
                      <s:param name="bookItem.id" value="id"/> <s:property value="name" />
					</s:a>
			  </li>
			  </s:iterator>
		    </ol>
		    <div class="tutorial-nav-next">
			    <s:if test="pageModel.list[0].bookItem.parentNext.children.size()==0">
				
				  <div class="tutorial-nav-next-right" style="text-align:center;">
				   <div class="tutorial-nav-next-section-label">下一章</div>
				   <div class="tutorial-nav-next-title-label">没有了</div>
				  </div>
			   
			</s:if>
				<s:iterator value="pageModel.list[0].bookItem.parentNext.children" status="status" >
				<s:if test="#status.index== 0">
				<s:a action="video_getByBookItemId" namespace="/video" cssClass="tutorial-tab-link" 						style="text-align:center;">
                                <s:param name="bookItem.id" value="id"/> 
				  <div class="tutorial-nav-next-right">
				   <div class="tutorial-nav-next-section-label">下一节</div>
				   <div class="tutorial-nav-next-title-label"> <s:property value="pageModel.list[0].bookItem.parentNext.name" /></div>
				  </div>
				</s:a>
			    </s:if>
				</s:iterator>     
		    </div>
		  </div>
		  <div class="tutorial-nav-ask-questions" style="display:none">
		    <textarea class="ask-question-tab" placeholder="请输入问题描述"></textarea>
			<input id="add-question-button" type="button" class="btn btn-primary" value="提问">
		  </div>
		</div>
	  </div>
	  </div>
	</div>
  </div>
  
  <div style="margin-top:45px;visibility:hidden;">sorry to use you to adjust layout</div>
  <div class="tutorial-footer">
    <div class="tutorial-footer-container">
	  <div class="video-discussion">
	    <div class="video-feedback-block">
		  <div class="video-feedback">
		    <span class="glyphicon glyphicon-remove close"></span>
			<div class="feedback-questions">此课是否有帮助？</div>
			<div class="feedback-options">
			  <label for="answer-helpful">
			    <div class="option-box">
				  <input type="radio" class="feedback-option" id="answer-helpful" name="answer" data-answer-id="helpful">
				  视频讲地很清楚，对我有帮助
				</div>
			  </label>
			  <label for="answer-not-helpful">
			    <div class="option-box">
				  <input type="radio" class="feedback-option" id="answer-not-helpful" name="answer" data-answer-id="not-helpful">
				  视频讲的很好，但是不是我需要的
				</div>
			  </label>
			  <label for="answer-bad">
			    <div class="option-box">
				  <input type="radio" class="feedback-option" id="answer-bad" name="answer" data-answer-id="bad">
				  知识讲解不清楚，讲课质量差
				</div>
			  </label>
			</div>
		  </div>
		  <input id="send-feedback" type="button" class="btn btn-default" value="提交">
		</div>
		<div class="video-discussion-header">
		  <ul class="tabrow">
		    <li id="questions-tab-header" data-type="questions" class="tabitem selected">
			  <a href="javascript:void(0);">问题</a>
			</li>
			<li id="comments-tab-header" data-type="comments" class="tabitem">
			  <a href="javascript:void(0);">感谢</a>
			</li>
		  </ul>
		  <!--span class="discussion-list-sort">
		    <a data-value="1" class="selected" title="Most Voted" href="javascript:void(0);">最热门</a>
			<a data-value="2" title="Most Recently" href="javascript:void(0);">最新</a>"onClick="submit()"
		  </span-->
		</div>
		<div class="tab question-tab">
		  <div class="ask-question">
		    <div class="question-guidelines" style="display:none;">
			  提问题时尽量说明视频中的时间，如：
			  <p>在5:12，反函数是一个什么样的概念？</p><input id="userName" type="text" value="<s:property value="#session.user.username"/>" style="display:none"> </input>
			</div>
			<div class="question">
			<form >
			  <input id="videoId" type="text" value="<s:property value="pageModel.list[0].id"/>" style="display:none"> </input>
			  <textarea id="questionContent" name="content" class="discussion-text" tabindex="1" placeholder="点击提问"></textarea>
			  <div class="discussion-controls" style="display:none">
				<input id="tiwenjson" type="button" class="btn btn-primary discussion-submit" value="提问" >
				<a href="javascript:void(0);" class="discussion-cancel" tabindex="3" >取消</a>
			  </div>
			<form>
			</div>
		  </div>
		  <div class="questions">
		    <div class="question-list">
			 <s:action name="question_findByVideo" executeResult="true" namespace="/question"> 
   			 	<s:param name="question.video.id" ><s:property value="pageModel.list[0].id"/></s:param> 
  			 </s:action> 
			 
			</div>  
			<s:if test="pageModel.list[0].questions.size()>0">
			 <input id="moreQuestions" type="button" class="btn btn-primary more-questions" value="载入更多问题">
			</s:if>
		  </div>
		</div>
		<div class="tab comments-tab" style="display:none">
          <div class="post-feedback">
			<div class="feed-guidelines" style="display:none;">
			  我们将把您的谢意传递给老师
			</div>
			
			<div class="comment" style="padding-bottom:50px">
			  <textarea class="discussion-text" placeholder="传递我的谢意..."></textarea>
				<div class="discussion-controls" style="display:none">
				  <input type="button" class="btn btn-primary discussion-submit" value="评论">
				  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3" >取消</a>
				</div>
		    </div>
          </div>
		  <div class="comments">
			   <div class="discussion-list">
		  		<s:action name="thank_getByVideoId" executeResult="true" namespace="/thank"> 
   			 	<s:param name="thank.video.id" ><s:property value="pageModel.list[0].id"/></s:param> 
  			 	</s:action>
				
			  </div>
			<s:if test="pageModel.list[0].thanks.size()>0">
			<input id="moreThanks" type="button" class="btn btn-primary more-questions" value="载入更多">
			</s:if>
			
		  </div>
		</div>
	  <div class="discussion-guideline"></div>
	</div>
  </div>
  <div class="clear"></div>
  <p></p>
  <script>
$(document).ready(function(){
$(".tutorial-mulu").live('click',function(){
$(".tutorial-nav-content").css("display","block");
$(".tutorial-nav-ask-questions").css("display","none");
$(".tutorial-mulu").addClass("active");
$(".tutorial-tiwen").removeClass("active");
});

$(".tutorial-tiwen").live('click',function(){
$(".tutorial-nav-content").css("display","none");
$(".tutorial-nav-ask-questions").css("display","block");
$(".tutorial-mulu").removeClass("active");
$(".tutorial-tiwen").addClass("active");
});

$(".ask-question .discussion-text").live('click',function(){
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
$(".ask-question .question-guidelines").slideDown();
$(".ask-question .discussion-controls").css("display","block");
$(".ask-question .discussion-text").addClass("open");
$(".ask-question .discussion-text").attr("placeholder","");
}
});

$(".ask-question .discussion-cancel").live('click',function(){
$(".ask-question .question-guidelines").slideUp();
$(".ask-question .discussion-text").removeClass("open");
$(".ask-question .discussion-controls").css("display","none");
$(".ask-question .discussion-text").attr("placeholder","点击提问");
});

$(".close").live('click',function(){
$(".video-feedback-block").slideUp();
});
/*模板live监听
$(“.get_comment”).live(‘click’, function() {
var mid = $(this).attr(“mid”);
alert(mid);
});*/
//问题评论锚点滚动到回答问题处
$(".question .reply-options .discussion-reply").live('click',function(){
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
var id=$(this).parent().parent().parent().parent().parent().parent().parent().parent().attr("id");
var questioncommentid=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
var scroll_offset = $("#"+id+"> .add-answer").offset(); //得到pos这个div层的offset，包含两个值，top和left
$("#"+id+">.add-answer .discussion-controls").css("display","block");
$("#"+id+">.add-answer .discussion-text").addClass("open");
$("#"+id+">.add-answer .discussion-text").attr("placeholder","");
$("#"+questioncommentid+"> .replies-container").toggle();
$("html,body").animate({
scrollTop:scroll_offset.top-400 //让body的scrollTop等于pos的top，就实现了滚动
},50);
}
});

//回答评论锚点滚动到回答问题处
$(".answer .reply-options .discussion-reply").live('click',function(){
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
var id=$(this).parent().parent().parent().parent().parent().parent().parent().parent().parent().attr("id");
var answercommentid=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
var scroll_offset = $("#"+id+"> .add-answer").offset(); //得到pos这个div层的offset，包含两个值，top和left
$("#"+id+">.add-answer .discussion-controls").css("display","block");
$("#"+id+">.add-answer .discussion-text").addClass("open");
$("#"+id+">.add-answer .discussion-text").attr("placeholder","");
$("#"+answercommentid+"> .replies-container").toggle();
$("html,body").animate({
scrollTop:scroll_offset.top-400 //让body的scrollTop等于pos的top，就实现了滚动
},50);
}
});

$(".discussion-list-content .toggle-replies").live('click',function(){
var id=$(this).parent().parent().parent().parent().attr("id");
$("#"+id+".discussion-list-content .comment .replies-container").toggle();
}); 

$(".question .toggle-replies").live('click',function(){
var id=$(this).parent().parent().parent().attr("id");
$("#"+id+"> .replies-container").toggle();
});

$(".answer .toggle-replies").live('click',function(){
var id=$(this).parent().parent().parent().attr("id");
$("#"+id+"> .replies-container").toggle();
});

$(".comment .toggle-replies").live('click',function(){
var id=$(this).parent().parent().parent().attr("id");
$("#"+id+".comment .replies-container").toggle();
});

$(".suggest-modify-question").live('click',function(){
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
 var id=$(this).parent().parent().parent().parent().parent().parent().attr("id");
$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .reply-options").css("display","none");
$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block").css("display","block");
}
});

$(".question .comments-block .discussion-cancel").live('click',function(){
 var id=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .reply-options").css("display","table");
$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block").css("display","none");
});

$(".answer .comments-block .discussion-cancel").live('click',function(){
var id=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .reply-options").css("display","table");
$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block").css("display","none");
});

$(".show-answer-links .show-hidden-answers").live('click',function(){
var id=$(this).parent().parent().attr("id");
$("#"+id+">.hidden-answers").toggle();
if($("#"+id+">.hidden-answers").is(":hidden")){
 $("#"+id+">.show-answer-links >.show-hidden-answers"). text("显示全部回答"); 
}else{
$("#"+id+">.show-answer-links >.show-hidden-answers").text("收起回答");
}
});

$(".add-answer .discussion-text").live('click',function(){
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
var id=$(this).parent().parent().parent().attr("id");
$("#"+id+".add-answer .discussion-controls").css("display","block");
$("#"+id+".add-answer .discussion-text").addClass("open");
$("#"+id+".add-answer .discussion-text").attr("placeholder","");
}
});

$(".add-answer .discussion-controls .answer-cancel").live('click',function(){
var id=$(this).parent().parent().parent().parent().attr("id");
$("#"+id+".add-answer .discussion-controls").css("display","none");
$("#"+id+".add-answer .discussion-text").removeClass("open");
$("#"+id+".add-answer .discussion-text").attr("placeholder","回答这个问题");
});

$("#questions-tab-header").live('click',function(){
if($(".question-tab").is(":hidden")){
 $(".comments-tab"). hide(); 
 $(".question-tab"). show(); 
 $("#questions-tab-header"). addClass("selected"); 
 $("#comments-tab-header"). removeClass("selected");
}
});

$("#comments-tab-header").live('click',function(){
if($(".comments-tab").is(":hidden")){
 $(".question-tab"). hide(); 
 $(".comments-tab"). show();
 $("#questions-tab-header"). removeClass("selected"); 
 $("#comments-tab-header"). addClass("selected"); 
}
});

<<<<<<< HEAD
if($(".tutorial-nav-content-list").height()>430){
$(".tutorial-nav-content-list").css("overflow-y","scroll");
}

$(".post-feedback .comment .discussion-text").click(function(){
=======
$(".post-feedback .comment .discussion-text").live('click',function(){
>>>>>>> 50a4e04d3877630744547b16685783a0b8797395
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
$(".comments-tab .feed-guidelines").slideDown();
$(".post-feedback .comment .discussion-controls").css("display","block");
$(".post-feedback .comment .discussion-text").addClass("open");
$(".post-feedback .comment .discussion-text").attr("placeholder","");
}
});

$(".post-feedback .comment .discussion-cancel").live('click',function(){

$(".comments-tab .feed-guidelines").slideUp();
$(".post-feedback .comment .discussion-text").removeClass("open");
$(".post-feedback .comment .discussion-controls").css("display","none");
$(".post-feedback .comment .discussion-text").attr("placeholder","传递我的谢意...");
});

$(".comments .discussion-cancel").live('click',function(){
var id=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
$("#"+id+"> .replies-container").css("display","none");
});

//提问题
$("#tiwenjson").live('click',function(){
	  var params = {
        "video.id" : $("#videoId").val(),
        "content" : $("#questionContent").val()
      };
        $("#questionContent").val("");
	$(".ask-question .question-guidelines").slideUp();
	$(".ask-question .discussion-text").removeClass("open");
	$(".ask-question .discussion-controls").css("display","none");
	$(".ask-question .discussion-text").attr("placeholder","点击提问");

       $.ajax({
	    type: "POST",
        url: "../question/question_save.html",
        data:params,
	dataType:"json",
        success:function(data){ 
              var reply=$("#template").html().replace("whole0","whole"+data.question.id).replace("question0","question"+data.question.id).replace("quesitoncontent",data.question.content).replace("twoweeks",data.question.createTime).replace("answers0","answers"+data.question.id).replace("addanswer0","addanswer"+data.question.id).replace("questionuser",$("#userName").val());
              $(".question-list-content").prepend(reply);
        },
	error: function(data){
          alert("data=" + data.responseText);
          return false;
        }
        });
        
      });
//问题的评论
$(".question .comments-block .discussion-submit").live('click',function(){
	     
         var id=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
          var params = {
        "question.id" : $("#"+id+"> #questionId").val(),
        "content" : $("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block> .discussion-text").val()
      };
        $("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block> .discussion-text").val("");
	//输入框收起来
	$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .reply-options").css("display","table");
	$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block").css("display","none");
       //发送信息
       $.ajax({
	type: "POST",
        url: "../comment/comment_saveByQuestion.html",
        data:params,
	dataType:"json",
        success:function(data){ 
		
		var reply=$("#"+id+"> .replies-container> .replies-panel> .replies> #questioncommenttemplate").html().replace("questioncoment0","questioncoment"+data.comment.id).replace("questioncommentcontent",data.comment.content).replace("questioncommenttime",data.comment.createTime).replace("questioncommentuser",$("#userName").val());
              $("#"+id+"> .replies-container> .replies-panel> .replies").prepend(reply);
	      var num=new Number($("#"+id+"> .question-toolbar> .question-toolbar-item> #questioncommentsize").text());
	      //alert(num);
	      $("#"+id+"> .question-toolbar> .question-toolbar-item> #questioncommentsize").text(num+1);
        },
	error: function(data){
	       return false;
        }
        });
	
        
      });
//回答问题
$(".add-answer .answer .comments-block .discussion-submit").live('click',function(){
          var id=$(this).parent().parent().parent().parent().attr("id");
	  var answers=$("#"+id).prev().attr("id");
          var params = {
        "question.id" : $("#"+id+"> #questionId").val(),
        "content" : $("#"+id+"> .answer> .comments-block> .discussion-text").val()
      }; 
	
	//输入框清零
        $("#"+id+"> .answer> .comments-block> .discussion-text").val("");
	//输入框收起来
	$("#"+id+".add-answer .discussion-controls").css("display","none");
	$("#"+id+".add-answer .discussion-text").removeClass("open");
	$("#"+id+".add-answer .discussion-text").attr("placeholder","回答这个问题");
       
       //发送信息
       $.ajax({
	type: "POST",
        url: "../answer/answer_save.html",
        data:params,
	dataType:"json",
        success:function(data){ 
               var reply=$("#"+answers+">#answertemplate").html().replace("answer0","answer"+data.answer.id).replace("answercontent",data.answer.content).replace("answercreatetime",data.answer.createTime).replace("answeruser",$("#userName").val());
              $("#"+answers).prepend(reply);
        },
	error: function(data){
          alert("data=" + data.responseText);
          return false;
        }
        });
        
      });
//回答评论
$(".answers .answer .comments-block .discussion-submit").live('click',function(){
          var id=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
	  var params = {
        "answer.id" : $("#"+id+"> #answerId").val(),
        "content" : $("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item> .comments-block> .discussion-text").val()
      }; 
	//调试
 	//alert($("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item> .comments-block> .discussion-text").val());
	//输入框清零
       $("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item> .comments-block> .discussion-text").val("");
	//输入框收起来
	$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .reply-options").css("display","table");
	$("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item > .comments-block").css("display","none");
       
       //发送信息
      $.ajax({
	type: "POST",
        url: "../comment/comment_saveByAnswer.html",

        data:params,
	dataType:"json",
        success:function(data){ 
               var reply=$("#"+id+"> .replies-container> .replies-panel> .replies>#answercommenttemplate").html().replace("answercomment0","answercomment"+data.comment.id).replace("answercommentcontent",data.comment.content).replace("answercommentcreatetime",data.comment.createTime).replace("answercommentuser",$("#userName").val());
              $("#"+id+"> .replies-container> .replies-panel> .replies").prepend(reply);
	      var num=new Number($("#"+id+"> .question-toolbar> .question-toolbar-item> #answercommentsize").text());
	      //alert(num);
	      $("#"+id+"> .question-toolbar> .question-toolbar-item> #answercommentsize").text(num+1);
        },
	error: function(data){
          alert("data=" + data.responseText);
          return false;
        }
        });
        
      });
//发送感谢
$(".post-feedback .comment .discussion-submit").live('click',function(){
 var params = {
        "video.id" : $("#videoId").val(),
        "content" : $(".post-feedback .comment .discussion-text").val()
      };
	//调试用的
	//alert($("#videoId").val()+$(".post-feedback .comment .discussion-text").val());
        $(".post-feedback .comment .discussion-text").val("");
	$(".comments-tab .feed-guidelines").slideUp();
	$(".post-feedback .comment .discussion-text").removeClass("open");
	$(".post-feedback .comment .discussion-controls").css("display","none");
	$(".post-feedback .comment .discussion-text").attr("placeholder","传递我的谢意...");

      $.ajax({
	    type: "POST",
        url: "../thank/thank_save.html",
        data:params,
	dataType:"json",
        success:function(data){ 
              var reply=$(".comments-tab> .comments> .discussion-list> .discussion-list-content> #thanktemplate").html().replace("thank0","thank"+data.thank.id).replace("thankId0",data.thank.id).replace("thankcontent",data.thank.content).replace("thankcreatetime",data.thank.createTime).replace("thankusername",$("#userName").val());
              $(".comments-tab> .comments> .discussion-list> .discussion-list-content").prepend(reply);
        },
	error: function(data){
          alert("data=" + data.responseText);
          return false;
        }
        });
});
//发送感谢评论
$(".comments-tab .comments .comment  .discussion-submit").live('click',function(){
var user = $("#userName").val();
if(user==""){$("#sign-form").show({
		autoOpen: false,
		modal:true,
		show:"slide",
		hide:"slide"
		});
}
else{
 var id=$(this).parent().parent().parent().parent().parent().parent().parent().attr("id");
 var params = {
        "thank.id" : $("#"+id+"> #thankId").val(),
        "content" : $("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item> .comments-block> .discussion-text").val()
      };
	//调试用的
	//alert($("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item> .comments-block> .discussion-text").val());
        $("#"+id+"> .replies-container> .replies-panel> .add-reply> .discussion-item> .comments-block> .discussion-text").val("");

      $.ajax({
	    type: "POST",
        url: "../comment/comment_saveByThank.html",
        data:params,
	dataType:"json",
        success:function(data){ 
              var reply=$("#"+id+"> .replies-container> .replies-panel> .replies> #thankcommenttemplate").html().replace("thankcomentcontent",data.comment.content).replace("thankcommentcreatetime",data.comment.createTime).replace("thankcommentuser",$("#userName").val());
              $("#"+id+"> .replies-container> .replies-panel> .replies").prepend(reply);
	       var num=new Number($("#"+id+"> .question-toolbar> .question-toolbar-item> #thankcommentcount").text());
	      //alert(num);
	      $("#"+id+"> .question-toolbar> .question-toolbar-item> #thankcommentcount").text(num+1);
        },
	error: function(data){
          alert("data=" + data.responseText);
          return false;
        }
        });
}
});

//更多问题live(‘click’, function() {
$("#moreQuestions").live('click',function(){
var pageNo=new Number($("#pageNo").val())+1;
var pages=new Number($("#pages").val());
if(pageNo>pages){
alert("没有其他问题了!");
}else{
     var params = {
        "video.id" : $("#videoId").val(),
        "pageNo" : pageNo
      };
 
      $.ajax({
	    type: "POST",
        url: "../question/question_findByVideo.html",
 	data:params,
       	dataType:"html",
        success:function(data){ 
	  $(" .questions> .question-list").append(data);	
	  $("#pageNo").val(pageNo+1);
        },
	error: function(data){
          alert("data=" + data.responseText);

          return false;
        }
        });
}

});
//更多感谢
$("#moreThanks").live('click',function(){
var pageNo=new Number($("#thankpageNo").val())+1;
var pages=new Number($("#thankpages").val());

if(pageNo>=pages){
alert("没有其他感谢了!");
}else{
     var params = {
        "video.id" : $("#videoId").val(),
        "pageNo" : pageNo
      };
 
      $.ajax({
	    type: "POST",
        url: "../thank/thank_getByVideoId.html",
 	data:params,
       	dataType:"html",
        success:function(data){ 
	  $(".comments-tab> .comments> .discussion-list").append(data);	
	  $("#thankpageNo").val(pageNo+1);
        },
	error: function(data){
          alert("data=" + data.responseText);

          return false;
        }
        });
}

});
  });
</script>
<<<<<<< HEAD
<div style="clear:both;width:100%;">
		<div style="margin-top:-50px;">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div> 
=======

>>>>>>> 50a4e04d3877630744547b16685783a0b8797395
</body>
</html>
