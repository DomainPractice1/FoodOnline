package ssh.daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import ssh.beans.ShopCar;
import ssh.beans.User;
import ssh.dao.ShowShopCarDao;
import ssh.dao.ShowUserDao;

public class ShowUserDaoImpl extends HibernateDaoSupport implements ShowUserDao  {

	@Override
	public List<User> findAll(User user) {
		String hql="from User as user where user.username = '" + user.getUsername() + "' and user.password = '" + user.getPassword()+"'";
		System.out.println("HQL:"+hql);
		List<User> list=this.getHibernateTemplate().find(hql);
		if(list.size() == 0) System.out.println("用户名或者密码错误");
		else System.out.println(list.get(0).getUsername());
		return list;
	}
	
}
