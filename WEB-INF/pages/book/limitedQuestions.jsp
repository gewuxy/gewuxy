<%@page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<div class="question-list-content">
			  <!--问题模板-->
			  <div id="template" style="display:none">
			  <div class="thread" id="whole0" style="padding-bottom:60px" >
				  <div class="question discussion-item" name="questionId" id="question0">
				    <div class="question-content" name="question-content">quesitoncontent</div>
					<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个同问</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="顶起，我有同样的问题；顶起后问题有新回答我们将通知您

" data-vote-type="1"></span>
						<span class="toolbar-item-separator">•</span>
						<a class="toggle-replies show-replies" href="javascript:void(0);" title="添加回答或者申请修改问题">0个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div class="dropdown" style="display:inline;">
						  <div class="dropdown-toggle" data-toggle="dropdown" style="display:inline;"><a href="javascript:void(0);">分享

</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a href="#" class="jubao-mute-question" data-toggle="modal" data-target="#jubao-form">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a href="javascript:void(0);" class="question-time" title="2014-7-1 15:36">twoweeks</a>
						<a href="javascript:void(0);" class="author-nickname" data-user-id="">
						  <img class="author-avatar" src="/img/favicon.png">questionuser
						</a>
					  </div>
					</div>
					<div class="replies-container" style="display:none;">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div class="reply-options" style="display:table;">
							  <div>
							    <input type="button" class="btn btn-primary discussion-reply" value="回答问题">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea class="suggest-modify-question-dummy" placeholder="建议修改问题..."></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display:none">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" class="btn btn-primary discussion-submit" value="评论">
							  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3">取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
				  </div>
				  <div class="answers" id="answers0">
					  <div class="show-answer-links">
						<a href="javascript:void(0);" class="show-hidden-answers">显示全部回答</a>
						<!--span class="discussion-meta-separator">•</span>
						<a href="javascript:void(0);" class="show-answer-form">
                                我要回答
                        </a-->
                      </div>
					  <div class="hidden-answers" style="display:none">
						<div class="answer  discussion-item" data-question-key="">
					  <div class="item-separator"></div>
						<div class="discussion-content">
						  这是个好问题，能够提出这样的问题说明你非常认真的思考，以后有望成为接触的科学家哦
						</div>
						<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="答案很好，顶上去让大家看到" data-vote-

type="1"></span>
						<span class="vote-num">5个踩</span>
						<span class="question-vote-down glyphicon glyphicon-arrow-down" title="答非所问或者回答的不好" data-vote-type="-

1"></span>
						<span class="toolbar-item-separator">•</span>
						<a class="toggle-replies show-replies" href="javascript:void(0);" title="">4个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div class="dropdown" style="display:inline;">
						  <div class="dropdown-toggle" data-toggle="dropdown" style="display:inline;"><a href="javascript:void(0);">分享

