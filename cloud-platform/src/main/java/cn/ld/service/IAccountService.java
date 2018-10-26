package cn.ld.service;

public interface IAccountService {

	public boolean existUserName(String userName);
	
	public boolean testPassWord(String userName,String passWord);
}
