package cn.ld.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ld.dao.IAccountDao;

@Service("accountService")
public class AccountServiceImp implements IAccountService {
	
	@Resource
	private IAccountDao accountDao;

	@Override
	public boolean existUserName(String userName) {
		
		return false;
	}

	@Override
	public boolean testPassWord(String userName, String passWord) {
		
		boolean b = accountDao.testUser(userName, passWord);

		return b;
	}

}