</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a href="#" class="jubao-mute-question" data-toggle="modal" data-target="#jubao-form">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a href="javascript:void(0);" class="question-time" title="2014-7-1 15:36">两个星期前</a>
						<a href="javascript:void(0);" class="author-nickname" data-user-id="">
						  <img class="author-avatar" src="/img/favicon.png">Zex
						</a>
					  </div>
					</div>
						<div class="discussion-controls" style="display: none">
						  <a href="#" class="discussion-cancel" tabindex="3">Cancel</a>
						  or
						  <input class="simple-button primary discussion-submit" type="button" value="Edit this answer" tabindex="2">
						</div>
						<div class="replies-container" style="display:none;">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
						  <div class="discussion-item reply" id="">
						    <div class="discussion-content">
							  你的回答真好
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span class="question-time" title="2014-8-17 16:30">一个月前</span>
								<a class="author-nickname" data-user-id="" href="#">
								  <img class="author-avatar" src="/img/favicon.png">Zex
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div>
						</div>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    
							<div class="comments-block">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" class="btn btn-primary discussion-submit" value="评论">
							  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3">取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
					  </div>
					  </div>
					</div>
				    <div class="add-answer" style="" id="addanswer0">
					  <div class="answer">
						<input type="hidden" name="question-key" value="">
						<div class="comments-block">
							<textarea class="discussion-text" placeholder="回答这个问题..."></textarea>
							<div class="discussion-controls" style="display:none;">
							  <input type="button" class="btn btn-primary discussion-submit" value="回答">
							  <a href="javascript:void(0);" class="answer-cancel" tabindex="3">取消</a>
							</div>
						</div>
					  </div>
					</div>
				</div>
				</div><input id="pageNo" type="text" value="1" style="display:none"> </input>
  <input id="pages" type="text" value="<s:property value="pageModel.pages"/>" style="display:none"> </input>
			 <!--问题模板的结尾-->
			  <s:iterator value="pageModel.list">
			    <div class="thread" id="whole<s:property value="id"/>" style="padding-bottom:60px">
				  <div class="question discussion-item"   id="question<s:property value="id"/>">
                                        <input id="questionId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
				    <div class="question-content" name="question-content"><s:property value="content"/></div>
					<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个同问</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="顶起，我有同样的问题；顶起后问题有新回答我们将通知您" data-vote-type="1"></span>
						<span class="toolbar-item-separator">•</span>
						<span id="questioncommentsize"><s:property value="comments.size()"/></span><a  class="toggle-replies show-replies" href="javascript:void(0);" title="添加回答或者申请修改问题">个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div class="dropdown" style="display:inline;">
						  <div class="dropdown-toggle" data-toggle="dropdown" style="display:inline;"><a href="javascript:void(0);">分享</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a href="#" class="jubao-mute-question" data-toggle="modal" data-target="#jubao-form">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a href="javascript:void(0);" class="question-time" title="2014-7-1 15:36"><s:date name="createTime" format="yyyy-MM-dd" /></a>
						<a href="javascript:void(0);" class="author-nickname" data-user-id="">
						  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
						</a>
					  </div>
					</div>
					<div class="replies-container" style="display:none;">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
						<!--问题评论的模板-->
					    <div id="questioncommenttemplate" style="display:none">
						<div id="questioncoment0" class="discussion-item reply">
						    <div class="discussion-content">
							  questioncommentcontent
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span title="2014-8-17 16:30" class="question-time">questioncommenttime</span>
								<a href="#" data-user-id="" class="author-nickname">questioncommentuser
								  <img src="/img/favicon.png" class="author-avatar">
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div>
</div>
 						<!--问题评论的模板结尾--><s:iterator value="comments"  >
						  <div class="discussion-item reply" id="questincoment<s:property value="id"/>">
						    <div class="discussion-content" >
							  <s:property value="content"/>
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span class="question-time" title="2014-8-17 16:30"><s:date name="createTime" format="yyyy-MM-dd" /></span>
								<a class="author-nickname" data-user-id="" href="#">
								  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr/></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div class="reply-options" style="display:table;">
							  <div>
							    <input type="button" class="btn btn-primary discussion-reply" value="回答问题">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea class="suggest-modify-question-dummy" placeholder="建议修改问题..."></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display:none">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" class="btn btn-primary discussion-submit" value="评论">
							  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3" >取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
				  </div>
				  <div class="answers" id="answers<s:property value="id"/>">
				<!--问题回答的模板-->
				<div id="answertemplate" style="display:none">
