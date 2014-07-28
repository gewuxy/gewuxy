<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>基本资料-设置-格物学院</title>

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
    <script type="text/javascript">
      jQuery(function(){
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
    </script>
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
    <form class="form-horizontal" role="form">
  <div class="form-group">
	<label for="headicon" class="col-sm-2 control-label">头像：</label>
	<img src="" style="width:100px;height:100px;"/>
	<div style="display:inline-block">
	  <input name="imgfile" type="file" accept="image/gif,image/jpeg,image/png">
	  <div>支持 JPG、PNG、GIF 格式，不要超过 2M </div>
	</div>
  </div>
  <div class="form-group">
	<label for="nickname" class="col-sm-2 control-label">昵称：</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="nickname" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="realname" class="col-sm-2 control-label">姓名：</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="realname" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="gender" class="col-sm-2 control-label">性别：</label>
	<div class="col-sm-6">
	<select name="gender" id="gender" class="form-control">
		<option value="none"> </option>
	    <option value="male">男</option>
		<option value="female">女</option>
	</select>
	</div>
  </div>
  <div class="form-group">
    <label for="birthday" class="col-sm-2 control-label">生日：</label>
	<div class="col-sm-6">
	  <input type="text" id="date-picker" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="school" class="col-sm-2 control-label">学校：</label>
	<div class="col-sm-6">
	  <input type="text" id="school" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="advantage" class="col-sm-2 control-label">擅长科目：</label>
	<div class="col-sm-6">
	  <input type="text" id="advantage" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="bio" class="col-sm-2 control-label">一句话介绍：</label>
	<div class="col-sm-6">
	  <input type="text" id="bio" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-7 col-sm-5">
      <button type="submit" class="btn btn-success">保存</button>
    </div>
  </div>
</form>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
</body>
</html>
