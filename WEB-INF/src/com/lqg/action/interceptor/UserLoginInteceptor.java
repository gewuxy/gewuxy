package com.lqg.action.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import com.lqg.util.*;
/**
 * ����ߵ�¼������
 * @author Li Qiguo
 *
 */
public class UserLoginInteceptor extends AbstractInterceptor{
	private static final long serialVersionUID = 1L;
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();// ��ȡActionContext
		Map<String, Object> session = context.getSession();// ��ȡMap���͵�session
		//session.remove("prePage");
		if(session.get("user") == null){// �ж��û��Ƿ��¼ 
			
	            // 获取HttpServletRequest对象
	            HttpServletRequest req = ServletActionContext.getRequest();
	                 //如果referer不为空 直接使用它。如果为空我们分别获得命名空间，action名,以及请求参数  
	                        //从新构造成一个URL保存在session中  
	            if (req.getHeader("X-Requested-With") != null
                		&& req.getHeader("X-Requested-With").equalsIgnoreCase(     
                		"XMLHttpRequest")) {  
	                        String url=req.getHeader("referer");  
	                        
	                        if(url==null || url.equals(""))  
	                            {  
	                                url="";  
	                                String path=req.getContextPath();  
	                                String actionName=invocation.getProxy().getActionName();  
	                                String nameSpace=invocation.getProxy().getNamespace();  
	                                if(StringUitl.validateString(nameSpace))  
	                                    {  
	                                        url = url+path+nameSpace;  
	                                          
	                                    }  
	                                if(StringUitl.validateString(actionName))  
	                                    {  
	                                        url = url+"/"+actionName+".action"+"?";  
	                                    }  
	                               
	                                Map<String,String[]> zzMap = req.getParameterMap();  
	                                if(zzMap!=null)  
	                                    {  
	                                        for(String s:zzMap.keySet())  
	                                            {  
	                                                String[] value=zzMap.get(s);  
	                                                for(String val:value)  
	                                                    {  
	                                                        url=url+s+"="+val+"&";  
	                                                    }  
	                                                  
	                                            }  
	                                    }  
	                                
	                               
	                            }  
	                        session.put("prePage", url);   
	                  
	                 return invocation.invoke();  
	        }  
		}
	           
	           
	       
			
		
		return invocation.invoke();// 用户已经登录，放行
	}
}
