package com.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.jdo.Query;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.dao.TToujijianliDAO;
import com.model.TToujijianli;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class toudijianliAction extends ActionSupport
{
	private int id;
	private int zhaopinId;
	private int userId;
	private String toudishijian;
	
	private String message;
	private String path;
	private TToujijianliDAO toujijianliDAO;
	
//	public String toudijianliAdd()
//	{
//		Map session= ServletActionContext.getContext().getSession();
//		TUser user=(TUser)session.get("user");
//		
//		TToujijianli toujijianli=new TToujijianli();
//		toujijianli.setZhaopinId(zhaopinId);
//		toujijianli.setUserId(user.getUserId());
//		toujijianli.setToudishijian(new Date().toLocaleString());
//		toujijianli.setDel("no");
//		toujijianliDAO.save(toujijianli);
//		return "successAdd";
//	}
//	
	
	
	public String toudijianliAdd() throws ParseException
	{		
		String result="index";
		Map session= ServletActionContext.getContext().getSession();
		
		TUser user=(TUser)session.get("user");
		int type=user.getUserType();
		if(type==1){//求职者
		String sql="from TToujijianli where userId=? and del='no'";
		Object[] con={user.getUserId()};
	    List toudijianliList=toujijianliDAO.getHibernateTemplate().find(sql,con);
	    int[] idArray=new int[toudijianliList.size()];//将招聘的編號存入一個數組
		if(toudijianliList.size()!=0){
			
			for(int i=0;i<toudijianliList.size();i++){
				TToujijianli TToujijianli =(com.model.TToujijianli) toudijianliList.get(i);
				idArray[i]=TToujijianli.getZhaopinId();	
			}	
			//遍历用户的简历投递简历，将所有的Id存入到数组idArray
			
			
			boolean flag=false;
			
			for(int i=0;i<idArray.length;i++){
				System.out.println(user.getUserId());
				int uId=user.getUserId();
				int zpId=zhaopinId;//获取前台传递的zhaopinId
				int zid=idArray[i];
				System.out.println(user.getUserId()==idArray[i]);
				
				if(zid==zpId){//判断是否投递过，结果为true，表示投递过
					flag=true;
					TToujijianli tToujijianli=(TToujijianli) toudijianliList.get(i);
					TToujijianli toujijianli=new TToujijianli();
					
					String delivery=tToujijianli.getToudishijian();
					Date delDate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(delivery);
					long delTime=delDate.getTime();
					Date date =new Date();
					long nowTime=date.getTime();
					long thirtyDaysTime=30*24*60*60*1000l;//30天的时间毫秒数
					long differenceValue=(long)(nowTime-delTime);//上次投递到当前的时间差
					System.out.println(differenceValue);
					if(differenceValue<thirtyDaysTime){//判断是否超过三十天
						this.setMessage("30天之内是不允许重复投递的！");
						session.put("messa", "您已经投递简历了，30天之内是不允许重复投递！");
						result= "delivery";
					}else{
						
						int getId=tToujijianli.getId();
						tToujijianli.setId(getId);
						tToujijianli.setZhaopinId(zhaopinId);
						tToujijianli.setUserId(user.getUserId());
						System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
						tToujijianli.setToudishijian(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
						tToujijianli.setDel("no");
						toujijianliDAO.attachDirtyTime(tToujijianli);//更新投递时间
						result="successAdd";
						}	
		
				}

			}
			
			if(!flag){//没有投递过便将投递的信息
				TToujijianli toujijianli=new TToujijianli();
				toujijianli.setZhaopinId(zhaopinId);
				toujijianli.setUserId(user.getUserId());
				toujijianli.setToudishijian(new Date().toLocaleString());
				toujijianli.setDel("no");
				toujijianliDAO.save(toujijianli);
				result="successAdd";
			}
		}else{//没有投递过该信息
			TToujijianli toujijianli=new TToujijianli();
			toujijianli.setZhaopinId(zhaopinId);
			toujijianli.setUserId(user.getUserId());
			toujijianli.setToudishijian(new Date().toLocaleString());
			toujijianli.setDel("no");
			toujijianliDAO.save(toujijianli);
			this.setMessage("投递成功！");
			session.put("messa", "投递成功！");
			result="successAdd";
		}
		
		
	}else if(type==2){
		session.put("messa", "对不起您是企业用户，不能进行这个操作！");
		result= "delivery";
	}
		return result;
	}
	
	
	public String toudijianliMy()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		String sql="from TToujijianli where userId=? and del='no'";
		Object[] con={user.getUserId()};
	    List toudijianliList=toujijianliDAO.getHibernateTemplate().find(sql,con);
		if(toudijianliList.size()==0){
			session.put("messa", "暂无数据");
			//this.setPath("/admin/noData.jsp");	
			return "nodata";
		}else{
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("toudijianliList", toudijianliList);
			return ActionSupport.SUCCESS;
			
			
		}
	}
	
	public String toudijianliMyDel()
	{
		TToujijianli toujijianli=toujijianliDAO.findById(id);
		toujijianli.setDel("yes");
		toujijianliDAO.attachDirty(toujijianli);
		
		this.setMessage("操作成功");
		this.setPath("toudijianliMy.action");
		return "succeed";
	}
	
	
	public String toudijianliForzhiwei()
	{
		String result=""; 
		String sql="from TToujijianli where zhaopinId=? and del='no'";
		Object[] con={zhaopinId};
	    List toudijianliList=toujijianliDAO.getHibernateTemplate().find(sql,con);
	    if(toudijianliList.size()==0){
	    	Map session= ServletActionContext.getContext().getSession();
	    	session.put("messa","暂无数据");
	    	result="nodata";
	    }else{
	    	Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("toudijianliList", toudijianliList);
			result="success";
	    }
	    return result;
		
	}
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getMessage()
	{
		return message;
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
	public String getToudishijian()
	{
		return toudishijian;
	}
	public void setToudishijian(String toudishijian)
	{
		this.toudishijian = toudishijian;
	}
	public TToujijianliDAO getToujijianliDAO()
	{
		return toujijianliDAO;
	}
	public void setToujijianliDAO(TToujijianliDAO toujijianliDAO)
	{
		this.toujijianliDAO = toujijianliDAO;
	}
	public int getUserId()
	{
		return userId;
	}
	public void setUserId(int userId)
	{
		this.userId = userId;
	}
	public int getZhaopinId()
	{
		return zhaopinId;
	}
	public void setZhaopinId(int zhaopinId)
	{
		this.zhaopinId = zhaopinId;
	}
	
}