<span class="discussion-meta-separator"><hr></span>
<div id="answer0" data-question-key="" class="answer  discussion-item">
					  <div class="item-separator"></div>
						<div class="discussion-content">
						 answercontent
						</div>
						<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span data-vote-type="1" title="答案很好，顶上去让大家看到" class="question-vote-up glyphicon glyphicon-arrow-up"></span>
						<span class="vote-num">5个踩</span>
						<span data-vote-type="-1" title="答非所问或者回答的不好" class="question-vote-down glyphicon glyphicon-arrow-down"></span>
						<span class="toolbar-item-separator">•</span>
						<a title="" href="javascript:void(0);" class="toggle-replies show-replies">0个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div style="display:inline;" class="dropdown">
						  <div style="display:inline;" data-toggle="dropdown" class="dropdown-toggle"><a href="javascript:void(0);">分享</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a data-target="#jubao-form" data-toggle="modal" class="jubao-mute-question" href="#">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a title="2014-7-1 15:36" class="question-time" href="javascript:void(0);">answercreatetime</a>
						<a data-user-id="" class="author-nickname" href="javascript:void(0);">
						  <img src="/img/favicon.png" class="author-avatar">answeruser
						</a>
					  </div>
					</div>
						<div style="display: none" class="discussion-controls">
						  <a tabindex="3" class="discussion-cancel" href="#">Cancel</a>
						  or
						  <input type="button" tabindex="2" value="Edit this answer" class="simple-button primary discussion-submit">
						</div>
						<div style="display: none;" class="replies-container">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
						  <div id="" class="discussion-item reply">
						    <div class="discussion-content">
							 鸟先是错打
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span title="2014-8-17 16:30" class="question-time">2005-04-02</span>
								<a href="#" data-user-id="" class="author-nickname">
								  <img src="/img/favicon.png" class="author-avatar">geWu
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div>
						  <div id="" class="discussion-item reply">
						    <div class="discussion-content">
							 鸟先是错打2
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span title="2014-8-17 16:30" class="question-time">2005-04-02</span>
								<a href="#" data-user-id="" class="author-nickname">
								  <img src="/img/favicon.png" class="author-avatar">geWu
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div>
						</div><span class="discussion-meta-separator"><hr></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    
							<div class="comments-block">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" value="评论" class="btn btn-primary discussion-submit">
							  <a tabindex="3" class="discussion-cancel" href="javascript:void(0);">取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
					  </div>
