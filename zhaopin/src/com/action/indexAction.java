package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGonggaoDAO;
import com.dao.TNewsDAO;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TNewsDAO newsDAO;
	
	
	
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		
		List newsList=newsDAO.findAll();
		if(newsList.size()>6)
		{
			newsList=newsList.subList(0, 6);
		}
		request.put("newsList", newsList);
		
		return ActionSupport.SUCCESS;
	}

	

	public TNewsDAO getNewsDAO()
	{
		return newsDAO;
	}

	public void setNewsDAO(TNewsDAO newsDAO)
	{
		this.newsDAO = newsDAO;
	}
}
