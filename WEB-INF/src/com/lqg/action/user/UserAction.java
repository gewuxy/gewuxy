package com.lqg.action.user;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.product.UploadFile;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
import com.lqg.util.EmailUtil;
import com.lqg.util.Md5s;
import com.lqg.util.MessageInfo;
import com.lqg.util.OperateImage;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟剿匡拷Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("userAction")
public class UserAction extends BaseAction implements ModelDriven<Student>{
	private static final long serialVersionUID = 1L;
	private static final String HOME = "home";
	private static final String ACCOUNT = "account";
	private static final String CLASS = "class";
	private static final String PREPAGE = "prePage";
	private static final String REGISTERERROR = "registerError";
	private static final String LOGONERROR = "logonError";
	private static final String EMAIL = "email";
	private static final String PASSWORD = "password";
	private static final String LINKSN = "linkSn";
	private static final String USERPROFILE = "userprofile";
	private String prePage;
	private String erroMessage;
	private String imageMessage;
	private File pic;   //(上传图片的file)  
	private String picFileName; //（上传图片的file的文件名）
	private UploadFile uploadFile=new UploadFile();//上传后的图片
	private OperateImage image=new OperateImage();
	private String cuttingImageName;
	private int cuttingImageX;
	private int cuttingImageY;
	private int cuttingImageWidth;
	private int cuttingImageHeight;
	@Autowired
	public EmailUtil emailUtil;	
	public String login() throws Exception{
		return USER_LOGIN;
	}
	/**
	 * 锟矫伙拷注锟斤拷
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		String email=student.getEmail();
		String password=Md5s.md5s(student.getPassword());
		 HttpServletRequest req = ServletActionContext.getRequest();
		String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_active.html?";  
		boolean unique = studentDao.isUnique(email)&&teacherDao.isUnique(email)
				&&parentDao.isUnique(email);//锟叫讹拷锟矫伙拷锟斤拷锟角凤拷锟斤拷锟�
		
		if(category.equals("student")){		
		if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
			student.setPassword(password);
			String hasmibao=email+password+new Date();
			student.setRandomCode(Md5s.md5s(hasmibao));
			studentDao.save(student);//锟斤拷锟斤拷注锟斤拷锟斤拷息
			Student savestudent=studentDao.login(email, password);
			if(savestudent==null){
		   		setErroMessage("savestudent为空的");
		   		return REGISTERERROR;
		   	}
			String activeHtml=activeAddress+"student.id="+savestudent.getId()+"&student.randomCode="+savestudent.getRandomCode()+"&category=student";
			String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
			MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
		   	message.setTo(email);
		   	message.setSubject("注册认证");
		   	message.setSendDate(new Date());
		   	message.setMsg("欢迎"+savestudent.getUsername()+"加入格物学院，您已经注册成功，请点击下面的链接进行激活，或者复制链接在网页上打开"+"\n"+activeLink);
		   	if(emailUtil==null){
		   		setErroMessage("emailUtil为空的");
		   		return REGISTERERROR;
		   	}
		    emailUtil.doSend(message);			
			setErroMessage("注册成功，请到邮箱激活认证");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");	
			return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}else{
			setErroMessage("此邮箱已经注册过，请直接登录");
			return REGISTERERROR;
		}}
		else if(category.equals("teacher")){			
			if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
				Teacher teacher=new Teacher();
				teacher.setUsername(student.getUsername());
				teacher.setEmail(email);
				teacher.setPassword(password);
				String hasmibao=email+password+new Date();
				teacher.setRandomCode(Md5s.md5s(hasmibao));
				teacherDao.save(teacher);//锟斤拷锟斤拷注锟斤拷锟斤拷息
				Teacher saveteacher=teacherDao.login(email, password);
				if(saveteacher==null){
			   		setErroMessage("saveteacher为空的");
			   		return REGISTERERROR;
			   	}
				String activeHtml=activeAddress+"student.id="+saveteacher.getId()+"&student.randomCode="+saveteacher.getRandomCode()+"&category=teacher";
				String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
				MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
			   	message.setTo(email);
			   	message.setSubject("注册认证");
			   	message.setSendDate(new Date());
			   	message.setMsg("欢迎"+saveteacher.getUsername()+"加入格物学院，您已经注册成功，请点击下面的链接进行激活，或者复制链接在网页上打开"+"\n"+activeLink);
			   	if(emailUtil==null){
			   		setErroMessage("emailUtil为空的");
			   		return REGISTERERROR;
			   	}
			    emailUtil.doSend(message);			
				setErroMessage("注册成功，请到邮箱激活认证");
				//获取跳转到登陆界面之前的页面地址，由拦截器提供
		        prePage = (String) session.get("prePage");
				return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
			}else{
				setErroMessage("此邮箱已经注册过，请直接登录");
				return REGISTERERROR;
			}}
		else if (category.equals("parent")){			
			if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
				Parent parent=new Parent();
				parent.setUsername(student.getUsername());
				parent.setEmail(email);
				parent.setPassword(password);
				String hasmibao=email+password+new Date();
				parent.setRandomCode(Md5s.md5s(hasmibao));
				parentDao.save(parent);//锟斤拷锟斤拷注锟斤拷锟斤拷息
				Parent saveparent=parentDao.login(email, password);
				if(saveparent==null){
			   		setErroMessage("saveparent为空的");
			   		return REGISTERERROR;
			   	}
				String activeHtml=activeAddress+"student.id="+saveparent.getId()+"&student.randomCode="+saveparent.getRandomCode()+"&category=parent";
				String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
				MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
			   	message.setTo(email);
			   	message.setSubject("注册认证");
			   	message.setSendDate(new Date());
			   	message.setMsg("欢迎"+saveparent.getUsername()+"加入格物学院，您已经注册成功，请点击下面的链接进行激活，或者复制链接在网页上打开"+"\n"+activeLink);
			   	if(emailUtil==null){
			   		setErroMessage("emailUtil为空的");
			   		return REGISTERERROR;
			   	}
			    emailUtil.doSend(message);	
				setErroMessage("注册成功，请到邮箱激活认证");
				//获取跳转到登陆界面之前的页面地址，由拦截器提供
		        prePage = (String) session.get("prePage");
				return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
			}else{
				setErroMessage("此邮箱已经注册过，请直接登录");
				return REGISTERERROR;
			}}
		else {
			
			setErroMessage("此邮箱已经注册过，请直接登录");
			return REGISTERERROR;
		}

	}
	/**
	 * 锟矫伙拷锟斤拷录 
	 * @return
	 * @throws Exception
	 */
	public String logon() throws Exception{
		//锟斤拷证锟矫伙拷锟斤拷锟斤拷锟斤拷锟斤拷欠锟斤拷锟饺�
		Student logonstudent=studentDao.login(student.getEmail(), Md5s.md5s(student.getPassword()));
		Parent logonparent=parentDao.login(student.getEmail(), Md5s.md5s(student.getPassword()));
		Teacher logonteacher=teacherDao.login(student.getEmail(), Md5s.md5s(student.getPassword()));
		if(logonstudent!=null){
			if(logonstudent.getActive().equals("1")){
			session.put("user", logonstudent);//将学生放入user 的session
			session.put("type", "student");
			setErroMessage("登录成功");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");	        
	        //清除session中的数据
	        //session.remove("prePage");
	        if (prePage == null) {
	            //不是拦截器跳转到登陆页面的，直接访问的登陆页面
	            return HOME;
	        } else {	        	
	        	 return LOGONERROR;
	        }
			}else{
				 HttpServletRequest req = ServletActionContext.getRequest();
				String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_active.html?";  
				String activeHtml=activeAddress+"student.id="+logonstudent.getId()+"&name="+logonstudent.getUsername()+"&category=student";
				String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
				MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
			   	message.setTo(logonstudent.getEmail());
			   	message.setSubject("注册认证");
			   	message.setSendDate(new Date());
			   	message.setMsg("欢迎"+logonstudent.getUsername()+"加入格物学院，您已经注册成功，请点击下面的链接进行激活，或者复制链接在网页上打开"+"\n"+activeLink);
			   	if(emailUtil==null){
			   		setErroMessage("emailUtil为空的");
			   		return REGISTERERROR;
			   	}
			    emailUtil.doSend(message);					
				setErroMessage("该邮箱没有激活，我们已经发送激活链接到您的邮箱里，请登录邮箱激活");
				return LOGONERROR;
			}
			
			}
		else if(logonparent!=null){
			if(logonparent.getActive().equals("1")){
			session.put("user", logonparent);//将学生放入user 的session
			session.put("type", "parent");
			setErroMessage("登录成功");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");
	        //清除session中的数据
	       // session.remove("prePage");	        
	        if (prePage == null) {
	            //不是拦截器跳转到登陆页面的，直接访问的登陆页面
	            return HOME;
	        } else {
	        	return LOGONERROR;
	        }
			}else{
				HttpServletRequest req = ServletActionContext.getRequest();
				String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_active.html?";  
				String activeHtml=activeAddress+"student.id="+logonparent.getId()+"&name="+logonparent.getUsername()+"&category=parent";
				String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
				MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
			   	message.setTo(logonparent.getEmail());
			   	message.setSubject("注册认证");
			   	message.setSendDate(new Date());
			   	message.setMsg("欢迎"+logonparent.getUsername()+"加入格物学院，您已经注册成功，请点击下面的链接进行激活，或者复制链接在网页上打开"+"\n"+activeLink);
			   	if(emailUtil==null){
			   		setErroMessage("emailUtil为空的");
			   		return REGISTERERROR;
			   	}
			    emailUtil.doSend(message);					
				setErroMessage("该邮箱没有激活，我们已经发送激活链接到您的邮箱里，请登录邮箱激活");
				return LOGONERROR;
				
			}
		}
		else if(logonteacher!=null){
			if(logonteacher.getActive().equals("1")){
			session.put("user", logonteacher);//将学生放入user 的session
			session.put("type", "teacher");
			 setErroMessage("登录成功");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");
	        //清除session中的数据
	        //session.remove("prePage");	       
	        if (prePage == null) {
	            //不是拦截器跳转到登陆页面的，直接访问的登陆页面
	            return HOME;
	        } else {
	        	return LOGONERROR;
	        }
			}else{
				HttpServletRequest req = ServletActionContext.getRequest();
				String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_active.html?";  
				String activeHtml=activeAddress+"student.id="+logonteacher.getId()+"&name="+logonteacher.getUsername()+"&category=teacher";
				String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
				MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
			   	message.setTo(logonteacher.getEmail());
			   	message.setSubject("注册认证");
			   	message.setSendDate(new Date());
			   	message.setMsg("欢迎"+logonteacher.getUsername()+"加入格物学院，您已经注册成功，请点击下面的链接进行激活，或者复制链接在网页上打开"+"\n"+activeLink);
			   	if(emailUtil==null){
			   		setErroMessage("emailUtil为空的");
			   		return REGISTERERROR;
			   	}
			    emailUtil.doSend(message);					
				setErroMessage("该邮箱没有激活，我们已经发送激活链接到您的邮箱里，请登录邮箱激活");
				return LOGONERROR;
				
			}
		}
		else {
			setErroMessage("密码和邮箱不一致");
			return LOGONERROR;
		}
	}
	/**
	 * 锟矫伙拷锟剿筹拷
	 * @return String
	 * @throws Exception
	 */
	public String logout() throws Exception{
		if(session != null && session.size() > 0){
			session.remove("user");
			session.remove("type");
			setErroMessage("退出成功");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");	        
	        //清除session中的数据
	        session.remove("prePage");
			
		}
		return LOGOUT;
	}
	
