package com.model;

import java.util.Date;

/**
 * TUser generated by MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable
{

	// Fields

	private Integer userId;

	private String userName;

	private String userPw;

	private int userType;//1��ְ��Ա��2��Ƹ��Ա

	private String userRealname;

	private String userAddress;

	private String userSex;

	private String userTel;

	private String userEmail;

	private String userQq;

	//private String userMan;

	private String userAge;

	//private String userBirthday;

	private String userXueli;
	
	private String userDel;
	
	private String userOne1;//���

	private String userOne2;

	//private String userOne3;

//	private String userOne4;
//
//	private String userOne5;
//
//	private Integer userOne6;
//
//	private Integer userOne7;
//
//	private Integer userOne8;
//
//	private Date userOne9;
//
//	private Date userOne10;
//
//	private Long userOne11;
//
//	private Long userOne12;

	// Constructors

	/** default constructor */
	public TUser()
	{
	}

	/** full constructor */
	public TUser(String userName, String userPw, int userType,
			String userRealname, String userAddress, String userSex,
			String userTel, String userEmail, String userQq, 
			//String userMan,
			String userAge, 
			//String userBirthday, 
			String userXueli,
			String userOne1, String userOne2, String userOne3)
	{
		/*, String userOne4,
		String userOne5, Integer userOne6, Integer userOne7,
		Integer userOne8, Date userOne9, Date userOne10, Long userOne11,
		Long userOne12
		*/
		this.userName = userName;
		this.userPw = userPw;
		this.userType = userType;
		this.userRealname = userRealname;
		this.userAddress = userAddress;
		this.userSex = userSex;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userQq = userQq;
		//this.userMan = userMan;
		this.userAge = userAge;
		//this.userBirthday = userBirthday;
		this.userXueli = userXueli;
		this.userOne1 = userOne1;
		this.userOne2 = userOne2;
//		this.userOne3 = userOne3;
//		this.userOne4 = userOne4;
//		this.userOne5 = userOne5;
//		this.userOne6 = userOne6;
//		this.userOne7 = userOne7;
//		this.userOne8 = userOne8;
//		this.userOne9 = userOne9;
//		this.userOne10 = userOne10;
//		this.userOne11 = userOne11;
//		this.userOne12 = userOne12;
	}

	// Property accessors

	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	public int getUserType()
	{
		return userType;
	}

	public void setUserType(int userType)
	{
		this.userType = userType;
	}

	public String getUserDel()
	{
		return userDel;
	}

	public void setUserDel(String userDel)
	{
		this.userDel = userDel;
	}

	public String getUserName()
	{
		return this.userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getUserPw()
	{
		return this.userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}


	public String getUserRealname()
	{
		return this.userRealname;
	}

	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}

	public String getUserAddress()
	{
		return this.userAddress;
	}

	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}

	public String getUserSex()
	{
		return this.userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserTel()
	{
		return this.userTel;
	}

	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}

	public String getUserEmail()
	{
		return this.userEmail;
	}

	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}

	public String getUserQq()
	{
		return this.userQq;
	}

	public void setUserQq(String userQq)
	{
		this.userQq = userQq;
	}

//	public String getUserMan()
//	{
//		return this.userMan;
//	}
//
//	public void setUserMan(String userMan)
//	{
//		this.userMan = userMan;
//	}

	public String getUserAge()
	{
		return this.userAge;
	}

	public void setUserAge(String userAge)
	{
		this.userAge = userAge;
	}

//	public String getUserBirthday()
//	{
//		return this.userBirthday;
//	}
//
//	public void setUserBirthday(String userBirthday)
//	{
//		this.userBirthday = userBirthday;
//	}

	public String getUserXueli()
	{
		return this.userXueli;
	}

	public void setUserXueli(String userXueli)
	{
		this.userXueli = userXueli;
	}

	public String getUserOne1()
	{
		return this.userOne1;
	}

	public void setUserOne1(String userOne1)
	{
		this.userOne1 = userOne1;
	}

	public String getUserOne2()
	{
		return this.userOne2;
	}

	public void setUserOne2(String userOne2)
	{
		this.userOne2 = userOne2;
	}

//	public String getUserOne3()
//	{
//		return this.userOne3;
//	}
//
//	public void setUserOne3(String userOne3)
//	{
//		this.userOne3 = userOne3;
//	}
//
//	public String getUserOne4()
//	{
//		return this.userOne4;
//	}
//
//	public void setUserOne4(String userOne4)
//	{
//		this.userOne4 = userOne4;
//	}
//
//	public String getUserOne5()
//	{
//		return this.userOne5;
//	}
//
//	public void setUserOne5(String userOne5)
//	{
//		this.userOne5 = userOne5;
//	}
//
//	public Integer getUserOne6()
//	{
//		return this.userOne6;
//	}
//
//	public void setUserOne6(Integer userOne6)
//	{
//		this.userOne6 = userOne6;
//	}
//
//	public Integer getUserOne7()
//	{
//		return this.userOne7;
//	}
//
//	public void setUserOne7(Integer userOne7)
//	{
//		this.userOne7 = userOne7;
//	}
//
//	public Integer getUserOne8()
//	{
//		return this.userOne8;
//	}
//
//	public void setUserOne8(Integer userOne8)
//	{
//		this.userOne8 = userOne8;
//	}
//
//	public Date getUserOne9()
//	{
//		return this.userOne9;
//	}
//
//	public void setUserOne9(Date userOne9)
//	{
//		this.userOne9 = userOne9;
//	}
//
//	public Date getUserOne10()
//	{
//		return this.userOne10;
//	}
//
//	public void setUserOne10(Date userOne10)
//	{
//		this.userOne10 = userOne10;
//	}
//
//	public Long getUserOne11()
//	{
//		return this.userOne11;
//	}
//
//	public void setUserOne11(Long userOne11)
//	{
//		this.userOne11 = userOne11;
//	}
//
//	public Long getUserOne12()
//	{
//		return this.userOne12;
//	}
//
//	public void setUserOne12(Long userOne12)
//	{
//		this.userOne12 = userOne12;
//	}

}