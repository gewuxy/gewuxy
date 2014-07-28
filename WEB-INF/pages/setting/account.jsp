<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>设置|格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<script src="//code.jquery.com/jquery-1.10.2.js"></script>

<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
<style>
</style>
    
</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div style="width:760px;margin:0 auto;">
    <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" class="active"><s:a action="user_account" namespace="/user">基本资料</s:a></li>
	  <li role="presentation"><s:a action="user_password" namespace="/user">密码</s:a></li>
	  <li role="presentation"><s:a action="user_linkSn" namespace="/user">社区绑定</s:a></li>
	  <li role="presentation"><s:a action="user_email" namespace="/user">邮件</s:a></li>
	</ul>
  <div style="height:20px"></div>
  <div class="settings-body">
    <form action="account.jsp" method="POST" >
	  <div class="settings-info">
	  
	    <div class="item-info">
		  <label for="headicon">头像：</label>
		  <a href="javascript:void(0);" id="myImage"><img  src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png"  style="width:100px;height:100px;" /></a> &nbsp&nbsp点击头像上传照片
		  </div> 
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="nickname">昵称：</label>
		  <input autocomplete="off"  name="nickname" id="nickname" required>
		  &nbsp&nbsp<strong style="color:red;font-size:18px;vertical-align:middle;">*</strong>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="realname">姓名：</label>
		  <input autocomplete="off"  name="realname" id="realname" required>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="sex">性别：</label>
		  <select  name="sex" id="sex" style="width:100px">
		    <option value="none"> </option>
			<option value="male">男</option>
		    <option value="female">女</option>
		  </select>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="birthday">生日：</label>
		  <input id="date-picker" type="text"/>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="school">学校：</label>
		  <input   name="school" id="school">
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="advantage">擅长科目：</label>
		  <input   name="advantage" id="advantage" style="width:200px;" placeholder="不同科目用空格隔开">
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="bio">一句话介绍自己：</label>
		  <input   name="bio" id="bio" style="width:300px;">
		</div>
		<hr style="line-height:50%;"/>
		
		<div style="margin:10px;"><button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">保存</button></div>
		<div style="height:20px;"></div>
	  </div>
	</form>
  </div>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>




<div id="upload-picture" role="dialog" class="modal fade" >
                <div class="modal-dialog" >
                  <div class="modal-content">
                    <div class="modal-body" >
                      <form role="form" action="/do_base64_avatar" method="post" enctype="multipart/form-data" class="upload-form container-fluid" >
                        <div class="row btns">
                          <div class="col-xs-8">
                            <label class="btn-choose-file">选择照片
                              <input type="file" name="tmp_avatar_file">
                            </label>
                          </div>
                          <div class="col-xs-4">
                            <input type="submit" value="确定" class="btn btn-ok">
                            <input type="button" value="取消" class="btn btn-cancel">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-xs-12"><span class="upload-tip">仅支持JPG, GIF, PNG格式，文件小于5M。</span></div>
                        </div>
                        <div class="row">
			
                          <div class="col-sm-6" id="target"  style="width:300px;height:300px;overflow:hidden; border:1px solid gray;">
                            <div class="big"><img  src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:300px;height:300px;" />
                            </div>
                          </div>
                          <div class="col-sm-6" id="preview"  style="width:300px;height:300px;overflow:hidden; border:1px solid gray;">
			 <div class="row">
                            <div class="col-sm-4"><img  src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:150px;height:150px;"/>
                            </div>150x150像素
                          
                          <div class="col-sm-2" style="width:100px;height:150px;overflow:hidden; border:1px solid gray;margin-left:200px;">
                            <div class="small"><img  src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:75px;height:75px;"/>
                            </div>75x75像素
                            <div class="smaller"><img  src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:50px;height:50px;"/>
                            </div>50x50像素
			     </div>
			    </div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
<script type="text/javascript">
 $(document).ready(function () {

      $(function(){
        $.datepicker.regional['zh-CN'] = {
          clearText: '清除',
          clearStatus: '清除已选日期',
          closeText: '关闭',
          closeStatus: '不改变当前选择',
          prevText: '<上月',
          prevStatus: '显示上月',
          prevBigText: '<<',
          prevBigStatus: '显示上一年',
          nextText: '下月>',
          nextStatus: '显示下月',
          nextBigText: '>>',
          nextBigStatus: '显示下一年',
          currentText: '今天',
          currentStatus: '显示本月',
          monthNames: ['一月','二月','三月','四月','五月','六月', '七月','八月','九月','十月','十一月','十二月'],
          monthNamesShort: ['一月','二月','三月','四月','五月','六月', '七月','八月','九月','十月','十一月','十二月'],
          monthStatus: '选择月份',
          yearStatus: '选择年份',
          weekHeader: '周',
          weekStatus: '年内周次',
          dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],
          dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],
          dayNamesMin: ['日','一','二','三','四','五','六'],
          dayStatus: '设置 DD 为一周起始',
          dateStatus: '选择 m月 d日, DD',
          dateFormat: 'yy-mm-dd',
          firstDay: 1,
          initStatus: '请选择日期',
          isRTL: false
        };
        $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
        $('#date-picker').datepicker({changeMonth:true,changeYear:true,yearRange:'1900:2014'});
      });

$("#myImage").click(function(){
				$("#upload-picture").modal();

				//alert("happddsf");
				//$(".sign-up-tab").trigger("click");
			});
		});
    </script>
</body>
</html>