	public String home() throws Exception{
		
		if(session.get("user")!= null){			
			 
				 return HOME;
		}else{
			return ERROR;
		}
		
	}
	
public String account() throws Exception{
		
	if(session.get("user")!= null){		
		 
			 return ACCOUNT;		 
		
	}else{
			return ERROR;
		}
	}
public String myClass() throws Exception{
	
	if(session.get("user")!= null){	
		 
			 return CLASS;
		 }else{
			return ERROR;
		}
	}
/*
 * 个人email
 */
public String email() throws Exception{
	
	if(session.get("user")!= null){
		
		 
			 return EMAIL;		
		 
	}
	
		else{
			return ERROR;
		}
	}
/*
 * 个人password
 */
public String password() throws Exception{
	
	if(session.get("user")!= null){
		
		 
			 return PASSWORD;		
		 
	}
	
		else{
			return ERROR;
		}
	}
/*
 * 个人linkSn
 */
public String linkSn() throws Exception{
	
	if(session.get("user")!= null){
		
		 
			 return LINKSN;		
		 
	}
	
		else{
			return ERROR;
		}
	}
/*
 * 个人上传图片的action
 */

public String uploadPic() {  
    String[] str = { ".jpg", ".jpeg", ".png", ".gif" };  
    // 获取用户登录名  
   // TbUser curruser = (TbUser) getValue(SCOPE_SESSION, "curruser");  
    // 限定文件大小是4MB  
    if (pic == null || pic.length() > 4194304) {  
        
		//文件过大  
    	setImageMessage("文件过大");
        return "imageLimited";  
    }  
    for (String s : str) {  
        if (picFileName.endsWith(s)) { 
            String realPath = ServletActionContext.getServletContext().getRealPath("/img/headicon");// 在tomcat中保存图片的实际路径  ==  "webRoot/img/headicon"
            String name="";
            String username="";
            if(session.get("type").equals("student")){
            	username="student"+((Student) session.get("user")).getId();
            	name=name+username+"_"+new Date().toString();
            }
            if(session.get("type").equals("parent")){
            	username="parent"+((Parent) session.get("user")).getId();
            	name=name+username+"_"+new Date().toString();
            }
            if(session.get("type").equals("teacher")){
            	username="teacher"+((Teacher) session.get("user")).getId();
            	name=name+username+"_"+new Date().getTime();
            }
            String fileName = name+ ".jpg";//
            File imageDir = new File(realPath);  // 里面输入特定目录
            File temp = null;
            int n = 0;
            File[] filelist = imageDir.listFiles();
            for (int i = 0; i < filelist.length; i++) {  //遍历目录下所有文件
             temp = filelist[i];
             if(temp.getName().contains(username)){     //输入文件所包含的字符
              System.out.println(temp.getName());
              n++;
              temp.delete();     //删除文件
             }
            }
            File saveFile = new File(new File(realPath), fileName); // 在该实际路径下实例化一个文件  
            
            // 判断父目录是否存在  
            if (!saveFile.getParentFile().exists()) {  
                saveFile.getParentFile().mkdirs();  
            }  
            try {  
                // 执行文件上传  
                // FileUtils 类名 org.apache.commons.io.FileUtils;  
                // 是commons-io包中的，commons-fileupload 必须依赖  
                // commons-io包实现文件上次，实际上就是将一个文件转换成流文件进行读写  
                FileUtils.copyFile(pic, saveFile);  
               	uploadFile.setPath(fileName);//ÉèÖÃÎÄŒþÃû³Æ
			    } catch (IOException e) {  
            	setImageMessage("文件上传失败");
                return "imageError";  
            }  
        }  
    } 
    setImageMessage("文件上传成功");
    return "imageSuccess";  
}  
//剪切图片
public String cutPic(){  
	    String hostPath = ServletActionContext.getServletContext().getRealPath("/img/headicon");// 在tomcat中保存图片的实际路径  ==  "webRoot/img/" 
        String name=hostPath+"/"+getCuttingImageName();
        image.setSrcpath(name);  
        int index=getCuttingImageName().lastIndexOf("_");
        String nameCut=getCuttingImageName().substring(0,index)+"_headicon"+new Date().getTime()+".jpg";
        String cutImage=hostPath+"/"+nameCut;
        image.setSubpath(cutImage); 
        image.setX(getCuttingImageX());
        image.setY(getCuttingImageY());
        image.setWidth(getCuttingImageWidth());
        image.setHeight(getCuttingImageHeight());
        try {  
            image.cut(); //执行裁剪操作  执行完后即可生成目标图在对应文件夹内。</span> 
            File guoduFile = new File(name); // 在该实际路径下实例化一个文件  
            // 判断原来上传的照片存在删除，防止服务器给爆满  
            if (guoduFile.exists()) {  
                guoduFile.delete();  
            } 
            File cutFile = new File(cutImage); // 在该实际路径下实例化一个文件  
            // 判断上传后的照片存在删除，防止服务器给爆满  
            int indexCut=getCuttingImageName().indexOf("_headicon");
            if (indexCut>=0) {  
            	 nameCut=getCuttingImageName().substring(0,indexCut)+"_headicon"+new Date().getTime()+".jpg";
            	 cutFile.renameTo(new   File(hostPath+"/"+nameCut));   //改名
            } 
            
            uploadFile.setPath(nameCut);//ÉèÖÃÎÄŒþÃû³Æ
			uploadFileDao.save(uploadFile);
			if(session.get("type").equals("student")){				
				Student student = studentDao.load(((Student) session.get("user")).getId());
				student.setImage(uploadFile);
				studentDao.update(student);				
				Student studentcut = studentDao.load(student.getId());
				session.remove("user");
				session.put("user", studentcut);//将学生放入user 的session
			}
			if(session.get("type").equals("parent")){
				Parent parent=parentDao.load(((Parent) session.get("user")).getId());
				parent.setImage(uploadFile);
				parentDao.update(parent);
				Parent parentcut = parentDao.load(parent.getId());
				session.remove("user");
				session.put("user", parentcut);//将家长放入user 的session
			}
			if(session.get("type").equals("teacher")){
				Teacher teacher=teacherDao.load(((Teacher) session.get("user")).getId());
				teacher.setImage(uploadFile);
				teacherDao.update(teacher);
				Teacher teachercut = teacherDao.load(teacher.getId());
				session.remove("user");
				session.put("user", teachercut);//将学生放入user 的session
			}
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        return "cutsuccess";  
    }  
/**
 * 个人资料修改
 * @return
 * @throws Exception
 */
public String saveProfile() throws Exception{
	if(session.get("type").equals("student")){			
		Student studentM=studentDao.load(((Student) session.get("user")).getId());
		if(student.getNickname()!=null){
			studentM.setNickname(student.getNickname());
		}
		if(student.getUsername()!=null){
		studentM.setUsername(student.getUsername());
		}
		if(student.getSex()!=null){
		studentM.setSex(student.getSex());
		}
		if(student.getBirthday()!=null){
		studentM.setBirthday(student.getBirthday());
		}
		if(student.getSchool()!=null){
		studentM.setSchool(student.getSchool());
		}
		if(student.getAptcourses()!=null){
		studentM.setAptcourses(student.getAptcourses());
		}
		if(student.getIntroduction()!=null){
		studentM.setIntroduction(student.getIntroduction());
		}
		studentDao.update(studentM);//锟斤拷锟斤拷注锟斤拷锟斤拷息
		Student studentprofile = studentDao.load(((Student) session.get("user")).getId());
		session.remove("user");
		session.put("user", studentprofile);//将学生放入user 的session
		setErroMessage("修改成功");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
	}
	else if(session.get("type").equals("teacher")){			  
			Teacher teacher=teacherDao.load(((Teacher) session.get("user")).getId());
			if(student.getNickname()!=null){
				teacher.setNickname(student.getNickname());
			}
			if(student.getUsername()!=null){
			teacher.setUsername(student.getUsername());
			}
			if(student.getSex()!=null){
			teacher.setSex(student.getSex());
			}
			if(student.getBirthday()!=null){
			teacher.setBirthday(student.getBirthday());
			}
			if(student.getSchool()!=null){
			teacher.setSchool(student.getSchool());
			}
			if(student.getAptcourses()!=null){
			teacher.setAptcourses(student.getAptcourses());
			}
			if(student.getIntroduction()!=null){
			teacher.setIntroduction(student.getIntroduction());
			}
			teacherDao.update(teacher);//锟斤拷锟斤拷注锟斤拷锟斤拷息
			Teacher teacherprofile = teacherDao.load(((Teacher) session.get("user")).getId());
			session.remove("user");
			session.put("user", teacherprofile);//将学生放入user 的session
			setErroMessage("修改成功");			
			return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
	else if (session.get("type").equals("parent")){			
		Parent parent=parentDao.load(((Parent) session.get("user")).getId());
		if(student.getNickname()!=null){
			parent.setNickname(student.getNickname());
		}
		if(student.getUsername()!=null){
			parent.setUsername(student.getUsername());
		}
		if(student.getSex()!=null){
			parent.setSex(student.getSex());
		}
		if(student.getBirthday()!=null){
			parent.setBirthday(student.getBirthday());
		}	
		
		if(student.getIntroduction()!=null){
			parent.setIntroduction(student.getIntroduction());
		}
		parentDao.update(parent);//锟斤拷锟斤拷注锟斤拷锟斤拷息
		Parent parentprofile = parentDao.load(((Parent) session.get("user")).getId());
		session.remove("user");
		session.put("user", parentprofile);//将学生放入user 的session
		setErroMessage("修改成功");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
	else {
		setErroMessage("没有修改");
		return USERPROFILE;
	}

}
/**
 * 个人密码修改
 * @return
 * @throws Exception
 */
public String modifyPassword() throws Exception{
	String encrypt=Md5s.md5s(student.getPassword());
	if(session.get("type").equals("student")){			
		Student studentM=studentDao.load(((Student) session.get("user")).getId());
		if(!(encrypt.equals(studentM.getPassword()))){
			setErroMessage("原密码错误");
			return USERPROFILE;
		}
		studentM.setPassword(Md5s.md5s(getRepassword()));
		studentDao.update(studentM);//锟斤拷锟斤拷注锟斤拷锟斤拷息
		Student studentprofile = studentDao.load(((Student) session.get("user")).getId());
		session.remove("user");
		session.put("user", studentprofile);//将学生放入user 的session
		setErroMessage("修改成功");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
	}
	else if(session.get("type").equals("teacher")){			  
			Teacher teacher=teacherDao.load(((Teacher) session.get("user")).getId());
			if(!(encrypt.equals(teacher.getPassword()))){
				setErroMessage("原密码错误");
				return USERPROFILE;
			}
			teacher.setPassword(Md5s.md5s(getRepassword()));		
			teacherDao.update(teacher);//锟斤拷锟斤拷注锟斤拷锟斤拷息
			Teacher teacherprofile = teacherDao.load(((Teacher) session.get("user")).getId());
			session.remove("user");
			session.put("user", teacherprofile);//将学生放入user 的session
			setErroMessage("修改成功");			
			return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
	else if (session.get("type").equals("parent")){			
		Parent parent=parentDao.load(((Parent) session.get("user")).getId());
		if(!(encrypt.equals(parent.getPassword()))){
			setErroMessage("原密码错误");
			return USERPROFILE;
		}
		parent.setPassword(Md5s.md5s(getRepassword()));		
		parentDao.update(parent);//锟斤拷锟斤拷注锟斤拷锟斤拷息
		Parent parentprofile = parentDao.load(((Parent) session.get("user")).getId());
		session.remove("user");
		session.put("user", parentprofile);//将学生放入user 的session
		setErroMessage("修改成功");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
	else {
		setErroMessage("没有修改");
		return USERPROFILE;
	}

}
/**
 * 个人邮箱激活
 * @return
 * @throws Exception
 */
public String active() throws Exception{	
	if(getCategory().equals("student")){			
		Student studentM=studentDao.load(getStudent().getId());
		if(studentM==null){			
			setErroMessage("此邮箱没有注册，请先注册");
			return USERPROFILE;
		}
		if(studentM.getActive().equals("1")){
			setErroMessage("此邮箱已经激活，请登录");
			return USERPROFILE;
		}
		if(!(student.getRandomCode().equals(studentM.getRandomCode()))){
			setErroMessage("此邮箱不允许非法操作");
			return USERPROFILE;
		}
		studentM.setActive("1");
		studentDao.update(studentM);//锟斤拷锟斤拷注锟斤拷锟斤拷息		
		setErroMessage("此邮箱激活成功，请登录");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
	}
	else if(getCategory().equals("teacher")){			  
		Teacher teacher=teacherDao.load(getStudent().getId());
		if(teacher==null){			
			setErroMessage("此邮箱没有注册，请先注册");
			return USERPROFILE;
		}
		if(teacher.getActive().equals("1")){
			setErroMessage("此邮箱已经激活，请登录");
			return USERPROFILE;
		}
		if(!(student.getRandomCode().equals(teacher.getRandomCode()))){
			setErroMessage("此邮箱不允许非法操作");
			return USERPROFILE;
		}
		teacher.setActive("1");
		teacherDao.update(teacher);//锟斤拷锟斤拷注锟斤拷锟斤拷息		
		setErroMessage("此邮箱激活成功，请登录");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
	else if (getCategory().equals("parent")){			
		Parent parent=parentDao.load(getStudent().getId());
		if(parent==null){			
			setErroMessage("此邮箱没有注册，请先注册");
			return USERPROFILE;
		}
		if(parent.getActive().equals("1")){
			setErroMessage("此邮箱已经激活，请登录");
			return USERPROFILE;
		}
		if(!(student.getRandomCode().equals(parent.getRandomCode()))){
			setErroMessage("此邮箱不允许非法操作");
			return USERPROFILE;
		}
		parent.setActive("1");
		parentDao.update(parent);//锟斤拷锟斤拷注锟斤拷锟斤拷息		
		setErroMessage("此邮箱激活成功，请登录");			
		return USERPROFILE;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
	else {
		setErroMessage("此邮箱激活失败，请重新激活");
		return USERPROFILE;
	}

}
/**
 * 个人密码找回发送链接
 * @return
 * @throws Exception
 */
public String sendPasswordFindLink() throws Exception{	
	String where = "where email = ?";
	Object[] queryParams = {getStudent().getEmail()};	
	List<Student> studentfindlist= studentDao.find(-1,-1, where, queryParams).getList();//执行查询方法
	List <Teacher> teacherfindlist= teacherDao.find(-1,-1, where, queryParams).getList();//执行查询方法
	List <Parent> parentfindlist= parentDao.find(-1,-1, where, queryParams).getList();//执行查询方法
	if(studentfindlist!=null && studentfindlist.size() > 0){
		Student studentFind=studentfindlist.get(0);		
	HttpServletRequest req = ServletActionContext.getRequest();
	String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_setnewpassword.html?";  
	String activeHtml=activeAddress+"student.id="+studentFind.getId()+"&student.randomCode="+studentFind.getRandomCode()+"&category=student";
	String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
	MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
   	message.setTo(studentFind.getEmail());
   	message.setSubject("找回密码");
   	message.setSendDate(new Date());
   	message.setMsg("欢迎"+studentFind.getUsername()+"找回密码"+"请点击下面的链接进行密码新重置，或者复制链接在网页上打开"+"\n"+activeLink);
   	if(emailUtil==null){
   		setErroMessage("emailUtil为空的");
   		return USERPROFILE;
   	}
    emailUtil.doSend(message);					
	setErroMessage("我们已经发送找回密码链接到您的邮箱里，请登录邮箱查收");
	return USERPROFILE;
	}
	else if(parentfindlist!=null && parentfindlist.size() > 0){
		Parent parentFind=parentfindlist.get(0);		
	HttpServletRequest req = ServletActionContext.getRequest();
	String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_setnewpassword.html?"; 
	String activeHtml=activeAddress+"student.id="+parentFind.getId()+"&student.randomCode="+parentFind.getRandomCode()+"&category=parent";
	String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
	MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
   	message.setTo(parentFind.getEmail());
   	message.setSubject("找回密码");
   	message.setSendDate(new Date());
   	message.setMsg("欢迎"+parentFind.getUsername()+"找回密码"+"请点击下面的链接进行密码新重置，或者复制链接在网页上打开"+"\n"+activeLink);
   	if(emailUtil==null){
   		setErroMessage("emailUtil为空的");
   		return USERPROFILE;
   	}
    emailUtil.doSend(message);					
	setErroMessage("我们已经发送找回密码链接到您的邮箱里，请登录邮箱查收");
	return USERPROFILE;
	}
	else if(teacherfindlist!=null && teacherfindlist.size() > 0){
		Teacher teacherFind=teacherfindlist.get(0);		
	HttpServletRequest req = ServletActionContext.getRequest();
	String activeAddress= req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+req.getContextPath()+"/user/user_setnewpassword.html?";  
	String activeHtml=activeAddress+"student.id="+teacherFind.getId()+"&student.randomCode="+teacherFind.getRandomCode()+"&category=teacher";
	String activeLink="<a href="+"\""+activeHtml+"\""+">"+activeHtml+"</a>";
	MessageInfo message = new MessageInfo();//·â×°ÓÊŒþÐÅÏ¢µÄ¶ÔÏó 		   	
   	message.setTo(teacherFind.getEmail());
   	message.setSubject("找回密码");
   	message.setSendDate(new Date());
   	message.setMsg("欢迎"+teacherFind.getUsername()+"找回密码"+"请点击下面的链接进行密码新重置，或者复制链接在网页上打开"+"\n"+activeLink);
   	if(emailUtil==null){
   		setErroMessage("emailUtil为空的");
   		return USERPROFILE;
   	}
    emailUtil.doSend(message);					
	setErroMessage("我们已经发送找回密码链接到您的邮箱里，请登录邮箱查收");
	return USERPROFILE;
	}
	else {
		setErroMessage("此邮箱还没有注册");
		return USERPROFILE;
	}

}
/**
 * 跳转到找回密码的重置页面
 */
public String setnewpassword(){
	session.put("resetpassuserid", student.getId());
	session.put("resetpassuserhashcode", student.getRandomCode());
	session.put("resetpassusercategory", getCategory());
	return "newpasswordjsp";
	
}
/**
 * 个人找回密码重置
 * @return
 * @throws Exception
 */
public String passwordfindActive() throws Exception{
	String encrypt=Md5s.md5s(student.getPassword());
	if(session.get("resetpassusercategory").equals("student")){			
		Student studentM=studentDao.load((int)session.get("resetpassuserid"));
		if(studentM==null){
			session.remove("resetpassusercategory");
			session.remove("resetpassuserid");
			session.remove("resetpassuserhashcode");
			setErroMessage("此邮箱没有注册，请先注册");
			return USERPROFILE;
		}
		if(!(session.get("resetpassuserhashcode").equals(studentM.getRandomCode()))){	
			session.remove("resetpassusercategory");
			session.remove("resetpassuserid");
			session.remove("resetpassuserhashcode");
			setErroMessage("邮箱不允许非法操作");
			return USERPROFILE;
		}
		studentM.setPassword(encrypt);
		studentDao.update(studentM);//锟斤拷锟斤拷注锟斤拷锟斤拷息
		session.remove("resetpassusercategory");
		session.remove("resetpassuserid");
		session.remove("resetpassuserhashcode");
		setErroMessage("邮箱密码已经重新设置了，请用新的密码登录");
		return USERPROFILE;
	}
	else if(session.get("resetpassusercategory").equals("parent")){			
		Parent parent=parentDao.load((int)session.get("resetpassuserid"));
		if(parent==null){
			session.remove("resetpassusercategory");
			session.remove("resetpassuserid");
			session.remove("resetpassuserhashcode");
			setErroMessage("此邮箱没有注册，请先注册");
			return USERPROFILE;
		}
		if(!(session.get("resetpassuserhashcode").equals(parent.getRandomCode()))){	
			session.remove("resetpassusercategory");
			session.remove("resetpassuserid");
			session.remove("resetpassuserhashcode");
			setErroMessage("邮箱不允许非法操作");
			return USERPROFILE;
		}
		parent.setPassword(encrypt);
		parentDao.update(parent);//锟斤拷锟斤拷注锟斤拷锟斤拷息		
		session.remove("resetpassusercategory");
		session.remove("resetpassuserid");
		session.remove("resetpassuserhashcode");
		setErroMessage("邮箱密码已经重新设置了，请用新的密码登录");
		return USERPROFILE;
	}
	else if(session.get("resetpassusercategory").equals("teacher")){			
		Teacher teacher=teacherDao.load((int)session.get("resetpassuserid"));
		if(teacher==null){
			session.remove("resetpassusercategory");
			session.remove("resetpassuserid");
			session.remove("resetpassuserhashcode");
			setErroMessage("此邮箱没有注册，请先注册");
			return USERPROFILE;
		}
		if(!(session.get("resetpassuserhashcode").equals(teacher.getRandomCode()))){	
			session.remove("resetpassusercategory");
			session.remove("resetpassuserid");
			session.remove("resetpassuserhashcode");
			setErroMessage("邮箱不允许非法操作");
			return USERPROFILE;
		}
		teacher.setPassword(encrypt);
		teacherDao.update(teacher);//锟斤拷锟斤拷注锟斤拷锟斤拷息		
		session.remove("resetpassusercategory");
		session.remove("resetpassuserid");
		session.remove("resetpassuserhashcode");
		setErroMessage("邮箱密码已经重新设置了，请用新的密码登录");
		return USERPROFILE;
		}
	else {
		session.remove("resetpassusercategory");
		session.remove("resetpassuserid");
		session.remove("resetpassuserhashcode");
		setErroMessage("邮箱密码设置失败，请再次发送找回密码请求");
		return USERPROFILE;
	}

}
	// 锟斤拷锟斤拷员
	private Student student = new Student();
	// 确锟斤拷锟斤拷锟斤拷
	private String repassword;
        //登录者类型
	private String category;
	  
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrePage() {
		return prePage;
	}
	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}
	@Override
	public Student getModel() {
		return student;
	}
	public String getErroMessage() {
		return erroMessage;
	}
	public void setErroMessage(String erroMessage) {
		this.erroMessage = erroMessage;
	}
	public File getPic() {
		return pic;
	}
	public void setPic(File pic) {
		this.pic = pic;
	}
	public String getPicFileName() {
		return picFileName;
	}
	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}
	public UploadFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(UploadFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	public String getImageMessage() {
		return imageMessage;
	}
	public void setImageMessage(String imageMessage) {
		this.imageMessage = imageMessage;
	}
	public OperateImage getImage() {
		return image;
	}
	public void setImage(OperateImage image) {
		this.image = image;
	}
	public String getCuttingImageName() {
		return cuttingImageName;
	}
	public void setCuttingImageName(String cuttingImageName) {
		this.cuttingImageName = cuttingImageName;
	}
	public int getCuttingImageX() {
		return cuttingImageX;
	}
	public void setCuttingImageX(int cuttingImageX) {
		this.cuttingImageX = cuttingImageX;
	}
	public int getCuttingImageY() {
		return cuttingImageY;
	}
	public void setCuttingImageY(int cuttingImageY) {
		this.cuttingImageY = cuttingImageY;
	}
	public int getCuttingImageWidth() {
		return cuttingImageWidth;
	}
	public void setCuttingImageWidth(int cuttingImageWidth) {
		this.cuttingImageWidth = cuttingImageWidth;
	}
	public int getCuttingImageHeight() {
		return cuttingImageHeight;
	}
	public void setCuttingImageHeight(int cuttingImageHeight) {
		this.cuttingImageHeight = cuttingImageHeight;
	}
	
	
}
