package cn.ld.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import cn.ld.entities.User;

@Repository("accountDao")
public class AccountDao extends EntityDao implements IAccountDao {

	@SuppressWarnings("unchecked")
	@Override
	public boolean testUser(String userName, String passWord) {
		
		List<User> list = new ArrayList<User>();
		String hql="select userName,passWord from User where userName="+"'"+userName+"'"+" and passWord="+"'"+passWord+"'";
		
		 Query query = getSession().createQuery(hql);
		list = query.list();
		if(list.size()==0){
			return false;
		}else{
			return true;
		}
		
		
	}

}
