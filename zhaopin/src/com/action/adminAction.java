package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.model.TAdmin;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;
public class adminAction extends ActionSupport
{
	private int userId;
	private String userName;
	private String userPw;
	 
	private String message;
	private String path;
	
	private int index=1;

	private TAdminDAO adminDAO;
	
	private String userPw1;
	
public String getUserPw1() {
		return userPw1;
	}
	public void setUserPw1(String userPw1) {
		this.userPw1 = userPw1;
	}
	
	public String adminLogin()
	{		
	String sql="from TAdmin where userName=? and userPw=?" ;
	Object[] con={userName,userPw};
	List adminList=adminDAO.getHibernateTemplate().find(sql,con);
	String message=null;
	Map session= ServletActionContext.getContext().getSession();
	if(adminList.size()==0)
	{
		message="用户名或密码错误";
		Map request=(Map)ServletActionContext.getContext().get("request");
		//this.setMessage(message);
		session.put("messa", message);
		this.setPath("qiantai/index.html");
		return "error";
	}
	else
	{		
	 		
	 		TAdmin admin=(TAdmin)adminList.get(0);

		if(userName.equals(((TAdmin)adminList.get(0)).getUserName())&&userPw.equals(((TAdmin)adminList.get(0)).getUserPw()))
		{
			 session.put("admin", admin);
			 message="成功登录";
			 this.setMessage(message);
			 this.setPath("adminLogin.action");
			 return "succeed";
			 
			 
		}else{
			 message="用戶或密码错误,請注意大小写";
			 this.setMessage(message);
			session.remove(admin);
			this.setPath("qiantai/index.html");	
			session.put("messa", message);
			return "error";
			
		}		     
	}
	
	}
	public String adminPwEdit()
	{
		if(userPw1!=null){
			Map session= ServletActionContext.getContext().getSession();
			TAdmin admin=(TAdmin)session.get("admin");
			System.out.println(admin.getUserName()+"%%%%");
			admin.setUserName(admin.getUserName());
			
			admin.setUserPw(userPw1);
			adminDAO.attachDirty(admin);
			session.put("admin", admin);
			
		}else{
			this.setMessage("操作失败");
			this.setPath("/admin/index/userinfo.jsp");
		}
		
		return "succeed";
	}	
	
	
	
	public String adminAdd()
	{
		TAdmin admin=new TAdmin();
		admin.setUserName(userName);
		admin.setUserPw(userPw);
		adminDAO.save(admin);
		this.setMessage("操作成功");
		this.setPath("adminManage.action");
		return "succeed";
	}
	
	
	
	public String adminManage()
	{
		List adminList=adminDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("adminList", adminList);
		return ActionSupport.SUCCESS;
		
	}
	
	public String adminManageFenye()
	{
		List adminList=adminDAO.findAll();
		int pageSize=3;
		int fromIndex = (index - 1) * pageSize;
		int toIndex = Math.min(fromIndex + pageSize, adminList.size());
		List adminListFenye = adminList.subList(fromIndex, toIndex);
		

        Pagination p = new Pagination();//创建 分页对象
        p.setIndex(index);//设置页数
        p.setPageSize(pageSize);
        p.setTotle(adminList.size());//设置总共的条数
        p.setData(adminListFenye);//设置数据
        p.setPath("adminManageFenye.action?");//跳转的路径

		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("page", p);
		return ActionSupport.SUCCESS;
	}
	
	public String adminDel()
	{
		adminDAO.delete(adminDAO.findById(userId));
		this.setMessage("删除成功");
		this.setPath("adminManage.action");
		return "succeed";
	}
	
	

	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}

	public void setAdminDAO(TAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}

	public String getMessage()
	{
		return message;
	}

	public int getIndex()
	{
		return index;
	}



	public void setIndex(int index)
	{
		this.index = index;
	}



	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public int getUserId()
	{
		return userId;
	}

	public void setUserId(int userId)
	{
		this.userId = userId;
	}

	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getUserPw()
	{
		return userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}
	 
}