</div>
				<!--问题回答的模板结尾-->
                                <s:iterator value="answers" status="st" ><s:if test="#st.index<=2">  <span class="discussion-meta-separator"><hr/></span>
					<div class="answer  discussion-item" data-question-key="" id="answer<s:property value="id"/>">
					<input id="answerId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
					  <div class="item-separator"></div>
						<div class="discussion-content">
						  <s:property value="content"/>
						</div>
						<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="答案很好，顶上去让大家看到" data-vote-type="1"></span>
						<span class="vote-num">5个踩</span>
						<span class="question-vote-down glyphicon glyphicon-arrow-down" title="答非所问或者回答的不好" data-vote-type="-1"></span>
						<span class="toolbar-item-separator">•</span><span id="answercommentsize"><s:property value="comments.size()"/></span>
						<a class="toggle-replies show-replies" href="javascript:void(0);" title="">个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div class="dropdown" style="display:inline;">
						  <div class="dropdown-toggle" data-toggle="dropdown" style="display:inline;"><a href="javascript:void(0);">分享</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a href="#" class="jubao-mute-question" data-toggle="modal" data-target="#jubao-form">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a href="javascript:void(0);" class="question-time" title="2014-7-1 15:36"><s:date name="createTime" format="yyyy-MM-dd" /></a>
						<a href="javascript:void(0);" class="author-nickname" data-user-id="">
						  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
						</a>
					  </div>
					</div>
						
						<div class="replies-container" style="display:none;">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
						<!--回答的评论模板-->
						<div id="answercommenttemplate" style="display:none">
						<div id="answercomment0" class="discussion-item reply">
						    <div class="discussion-content">
							 answercommentcontent
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span title="2014-8-17 16:30" class="question-time">answercommentcreatetime</span>
								<a href="#" data-user-id="" class="author-nickname">
								  <img src="/img/favicon.png" class="author-avatar">answercommentuser
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div>
</div>
						<!--回答的评论模板结尾-->
						<s:iterator value="comments">
						  <div class="discussion-item reply" id="answecomment<s:property value="id"/>" >
						    <div class="discussion-content">
							 <s:property value="content"/>
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span class="question-time" title="2014-8-17 16:30"><s:date name="createTime" format="yyyy-MM-dd" /></span>
								<a class="author-nickname" data-user-id="" href="#">
								  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr/></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div style="display:table;" class="reply-options">
							  <div>
							    <input type="button" value="回答问题" class="btn btn-primary discussion-reply">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea placeholder="建议修改回答..." class="suggest-modify-question-dummy"></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display: none">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" class="btn btn-primary discussion-submit" value="评论">
							  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3" >取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
					  </div></s:if></s:iterator>
					<s:if test="answers.size()>3">
					  <div class="show-answer-links">
						<a href="javascript:void(0);" class="show-hidden-answers">显示全部回答</a>
						<!--span class="discussion-meta-separator">•</span>
						<a href="javascript:void(0);" class="show-answer-form">
                                我要回答
                        </a-->
                      </div></s:if>
					  <div class="hidden-answers" style="display:none">
						<s:iterator value="answers" status="st" ><s:if test="#st.index>2">  <span class="discussion-meta-separator"><hr/></span>
					<div class="answer  discussion-item" data-question-key="" id="answer<s:property value="id"/>">
					<input id="answerId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
					  <div class="item-separator"></div>
						<div class="discussion-content">
						  <s:property value="content"/>
						</div>
						<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="答案很好，顶上去让大家看到" data-vote-type="1"></span>
						<span class="vote-num">5个踩</span>
						<span class="question-vote-down glyphicon glyphicon-arrow-down" title="答非所问或者回答的不好" data-vote-type="-1"></span>
						<span class="toolbar-item-separator">•</span><span id="answercommentsize"><s:property value="comments.size()"/></span>
						<a class="toggle-replies show-replies" href="javascript:void(0);" title="">个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div class="dropdown" style="display:inline;">
						  <div class="dropdown-toggle" data-toggle="dropdown" style="display:inline;"><a href="javascript:void(0);">分享</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a href="#" class="jubao-mute-question" data-toggle="modal" data-target="#jubao-form">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a href="javascript:void(0);" class="question-time" title="2014-7-1 15:36"><s:date name="createTime" format="yyyy-MM-dd" /></a>
						<a href="javascript:void(0);" class="author-nickname" data-user-id="">
						  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
						</a>
					  </div>
					</div>
						
						<div class="replies-container" style="display:none;">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
						<!--回答的评论模板-->
						<div id="answercommenttemplate" style="display:none">
						<div id="answercomment0" class="discussion-item reply">
						    <div class="discussion-content">
							 answercommentcontent
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span title="2014-8-17 16:30" class="question-time">answercommentcreatetime</span>
								<a href="#" data-user-id="" class="author-nickname">
								  <img src="/img/favicon.png" class="author-avatar">answercommentuser
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div>
</div>
						<!--回答的评论模板结尾-->
						<s:iterator value="comments">
						  <div class="discussion-item reply" id="answecomment<s:property value="id"/>" >
						    <div class="discussion-content">
							 <s:property value="content"/>
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span class="question-time" title="2014-8-17 16:30"><s:date name="createTime" format="yyyy-MM-dd" /></span>
								<a class="author-nickname" data-user-id="" href="#">
								  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
								</a>
							  </div>
							</div>
							<div class="item-separator"></div>
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr/></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div style="display:table;" class="reply-options">
							  <div>
							    <input type="button" value="回答问题" class="btn btn-primary discussion-reply">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea placeholder="建议修改回答..." class="suggest-modify-question-dummy"></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display: none">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" class="btn btn-primary discussion-submit" value="评论">
							  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3" >取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
					  </div></s:if></s:iterator>
					  </div>
					</div>
				    <div class="add-answer" style="" id="addanswer<s:property value="id"/>">
					<input type="text" style="display:none" value="<s:property value="id"/>" id="questionId">
					  <div class="answer">
						<input type="hidden" name="question-key" value="">
						<div class="comments-block">
							<textarea class="discussion-text" placeholder="回答这个问题..."></textarea>
							<div class="discussion-controls" style="display:none;">
							  <input type="button" class="btn btn-primary discussion-submit" value="回答">
							  <a href="javascript:void(0);" class="answer-cancel" tabindex="3" >取消</a>
							</div>
						</div>
					  </div>
					</div>
				</div></s:iterator>
			  </div>

