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
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">  
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
	<label for="headicon" class="col-sm-2 control-label">头像</label> 
	<a href="javascript:void(0);" id="myImage" alt="头像"><img src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:100px;height:100px;margin-left:2%" /></a> &nbsp&nbsp点击头像上传照片
	
  </div>
  <div class="form-group">
	<label for="nickname" class="col-sm-2 control-label">昵称</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="nickname" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="realname" class="col-sm-2 control-label">姓名</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="realname" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="gender" class="col-sm-2 control-label">性别</label>
	<div class="col-sm-6">
	<select name="gender" id="gender" class="form-control">
		<option value="none"> </option>
	    <option value="male">男</option>
		<option value="female">女</option>
	</select>
	</div>
  </div>
  <div class="form-group">
    <label for="birthday" class="col-sm-2 control-label">生日</label>
	<div class="col-sm-6">
	  <input type="date" id="birthday" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="school" class="col-sm-2 control-label">学校</label>
	<div class="col-sm-6">
	  <input type="text" id="school" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="advantage" class="col-sm-2 control-label">擅长科目</label>
	<div class="col-sm-6">
	  <input type="text" id="advantage" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <label for="bio" class="col-sm-2 control-label">一句话介绍</label>
	<div class="col-sm-6">
	  <input type="text" id="bio" class="form-control">
	</div>
  </div>
  <div class="form-group">
    <div style="margin-left:58%;">
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
<div id="upload-picture" role="dialog" class="modal fade" >
                <div class="modal-dialog" >
                  <div class="modal-content">
                    <div class="modal-body" >
                      <form role="form"  enctype="multipart/form-data" class="upload-form container-fluid" >
                        <div class="row btns">
                          <div class="col-xs-8">
                            <label class="btn-choose-file">选择照片
                              <input id="uploadfile" type="file" name="pic">			      
                            </label>
                          </div>
                          <div class="col-xs-4">
			    <input type="button" value="上传" id="sub_upload">
                            <input type="submit" value="确定" class="btn btn-ok">
                            <input type="button" value="取消" class="btn btn-cancel">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-xs-12"><span class="upload-tip">仅支持JPG, GIF, PNG格式，文件小于5M。</span></div>
                        </div>
                        <div class="row">
			
                          <div  id="target"  style="width:300px;height:300px;overflow:hidden; border:1px solid gray;display:inline;">
                            <img id="targetpic" src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:300px;height:300px;" />
                           
                          </div>
			
                          <div id="preview"  style="width:300px;height:300px;overflow:hidden;margin-left:320px;margin-top:-300px">
			 
                            <div><img id="previewpic" src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:150px;height:150px;"/>
                            </div>150x150像素
                         
                          <div style="width:100px;height:150px;margin-left:170px;display:block;margin-top:-170px">
                            <div ><img  id="previewpic1" src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:75px;height:75px;"/>
                            </div>75x75像素
                            <div ><img id="previewpic2" src="<%=request.getContextPath()%>/img/apple-touch-icon-144-precomposed.png" style="width:50px;height:50px;"/>
                            </div>50x50像素
			     </div>
			    </div>
                         
                        </div>
                      </form>
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
$("#sub_upload").click(function(){	
				var filename=$("#uploadfile").val();//待上传的文件，如“/www/data/index.php”等
				//判断上传文件格式
				  var suffixs=new Array(".jpg", ".jpeg", ".bmp", ".gif");
				  //截取上传文件格式
				  var fileType=filename.substring(filename.lastIndexOf('.'));	
				if(filename==""){
				  alert("请选择需要上传的图片");
				  return false;
				}else{
				 
				  //截取上传文件格式
				   if($.inArray(fileType,suffixs)<=-1){
				    alert("图片格式错误");
				    return false;
				  }else{
				    var	uploadUrl="../user/user_uploadPic?picFileName="+fileType;
				  //starting setting some animation when the ajax starts and completes
				$("#loading")
				.ajaxStart(function(){
					$(this).show();
				})
				.ajaxComplete(function(){
					$(this).hide();
				});
		
				/*
					prepareing ajax file upload
					url: the url of script file handling the uploaded files
				        fileElementId: the file type of input element id and it will be the index of  $_FILES Array()
					dataType: it support json, xml
					secureuri:use secure protocol
					success: call back function when the ajax complete
					error: callback function when the ajax failed
			
				*/
				    //异步上传
				    $.ajaxFileUpload({
				      url:uploadUrl,
				      secureuri:false,
				      fileElementId:"uploadfile",//上传id，这里是<input type="file" name="uploadfile" id="file"/>
				      dataType:'json',
				      success:function(data){
					  if(data.imageMessage=="文件过大"){
					  alert("文件过大");
					}else if(data.imageMessage=="文件上传失败"){
					  alert("文件上传失败!");
					}
					else {
						$("#targetpic").src(<%=request.getContextPath()%>/img/data.uploadFile.path);
					}
				
				      },
				      error:function(){
					alert("异步失败");
				      }
				    });
				  }
				}
      			});
			
		});
    </script>
</body>
</html>

