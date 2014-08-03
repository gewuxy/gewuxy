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
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.Jcrop.css" type="text/css" />   
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui-1.10.3.full.min.css" type="text/css" />      

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
	<a href="javascript:void(0);" id="myImage" alt="头像"><s:if test="#session.user.image==null"><img id="myCutImage" src="<%=request.getContextPath()%>/img/joinus.png" style="width:100px;height:100px;margin-left:2%" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="myCutImage" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:100px;height:100px;margin-left:2%" /></s:if>
</a> &nbsp&nbsp点击头像上传照片
	
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
<s:select name="sex" id="gender" cssClass="form-control"
 list="@com.lqg.model.Sex@getValues()"></s:select>
	
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
                      
                        <div class="row btns">
                          <div class="col-xs-8">
                            <label class="btn-choose-file">选择照片
                              <input id="uploadfile" type="file" name="pic">			      
                            </label>
                          </div>
			 <div id="loading" style="display:none;"><img src="<%=request.getContextPath()%>/img/loading.gif" style="width:75px;height:75px;"/></div>
                          <div class="col-xs-4">
			    <form> 
			    <input type="hidden"  id="cuttingImage"/>       
			    <input type="hidden"  id="x"/>  
			    <input type="hidden"  id="y"/>  
			    <input type="hidden"   id="width"/>  
			    <input type="hidden"  id="height"/>  
			    <input type="button" value="确定" id="cutLoad"/>  
			    <input id="cutPicCancel" type="button" value="取消" class="btn btn-cancel">
			    
			   </form> 
			    
                            
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-xs-12"><span class="upload-tip">仅支持JPG, GIF, PNG格式，文件小于5M。</span> <input type="button" value="上传" id="sub_upload" ></div>
			 
                        </div>
                        <div class="row">
			
                          <div  id="target"  style="width:300px;height:300px;overflow:hidden; border:1px solid gray;display:inline;">
<s:if test="#session.user.image==null"><img id="targetpic" src="<%=request.getContextPath()%>/img/joinus.png" style="width:300px;height:300px;"/>
	</s:if>
<s:if test="#session.user.image!=null">
                            <img id="targetpic" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:300px;height:300px;" /></s:if>
                           
                          </div>
			
                          <div id="preview"  style="width:300px;height:300px;overflow:hidden;margin-left:320px;margin-top:-300px">
			 
                            <div>
<s:if test="#session.user.image==null"><img id="previewpic" src="<%=request.getContextPath()%>/img/joinus.png" style="width:150px;height:150px;" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="previewpic" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:150px;height:150px;"/></s:if>
                            </div>150x150像素
                         
                          <div style="width:100px;height:150px;margin-left:170px;display:block;margin-top:-170px">
                            <div >
<s:if test="#session.user.image==null"><img id="previewpic1" src="<%=request.getContextPath()%>/img/joinus.png" style="width:75px;height:75px;" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="previewpic1" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:75px;height:75px;"/></s:if>
                            </div>75x75像素
                            <div >
<s:if test="#session.user.image==null"><img id="previewpic2" src="<%=request.getContextPath()%>/img/joinus.png" style="width:50px;height:50px;" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="previewpic2" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:50px;height:50px;"/></s:if>
                            </div>50x50像素
			     </div>
			    </div>
                         
                        </div>
                     
                    </div>
                  </div>
                </div>
              </div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>  
<script src="<%=request.getContextPath()%>/js/jquery.Jcrop.js" type="text/javascript"></script>    
<script src="<%=request.getContextPath()%>/js/jquery-ui-1.10.3.full.min.js" type="text/javascript"></script>    
<script type="text/javascript">

     
 $(document).ready(function () {
//生日时间挑选
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
        $("#birthday").datepicker({changeMonth:true,changeYear:true,yearRange:'1900:2014'});
      });
