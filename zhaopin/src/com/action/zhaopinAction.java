package com.action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TZhaopinDAO;
import com.model.TUser;
import com.model.TZhaopin;
import com.opensymphony.xwork2.ActionSupport;






public class zhaopinAction extends ActionSupport
{
    private int id;
    private String zhiwei;
    private String daiyui;
    private String xuliyaoqiu;
    private String gongzuodidian;
    private String gongzuojingyan;
    private String qitashuoming;
    
    private String message;
	private String path;
	
	private TZhaopinDAO zhaopinDAO;
	
	
	public String zhaopinMyAdd()
	{
		TZhaopin zhaopin=new TZhaopin();
		zhaopin.setDaiyui(daiyui);
		zhaopin.setDel("no");
		zhaopin.setGongzuodidian(gongzuodidian);
		zhaopin.setGongzuojingyan(gongzuojingyan);
		zhaopin.setQitashuoming(qitashuoming);
		zhaopin.setZhiwei(zhiwei);
		zhaopin.setXuliyaoqiu(xuliyaoqiu);
		
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		zhaopin.setUserId(user.getUserId());//发布招聘信息的用户
		zhaopinDAO.save(zhaopin);
		this.setMessage("操作成功");
		this.setPath("zhaopinMyMana.action");
		return "succeed";
	}
	
	
	public String zhaopinMyMana()
	{ 
    
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TZhaopin where userId=? and del='no'";
		Object[] cn={user.getUserId()};
		List zhaopinMyList=zhaopinDAO.getHibernateTemplate().find(sql,cn);
		if(zhaopinMyList.size()==0){
			session.put("messa", "暂无数据");
			//this.setPath("/admin/noData.jsp");	
			return "nodata";
		}else{
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("zhaopinMyList", zhaopinMyList);
			//return ActionSupport.SUCCESS;
			return "success";
			
			
		}
			
		
	
		
	    
	}
	
//	
	
	
	
	public String zhaopinMyDel()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		zhaopin.setDel("yes");
		zhaopinDAO.attachDirty(zhaopin);
		this.setMessage("操作成功");
		this.setPath("zhaopinMyMana.action");
		return "succeed";
	}
	
	public String zhaopinMyAll()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TZhaopin where userId=? and del='no'";
		Object[] cn={user.getUserId()};
		List zhaopinMyList=zhaopinDAO.getHibernateTemplate().find(sql,cn);
		if(zhaopinMyList.size()==0){
			session.put("messa", "暂无数据");
			//this.setPath("/admin/noData.jsp");	
			return "nodata";
		}else{
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("zhaopinMyList", zhaopinMyList);
			return ActionSupport.SUCCESS;
			
			
		}
		
	}
	
	
	
	public String zhaopinMana()
	{	
		String sql="from TZhaopin where del='no'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		if(zhaopinList.size()==0){
			Map session= ServletActionContext.getContext().getSession();
			session.put("messa", "暂无数据");	
			return "nodata";
		}else{
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("zhaopinList", zhaopinList);
			return ActionSupport.SUCCESS;
		}
	}
	public String zhaopinDel()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		zhaopin.setDel("yes");
		zhaopinDAO.attachDirty(zhaopin);
		this.setMessage("操作成功");
		this.setPath("zhaopinMana.action");
		return "succeed";
	}
	
	public String zhaopinAll()
	{
		String sql="from TZhaopin where del='no'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinList", zhaopinList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhaopinDetail()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopin", zhaopin);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String zhaopinSearch()
	{
		String sql="from TZhaopin t where t.zhiwei like '%"+zhiwei+"%'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinList", zhaopinList);
		return ActionSupport.SUCCESS;
	}

	public String getDaiyui()
	{
		return daiyui;
	}

	public void setDaiyui(String daiyui)
	{
		this.daiyui = daiyui;
	}

	public String getGongzuodidian()
	{
		return gongzuodidian;
	}

	public void setGongzuodidian(String gongzuodidian)
	{
		this.gongzuodidian = gongzuodidian;
	}

	public String getGongzuojingyan()
	{
		return gongzuojingyan;
	}

	public void setGongzuojingyan(String gongzuojingyan)
	{
		this.gongzuojingyan = gongzuojingyan;
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

	public String getQitashuoming()
	{
		return qitashuoming;
	}

	public void setQitashuoming(String qitashuoming)
	{
		this.qitashuoming = qitashuoming;
	}

	public String getXuliyaoqiu()
	{
		return xuliyaoqiu;
	}

	public void setXuliyaoqiu(String xuliyaoqiu)
	{
		this.xuliyaoqiu = xuliyaoqiu;
	}

	public TZhaopinDAO getZhaopinDAO()
	{
		return zhaopinDAO;
	}

	public void setZhaopinDAO(TZhaopinDAO zhaopinDAO)
	{
		this.zhaopinDAO = zhaopinDAO;
	}

	public String getZhiwei()
	{
		return zhiwei;
	}

	public void setZhiwei(String zhiwei)
	{
		this.zhiwei = zhiwei;
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 private List<File> file;
	    private List<String> fileFileName;
	    private List<String> fileContentType;
	    private List<String> dataUrl;
	    public String zhaopinPicture(){
	        return ActionSupport.SUCCESS;
	    }

	
	    public String uploadPicture() throws IOException{
	        dataUrl = new ArrayList<String>();
	        String imgpath = "/upload/";
	        for (int i = 0; i < file.size(); ++i) {
	            InputStream is = new FileInputStream(file.get(i));
//	            try {
//	            BufferedInputStream input=new BufferedInputStream(new FileInputStream(file.get(i)));
//	            int k=input.available();
//	  	      ps.setString(1,name);
//	  	      ps.setBinaryStream(2, input, k);
//	  	      int result=ps.executeUpdate();
//	  	      if(result>0)
//	  	      System.out.println("保存成功");
//	  	      }catch(Exception e) {
//	  	      // TODO: handle exception
//	  	      e.printStackTrace();
//	  	      }
	            String path = ServletActionContext.getServletContext().getRealPath("/");
	            System.out.println(path);
	             //    String root = "D:\\";

	            dataUrl.add(imgpath+this.getFileFileName().get(i));
	            File destFile = new File(path+imgpath, this.getFileFileName().get(i));

	            OutputStream os = new FileOutputStream(destFile);

	            byte[] buffer = new byte[400];

	            int length = 0;

	            while ((length = is.read(buffer)) > 0) {
	                os.write(buffer, 0, length);
	            }
	            Map session= ServletActionContext.getContext().getSession();
	            session.put("messa", "上传成功");
	            

	            is.close();

	            os.close();
	        }
	         return "success";
	    }


	    public List<String> getDataUrl() {
	        return dataUrl;
	    }




	    public void setDataUrl(List<String> dataUrl) {
	        this.dataUrl = dataUrl;
	    }





	    public List<File> getFile() {
	        return file;
	    }

	    public void setFile(List<File> file) {
	        this.file = file;
	    }

	    public List<String> getFileFileName() {
	        return fileFileName;
	    }

	    public void setFileFileName(List<String> fileFileName) {
	        this.fileFileName = fileFileName;
	    }

	    public List<String> getFileContentType() {
	        return fileContentType;
	    }

	    public void setFileContentType(List<String> fileContentType) {
	        this.fileContentType = fileContentType;
	    }	
	
	
	
	
	
	
	
	
}