//剪切功能name="cuttingImageName" name="cuttingImageX" name="cuttingImageY" name="cuttingImageWidth" name="cuttingImageHeight"
    var x;  
    var y;  
    var width;  
    var height;  
    $(function(){  
        var jcrop_api, boundx, boundy;  
       //使原图具有裁剪功能 
        $("#targetpic").Jcrop({  
            onChange: updatePreview,  
            onSelect: updatePreview,  
            aspectRatio: 1  
        },function(){  
            // Use the API to get the real image size  
            var bounds = this.getBounds();  
            boundx = bounds[0];  
            boundy = bounds[1];  
            // Store the API in the jcrop_api variable  
            jcrop_api = this;  
        });  
       //裁剪过程中，每改变裁剪大小执行该函数  
        function updatePreview(c){  
            if (parseInt(c.w) > 0){    
                $("#previewpic").css({  
                    width: Math.round(150/c.w * boundx) + 'px',   //150 为预览div的宽和高
                    height: Math.round(150/c.h * boundy) + 'px',  
                    marginLeft: '-' + Math.round(150/c.w * c.x) + 'px',  
                    marginTop: '-' + Math.round(150/c.h * c.y) + 'px'  
                });  
		$("#previewpic1").css({  
                    width: Math.round(75/c.w * boundx) + 'px',   //75 为预览div的宽和高
                    height: Math.round(75/c.h * boundy) + 'px',  
                    marginLeft: '-' + Math.round(75/c.w * c.x) + 'px',  
                    marginTop: '-' + Math.round(75/c.h * c.y) + 'px'  
                });  
		$("#previewpic2").css({  
                    width: Math.round(50/c.w * boundx) + 'px',   //50 为预览div的宽和高
                    height: Math.round(50/c.h * boundy) + 'px',  
                    marginLeft: '-' + Math.round(50/c.w * c.x) + 'px',  
                    marginTop: '-' + Math.round(50/c.h * c.y) + 'px'  
                });  
                $("#width").val(c.w);  //c.w 裁剪区域的宽  
                $("#height").val(c.h); //c.h 裁剪区域的高  
                $("#x").val(c.x);  //c.x 裁剪区域左上角顶点相对于图片左上角顶点的x坐标  
                $("#y").val(c.y);  //c.y 裁剪区域顶点的y坐标 
            }  
          };  
    });
//剪切完后上传
$("#cutLoad").click(function(){
                                if($("#cuttingImage").val()==""){
				alert("没有选择上传图片!!!");
				return false;
				}
				if($("#width").val()==0){
				alert("没有选择裁剪比例!!!");
				return false;
				}
				if($("#height").val()==0){
				alert("没有选择裁剪比例!!!");
				return false;
				}
				
			   var params = {
				"cuttingImageName":$("#cuttingImage").val(),
				"cuttingImageX":$("#x").val(),
				"cuttingImageY" : $("#y").val(),
				"cuttingImageWidth" : $("#width").val(),
				"cuttingImageHeight":$("#height").val()
			      };
 
			      $.ajax({
				    type: "POST",
				url: "../user/user_cutPic.html",
			 	data:params,
				//async: false,
			       	dataType:"json",
				success:function(data){ 				 	
					        var hostname='<%=request.getContextPath()%>';
						var pathPic=hostname+"/img/"+data.uploadFile.path;
						$("#myCutImage").attr("src",pathPic);
						$("#targetpic").attr("src",pathPic);
						$("#previewpic").attr("src",pathPic);
						$("#previewpic1").attr("src",pathPic);
						$("#previewpic2").attr("src",pathPic);	
						$("#upload-picture").modal('hide');				
					
				},
				error: function(data){
				  

				  return false;
				}
				});
}); 
//取消按钮退出modal对话框
$("#cutPicCancel").click(function(){
			$("#upload-picture").modal('hide');
});
//modal对话框出现
$("#myImage").click(function(){
				$("#upload-picture").modal();

				//alert("happddsf");
				//$(".sign-up-tab").trigger("click");
			});
//上传相片
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
				    var	uploadUrl="../user/user_uploadPic.html?picFileName="+filename;
				  //starting setting some animation when the ajax starts and completes
				$("#loading").ajaxStart(function(){
					$(this).show();
				}).ajaxComplete(function(){
					$(this).hide();
				});
		                 //异步上传
				    $.ajaxFileUpload({
				      url:uploadUrl,
				      secureuri:false,
				      fileElementId:"uploadfile",
				      dataType:'json',
				      success:function(data,status){ 
					   var messageBig="文件过大";
					   var messageFai="文件上传失败";
					   var messageSuc="文件上传成功";
						
					   if(data.imageMessage==messageBig){
					  alert("文件过大");return false;
						}
					   if(data.imageMessage==messageFai){
					  alert("文件上传失败!");return false;
						}
					  if(data.imageMessage==messageSuc) {
						var hostname='<%=request.getContextPath()%>';
						var pathPic=hostname+"/img/"+data.uploadFile.path;
						$("#targetpic").attr("src",pathPic);
						$("#previewpic").attr("src",pathPic);
						$("#previewpic1").attr("src",pathPic);
						$("#previewpic2").attr("src",pathPic);	
						//var pathcut="../img/"+data.uploadFile.path;					
						$("#cuttingImage").val(data.uploadFile.path);
						//alert($("#cuttingImage").val());
						
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

